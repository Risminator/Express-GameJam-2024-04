extends CharacterBody2D

@export var speed = 200
@export var norm = 5
var mouse_pos = null
var robot_count = 0
var robot_idx = 0
var robot_busy = [false, false, false, false, false, false, false, false]


func movement():
	velocity = Vector2(0,0)
	mouse_pos = get_global_mouse_position()
	if abs(mouse_pos - position) > Vector2(norm,norm):
		var direction = (mouse_pos - position).normalized()
		velocity = direction * speed
		move_and_slide()

func change_robot_count():
	if (robot_count < Global.robot_count and robot_idx < len(robot_busy)):
		var new_robot = preload("res://scenes/robot.tscn").instantiate()
		robot_busy[robot_idx] = true
		robot_idx += 1
		print(robot_idx)
		add_child(new_robot)
		robot_count += 1
	
func _physics_process(delta):
	movement()
	change_robot_count()
	
