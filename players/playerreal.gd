extends CharacterBody2D
var speed := 300
@onready var animator = $playersprite
@onready var proggress = get_tree().get_first_node_in_group("progress")
@onready var proggresor = get_node("../progress")
@onready var killbricks = get_node("../killbrick/colkick")
@onready var dashy = false
func _ready() -> void:
	add_to_group("movings")
	animator.play("default")
	pass 


func _physics_process(delta: float) -> void:
	var direction = Input.get_vector("Left", "Right", "Up", "Down")
	velocity = speed * direction
	if speed == 1000:
		if velocity.x < 0:
			animator.play("rocket left")
		elif velocity.x > 0:
			animator.play("rocket right")
		elif velocity.y > 0:
			animator.play("rocket down")
		elif velocity.y < 0:
			animator.play("rocket up")
		elif velocity.x == 0 && velocity.y == 0:
			animator.play("default")
	elif speed != 1000:
			if velocity.x < 0:
				animator.play("left")
			elif velocity.x > 0:
				animator.play("right")
			elif velocity.y > 0:
				animator.play("down")
			elif velocity.y < 0:
				animator.play("up")
	if dashy == true && Input.is_action_just_pressed("Ability"):
		if ability.abilities == "dash":
			proggress.value = 0
			$collreal.disabled = true
			speed = 1000
			await get_tree().create_timer(0.3).timeout
			speed = 300
			$collreal.disabled = false
		elif ability.abilities == "invincibility":
			$collreal.disabled = true
			await get_tree().create_timer(5).timeout
			$collreal.disabled = false

	move_and_slide()
	pass






#func _on_timer_timeout() -> void:
#	pass


func _on_progress_value_changed(value: float) -> void:
	print(value)
	if value > 99:
		dashy = true
	elif value < 99:
		dashy = false
	else: 
		pass


func _on_area_2d_body_entered(body: Node2D) -> void:
	speed = 70
	pass # Replace with function body.


func _on_area_2d_body_exited(body: Node2D) -> void:
	speed = 300
	pass # Replace with function body.


func _on_teleporter_1_body_entered(body: Node2D) -> void:
	position = Vector2(500, 0)
	pass # Replace with function body.


func _on_teleporter_2_body_entered(body: Node2D) -> void:
	position = Vector2(-500, 0)
	pass # Replace with function body.


func _on_teleporter_3_body_entered(body: Node2D) -> void:
	position = Vector2(0, 200)
	pass # Replace with function body.


func _on_teleporter_4_body_entered(body: Node2D) -> void:
	position = Vector2(0, -200)
	pass # Replace with function body.
