extends CharacterBody2D
var speed := 300
func _ready() -> void:
	add_to_group("movings")
	pass 


func _physics_process(delta: float) -> void:
	var direction = Input.get_vector("Left", "Right", "Up", "Down")
	velocity = speed * direction
	if Input.is_action_just_pressed("Ability"):
		$collreal.disabled = true
		var motion = get_last_motion()
		var dash = 1000
		velocity = dash * motion
		$collreal.disabled = false
	move_and_slide()
	pass






func _on_timer_timeout() -> void:
	pass
