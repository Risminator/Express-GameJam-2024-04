extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_body_entered(body):
	print(body.name)
	if body.name == 'Player':
		body.queue_free()
	elif body.name.contains('Robot'):
		Global.robot_count -= 1
		body.queue_free()
