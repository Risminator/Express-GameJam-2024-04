extends Area2D

var bullet_speed = 2
var direction = Vector2(1,1)

func _physics_process(delta):
	global_position += direction * bullet_speed



func _on_body_entered(body):
	print(body.name)
	if body.name == 'Player':
		body.queue_free()
	elif body.name.contains('Robot'):
		Global.robot_count -= 1
		body.queue_free()
