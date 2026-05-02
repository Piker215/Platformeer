extends CharacterBody2D
var speed := 300
@onready var animator = $playersprite
@onready var proggresor = get_node("../progress")
func _ready() -> void:
	add_to_group("movings")
	
	animator.play("default")
	pass 


func _physics_process(delta: float) -> void:
	var direction = Input.get_vector("Left", "Right", "Up", "Down")
	velocity = speed * direction
	if velocity.x < 0:
		animator.play("left")
	elif velocity.x > 0:
		animator.play("right")
	elif velocity.y > 0:
		animator.play("down")
	elif velocity.y < 0:
		animator.play("up")
	move_and_slide()
	pass






#func _on_timer_timeout() -> void:
#	pass


func _on_progress_value_changed(value: float) -> void:
	print("work")
	if value == 100.0:
		if Input.is_action_just_pressed("Ability"):
			if ability.abilities == "dash":
				$collreal.disabled = true
				var motion = get_last_motion()
				var dash = 1000
				await get_tree().create_timer(0.3).timeout
				velocity = dash * motion
				$collreal.disabled = false
			elif ability.abilities == "invincibility":
				$collreal.disabled = true
				await get_tree().create_timer(5).timeout
				$collreal.disabled = false
	pass # Replace with function body.
