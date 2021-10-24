tool

extends MultiMeshInstance2D

# specify the colors of the dark and light squares on the board     #
export (Color) var dark = Color(0,0,0,1) setget set_dark
export (Color) var light = Color(1,1,1,1) setget set_light

func _init():
	rebuild()

func _ready():
	rebuild()


# manipulates and redraws the board                                 #
func rebuild():
	
	if !multimesh:
		multimesh = MultiMesh.new()
	
	multimesh.instance_count = 0
	multimesh.color_format = MultiMesh.COLOR_FLOAT
	multimesh.transform_format = MultiMesh.TRANSFORM_2D
	multimesh.mesh = QuadMesh.new()
	multimesh.instance_count = 64
	
	# indexes into the multimesh and sets the transformation using -#
	#- the coordinates of each square as the origin and the var    -#
	#- board.square_size as the transformation                      #
	var x = 0
	var y = 0
	for index in multimesh.instance_count:
		if x >= 8:
			y += 1
			x = 0
		
		multimesh.set_instance_transform_2d(index, Transform2D(
			Vector2(board.square_size, 0),
			Vector2(0, board.square_size),
			board.coords[y][x]))
		
		multimesh.set_instance_color(index, (light if (x+y) % 2 == 0 else dark))
		x += 1


#-- TOOL FUNCTIONS -------------------------------------------------#
func set_light(new_light):
	light = new_light
	rebuild()

func set_dark(new_dark):
	dark = new_dark
	rebuild()
