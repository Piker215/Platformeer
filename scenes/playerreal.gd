extends CharacterBody2D
var speed := 300
func _ready() -> void:
	add_to_group("movings")
	pass 


func _physics_process(delta: float) -> void:
	var direction = Input.get_vector("Left", "Right", "Up", "Down")
	velocity = speed * direction
	Button
	move_and_slide()
	pass
