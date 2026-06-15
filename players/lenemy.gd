extends CharacterBody2D
#var info = preload("res://playerreal.gd")
const speed := 200.0
var tres = "null"
@onready var tre = get_tree().get_first_node_in_group("movingse")
@onready var animation = $lenemysprite
func _ready() -> void:
	animation.play("default")
	tres = get_node("root/playerreal")
	pass 



func _physics_process(delta: float) -> void:
	#var follow = global_position.direction_to(player.global_position)
	if stunny.status == 0:
		var dir := (global_position.direction_to(tre.global_position))
		velocity = dir * speed
		move_and_slide()
	elif stunny.status == 1:
		animation.play("stun")
		velocity = Vector2(0, 0)
	else:
		return


func _on_goldenmushroom_body_entered(body: Node2D) -> void:
	var duplicator = duplicate()
	get_parent().add_child(duplicator)
	pass # Replace with function body.
