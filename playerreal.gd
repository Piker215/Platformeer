extends CharacterBody2D
const speed = 120.0
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	var movement = Input.get_vector("ui_left", "ui_right", "ui_down", "ui_up")
	velocity = speed * movement
	move_and_slide()
