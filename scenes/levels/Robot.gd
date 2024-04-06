extends Node2D

var d = 0
@export var coef_x = 1
@export var coef_y = 1
@export var radius = 100
var speed = 2
@export var time_modifier = 4
var parent = null


func _process(delta):
	parent = get_parent()
	d += delta
	position = Vector2(
		coef_x + sin(d) * radius,
		coef_y + cos(d) * radius
	)
