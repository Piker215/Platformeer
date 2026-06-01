extends CharacterBody2D
@onready var animator = $ogsprite
const SPEED = 300.0
const JUMP_VELOCITY = -400.0
func _ready() -> void:
	animator.play("default")
func _physics_process(delta: float) -> void:
	floor_max_angle = 10
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("Jump") and is_on_floor():
		velocity.y += JUMP_VELOCITY
	var direction := Input.get_axis("Left", "Right")
	if direction:
		velocity.x = direction * SPEED
		if velocity.x < 0:
			animator.play("left")
		elif velocity.x > 0:
			animator.play("right")
		elif velocity.x == 0:
			animator.play("default")
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	
