extends CharacterBody2D
var speed = 300
var jumpvelocity = -400

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("Jump"):
		velocity.y += jumpvelocity
	var direction := Input.get_axis("Left", "Right")
	if direction:
		velocity.x = direction * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)

	move_and_slide()
	pass
