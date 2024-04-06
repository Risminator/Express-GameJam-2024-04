extends CharacterBody2D

@export var speed = 200
@export var norm = 5
var mouse_pos = null
var robot_count = 0
var robot_idx = 1


func movement():
	velocity = Vector2(0,0)
	mouse_pos = get_global_mouse_position()
	if abs(mouse_pos - position) > Vector2(norm,norm):
		var direction = (mouse_pos - position).normalized()
		velocity = direction * speed
		move_and_slide()

func change_robot_count():
	if (robot_count < Global.robot_count and robot_idx <= 8):
		var new_robot = preload("res://scenes/robot.tscn").instantiate()
		new_robot.name = 'Robot' + str(robot_idx)
		robot_idx += 1
		add_child(new_robot)
		robot_count += 1
	if (robot_count > Global.robot_count and robot_idx >= 1):
		robot_idx -= 1
		robot_count -= 1
	
func _physics_process(delta):
	movement()
	change_robot_count()
	
