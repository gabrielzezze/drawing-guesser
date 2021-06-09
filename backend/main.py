from flask import Flask, request
import numpy as np
import tensorflow as tf
import os
import heapq

app = Flask("Drawing Guesser")

model = tf.keras.models.load_model('../model')

data_files = os.listdir('../data/')
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

    img = np.full((28, 28), 255)

    for point in points:
        x = int(point[0] * (28/width))
        y = int(point[1] * (28/height))
        img[y][x] = 0

    
    img = np.array([img[..., np.newaxis]])

    prediction = model.predict(img)[0]

    top_3 = heapq.nlargest(3, prediction)
    idxs = [list(prediction).index(i) for i in top_3]
    preds = [categories[i] for i in idxs]

    return {
        "categories": preds,
        "acurracy": top_3
    }