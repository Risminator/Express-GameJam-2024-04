extends CharacterBody2D
var is_ready = true
var player = null
func _process(delta):
	if is_ready:
		var bullet = preload("res://scenes/Projectile.tscn").instantiate()
		bullet.position = position
		get_tree().current_scene.add_child(bullet)
		is_ready = false
		$Timer.start()
	
func _physics_process(delta):
	player = get_parent().get_node("Player")
	if (player != null):
		look_at(player.position)


func _on_timer_timeout():
	is_ready = true
