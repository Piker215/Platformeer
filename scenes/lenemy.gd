extends CharacterBody2D
#var info = preload("res://playerreal.gd")
@export var player_path: NodePath
@onready var player = get_node_or_null(player_path)
var speed := 200.0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var list = get_tree().get_nodes_in_group("playerreal")
	if list.size(): player = list[0]
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	#get_tree().get_nodes_in_group("Player")[0]
	#var follow = global_position.direction_to(player.global_position)
	var dir := (player.global_position - global_position).normalized()
	velocity = dir * speed
	move_and_slide()
