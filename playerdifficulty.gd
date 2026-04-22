extends CharacterBody2D
var jumpvelocity = -500
var speed = 300
func _physics_process(delta: float) -> void:
	floor_max_angle = 10
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("Jump") and is_on_floor():
		velocity.y += jumpvelocity
	var direction := Input.get_axis("Left", "Right")
	if direction:
		velocity.x = direction * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)

	move_and_slide()
