extends AnimatableBody2D

var d = 0
@export var radius = 100
var speed = 2
@export var time_modifier = 4
func _process(delta):
	d += delta * time_modifier
	print(get_parent())
	position = Vector2(
		sin(d + speed) * radius,
		cos(d + speed) * radius
	)
