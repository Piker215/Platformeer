extends CharacterBody2D
#var info = preload("res://playerreal.gd")
const speed := 200.0
var tres = "null"
@onready var tre = get_tree().get_first_node_in_group("movingse")
func _ready() -> void:
	tres = get_node("root/playerreal")
	pass 



func _physics_process(delta: float) -> void:
	#var follow = global_position.direction_to(player.global_position)
	if tres == null:
		var dir := (global_position.direction_to(tre.global_position))
		velocity = dir * speed
		move_and_slide()
	else:
		return
