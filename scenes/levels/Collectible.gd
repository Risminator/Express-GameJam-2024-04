extends Area2D

func setRandomSprite():
	var frames = $SkullSprite.texture.get_width() / $SkullSprite.region_rect.size.x
	var random_index = randi_range(0, frames - 2)
	$SkullSprite.region_rect.position.x = random_index * $SkullSprite.region_rect.size.x

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _ready():
	setRandomSprite()


func _on_body_entered(body):
	if body.name == "Player":
		Global.robot_count += 1
		queue_free()
