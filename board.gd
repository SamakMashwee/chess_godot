tool

extends Node2D

var size = OS.get_window_size().x
var square_size = size / 8
var coords = []

# stores the previous state of the board                            #
var p_board_state = []

# stores the current state of the board                             #
var board_state = [
	["br", "bk", "bb", "bq", "bK", "bb", "bk", "br"],
	["bp", "bp", "bp", "bp", "bp", "bp", "bp", "bp"],
	["-", "-", "-", "-", "-", "-", "-", "-"],
	["-", "-", "-", "-", "-", "-", "-", "-"],
	["-", "-", "-", "-", "-", "-", "-", "-"],
	["-", "-", "-", "-", "-", "-", "-", "-"],
	["wp", "wp", "wp", "wp", "wp", "wp", "wp", "wp"],
	["wr", "wk", "wb", "wq", "wK", "wb", "wk", "wr"]
]

func _init():
	# quantifies the board based on the square_size offset by the  -#
	#- center of each square.                                       #
	for _i in range(8):
		coords.append([])
	for i in range(8):
		for j in range(8):
			coords[i].append(Vector2(
				i * square_size + square_size/2,
				j * square_size + square_size/2))

func _process(delta):
	pass

# reloads the board and sets the positions of all the pieces       -#
#- according to the board state                                     #
func reload():
	#TODO
	pass
