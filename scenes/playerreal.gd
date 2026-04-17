extends CharacterBody2D
var speed := 300
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_to_group("movings")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	var direction = Input.get_vector("Left", "Right", "Up", "Down")
	velocity = speed * direction
	move_and_slide()
	pass
