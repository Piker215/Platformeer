extends CharacterBody2D
var speed := 300
func _ready() -> void:
	add_to_group("movings")
	pass 


func _physics_process(delta: float) -> void:
	var direction = Input.get_vector("Left", "Right", "Up", "Down")
	velocity = speed * direction
	move_and_slide()
	pass






#func _on_timer_timeout() -> void:
#	pass


func _on_progress_value_changed(value: float) -> void:
	if value > 99:
		if Input.is_action_just_pressed("Ability"):
			if ability.abilities == "dash":
				$collreal.disabled = true
				var motion = get_last_motion()
				var dash = 1000
				velocity = dash * motion
				$collreal.disabled = false
			elif ability.abilities == "invincibility":
				$collreal.disabled = true
				await get_tree().create_timer(5)
				$collreal.disabled = false
	pass # Replace with function body.
