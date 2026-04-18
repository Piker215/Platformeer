extends CharacterBody2D
#var info = preload("res://playerreal.gd")
const speed := 200.0
var tres = null
@onready var tre = get_tree().get_first_node_in("movings")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(tre)
	if tre != null:
		tres = tre[0]
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	#var follow = global_position.direction_to(player.global_position)
	if tres:
		print("work")
		var dir := (global_position.direction_to(tres.global_position))
		velocity = dir * speed
		move_and_slide()
	else:
		print("bleble")
		return
