from flask import Flask, request, send_from_directory
import cairocffi as cairo
from flask_cors import CORS, cross_origin
import numpy as np
import tensorflow as tf
import os
import heapq
import matplotlib.pyplot as plt 

os.environ["CUDA_VISIBLE_DEVICES"] = "-1"


dir_path = os.path.dirname(os.path.realpath(__file__))
build_dir = f'{dir_path}/../web/build/'

app = Flask("Drawing Guesser", static_folder=build_dir, static_url_path='/')
CORS(app)


@app.route('/<path:path>')
def send_web(path):
    print(path)
    return send_from_directory(build_dir, 'index.html')



model = tf.keras.models.load_model(f'{dir_path}/../model/trained_models')
data_files = os.listdir(f'{dir_path}/../model/data/')

df = []
for file in data_files:
    if file == './data/.DS_Store' or file == '.DS_Store':
        continue
    df.append(file)
categories = [x.split('/')[-1].split('.')[0] for x in df]

@app.route('/predict', methods=['POST'])
def hello_world():
    width = request.json['width']
    height = request.json['height']
    points = request.json['points']

    img = vector_to_raster([points], original_side=height)
    img = np.array(np.reshape(img, (-1, 28))).astype(np.float32)


    img = np.array([img[..., np.newaxis]])
    prediction = model.predict(img)[0]

    top_3 = heapq.nlargest(3, prediction)
    idxs = [list(prediction).index(i) for i in top_3]
    preds = [categories[i] for i in idxs]

    top_3 = [float(x) for x in top_3]
    return {
        "categories": preds,
        "acurracy": top_3
    }


def vector_to_raster(vector_images, side=28, line_diameter=16, padding=16, bg_color=(0,0,0), fg_color=(1,1,1), original_side=256):
    """
    padding and line_diameter are relative to the original 256x256 image.
    """
    
    surface = cairo.ImageSurface(cairo.FORMAT_ARGB32, side, side)
    ctx = cairo.Context(surface)
    ctx.set_antialias(cairo.ANTIALIAS_BEST)
    ctx.set_line_cap(cairo.LINE_CAP_ROUND)
    ctx.set_line_join(cairo.LINE_JOIN_ROUND)
    ctx.set_line_width(line_diameter)

    # scale to match the new size
    # add padding at the edges for the line_diameter
    # and add additional padding to account for antialiasing
    total_padding = padding * 2. + line_diameter
    new_scale = float(side) / float(original_side + total_padding)
    ctx.scale(new_scale, new_scale)
    ctx.translate(total_padding / 2., total_padding / 2.)

    raster_images = []
    for vector_image in vector_images:
        # clear background
        ctx.set_source_rgb(*bg_color)
        ctx.paint()
        
        bbox = np.hstack(vector_image).max(axis=1)
        offset = ((original_side, original_side) - bbox) / 2.
        offset = offset.reshape(-1,1)
        centered = [stroke + offset for stroke in vector_image]

        # draw strokes, this is the most cpu-intensive part
        ctx.set_source_rgb(*fg_color)        
        for xv, yv in centered:
            ctx.move_to(xv[0], yv[0])
            for x, y in zip(xv, yv):
                ctx.line_to(x, y)
            ctx.stroke()

        data = surface.get_data()
        raster_image = np.copy(np.asarray(data)[::4])
        raster_images.append(raster_image)
    
    return raster_images




if __name__ == '__main__':
    app.debug = True
    app.run()
