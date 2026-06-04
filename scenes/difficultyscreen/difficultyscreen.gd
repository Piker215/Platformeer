extends Node2D
@onready var difficults = get_tree().get_nodes_in_group("difficulty")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$hardspr.modulate = Color.from_rgba8(44, 45, 45)
	$medspr.modulate = Color.from_rgba8(44, 45, 45)
	$easyspr.modulate = Color.from_rgba8(44, 45, 45)
	pass
