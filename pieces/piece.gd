extends Node2D

var side = true
var alive = true
var coords = Vector2()
var available_squares = []
export (Texture) var texture 
export var piece_id = ""

onready var sprite = $sprite

func _init():
	sprite.texture = texture

