import React, { useRef, useState } from 'react';
import { requestWrapper } from '../src/Utilities/Api'
import { ReactSketchCanvas } from "react-sketch-canvas";

const SIZE = 28 * 16

function App() {

	const canvas_ref = useRef(null)
	const [return_data, set_return_data] = useState<any>(null)

	async function on_submit() {
		if (!canvas_ref || !canvas_ref.current) return

		const strokes = await canvas_ref.current.exportPaths()

		const formatted_stokes = strokes.map(stroke => {
			const xs = []
			const ys = []
			
			for (const point of stroke.paths) {
				xs.push(point.x)
				ys.push(point.y)
			}

			return [xs, ys]
		});

		const res = await requestWrapper<{ categories: string[], accuracy: string[] }>({
			url: '/predict',
			data: { points: formatted_stokes, width: SIZE, height: SIZE },
			method: 'post'
		})

		if (!res.success) alert('Infleizmente ocorreu um erro durante a requisicao')
		set_return_data(res.data)
	}

	return (
		<div className={'w-full h-screen bg-lightBlack'}>
			<section className={'w-full p-2 container mx-auto'}>
			<h1 className={'text-white text-center text-3xl'}>Drawing Guesser</h1>
			</section>
			<section className={'w-full p-2 container mx-auto flex flex-row justify-center'}>
				<ReactSketchCanvas
					ref={canvas_ref}
					strokeWidth={2}
					strokeColor="black"
					width={`${SIZE}px`}
					height={`${SIZE}px`}
				/>
			</section>
			<section className={'w-full p-2 container mx-auto flex flex-row justify-center'}>
				<button
					onClick={on_submit} 
					className={'bg-white px-3 py-2 rounded'}
				>
					Enviar
				</button>
				<button
					onClick={() => {
						if (canvas_ref.current) {
							canvas_ref.current.clearCanvas()
							set_return_data(null)
						}
					}} 
					className={'bg-white px-3 py-2 rounded ml-5'}
				>
					Limpar
				</button>
			</section>
			{
				return_data ? (
					<section className={'w-full p-2 container mx-auto flex flex-col justify-center items-center mt-5'}>
						<h2 className={'text-white text-center text-3xl'}>Resultados:</h2>
						<ol>
							<li className={'text-white text-center text-xl py-2 '}>1. {return_data.categories[0]}: {(return_data.acurracy[0]*100).toFixed(2)}%</li>
							<li className={'text-white text-center text-xl py-2 '}>2. {return_data.categories[1]}: {(return_data.acurracy[1]*100).toFixed(2)}%</li>
							<li className={'text-white text-center text-xl py-2 '}>3. {return_data.categories[2]}: {(return_data.acurracy[2]*100).toFixed(2)}%</li>
						</ol>
					</section>
				) : null
			}
		</div>
		);
	}

export default App;
