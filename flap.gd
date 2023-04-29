extends CharacterBody2D
var max_speed := 200.0

func _process(delta):
	position += Vector2(5,0)
	var direction := Vector2.ZERO
	direction.y = Input.get_axis("push up","push down")
	
	velocity = direction * max_speed
	position += velocity * delta
	rotation = velocity.angle()
	move_and_slide()

	for index in get_slide_collision_count():
		var collision = get_slide_collision(index)

	if collision.collider is StaticBody2D:  
		get_tree().change_scene_to_file("res://game-over.tscn")
