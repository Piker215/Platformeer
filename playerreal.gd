extends CharacterBody2D
const speed = 120.0
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	var directionx := Input.get_axis("ui_left", "ui_right")
	var directiony := Input.get_axis("ui_down", "ui_up")
	if directionx:
		velocity.x = speed * directionx
	elif directiony:
		velocity.y = speed * directiony
	move_and_slide()
