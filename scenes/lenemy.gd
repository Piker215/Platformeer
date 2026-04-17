extends CharacterBody2D
#var info = preload("res://playerreal.gd")
@export var player_path: NodePath
@onready var player = get_node(player_path)
var speed := 200.0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var tre = get_tree().get_first_node_in_group("movings")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	#var follow = global_position.direction_to(player.global_position)
	if player:
		var dir := (global_position.direction_to(player.global_position))
		velocity = dir * speed
		move_and_slide()
