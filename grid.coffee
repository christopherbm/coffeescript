#​<canvas id="canvas" width="300px" height="300px" style="border: 1px solid black"></canvas>
canvas = null
context = null

class Grid
  	constructor: (@canvas, @context) ->
    	@boxes = []
    	
    createGrid: (boxWidth, boxHeight) =>
    	columnCount = @canvas.width / boxWidth
    	rowCount = @canvas.height / boxHeight
    	
    	# create all possible values of x
    	xValues = [0]
    	x = 0
    	c = 0
    	while c < columnCount - 1
    		x = x + boxWidth
    		xValues.push(x)
    		c = c + 1
    	
    	console.log(xValues)
    	
    	# create all possible values of y
    	yValues = [0]
    	y = 0
    	r = 0
    	while r < rowCount - 1
    		y = y + boxHeight
    		yValues.push(y)
    		r = r + 1
    	
    	console.log(yValues)
    	
    	# create all boxes
    	for xPos in xValues
    		for yPos in yValues
    			@createBox(xPos, yPos, boxWidth, boxHeight)
    	
    	return
    	
  	createBox: (x, y, w, h) =>
    	@boxes.push([x, y, w, h])
    	@context.strokeRect(x, y, w, h)
    	return
    	


initCanvas = () ->
	canvas = document.getElementById('canvas')
	context = canvas.getContext('2d')
	grid = new Grid(canvas, context)
	grid.createGrid(10, 10)
	#grid.createBox(0, 0, 10, 10)
	return

initCanvas()