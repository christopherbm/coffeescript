#​<​canvas id="canvas" width="200px" height="200px" style="border: 1px solid black"></canvas>
canvas = null
context = null

initCanvas = () ->
	canvas = document.getElementById('canvas')
	context = canvas.getContext('2d')
	return

# c is context
# w is width of canvas
# h is height of canvas
drawGrid = (c, w, h) ->
	drawVerticalLines(c, w, h)
	return
	
drawVerticalLines = (c, w, h) ->
	xInc = w / 10
	i = 0
	c.beginPath()
	while i < w - xInc
		i = i + xInc
		console.log(i)
		c.moveTo(i, 0)
		c.lineTo(i, h)
		c.stroke()
		
	return

initCanvas()
drawGrid(context, canvas.width, canvas.height)