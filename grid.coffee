#​<canvas id="canvas" width="300px" height="300px" style="border: 1px solid black"></canvas>
canvas = null
context = null

class Grid
  	constructor: (@canvas, @context) ->
    	@boxes = []
    	
  	createBox: (x, y, w, h) =>
    	@boxes.append([x, y, w, h])
    	@context.strokeRect(x, y, w, h)
    	return


initCanvas = () ->
	canvas = document.getElementById('canvas')
	context = canvas.getContext('2d')
	grid = new Grid(canvas, context)
	grid.createBox(0, 0, 10, 10)
	return

initCanvas()