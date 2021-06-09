import React, { useState } from 'react';
import CanvasDraw from "react-canvas-draw";
import { requestWrapper } from '../src/Utilities/Api'

function App() {

	const [canvas_ref, set_canvas_ref] = useState<CanvasDraw | null>(null)

	async function on_submit() {
		if (!canvas_ref) return

		const canvas_data = JSON.parse(canvas_ref.getSaveData())
		const lines = canvas_data.lines
		const points = []
		lines.forEach((line: any) => {
			line.points.forEach(p => {
				points.push([p.x, p.y])
			});
		})

		const data = {
			points,
			width: canvas_data.width,
			height: canvas_data.height
		}

		const res = await requestWrapper({
			url: '/predict',
			data,
			method: 'post'
		})

		if (res.success) alert('Infleizmente ocorreu um erro durante a requisicao')
	}

	return (
		<div className={'w-full h-screen bg-lightBlack'}>
			<section className={'w-full p-2 container mx-auto'}>
			<h1 className={'text-white text-center text-3xl'}>Drawing Guesser</h1>
			</section>
			<section className={'w-full p-2 container mx-auto flex flex-row justify-center'}>
				<CanvasDraw 
					ref={(ref) => set_canvas_ref(ref)}
					className={'w-3/5'}
					canvasWidth={window.innerWidth * 0.8}
					canvasHeight={window.innerHeight* 0.8}
				/>
			</section>
			<section className={'w-full p-2 container mx-auto flex flex-row justify-center'}>
				<button
					onClick={on_submit} 
					className={'bg-white px-3 py-2 rounded'}
				>
					Enviar
				</button>
			</section>
		</div>
		);
	}

export default App;
