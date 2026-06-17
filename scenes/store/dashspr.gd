extends Sprite2D
@onready var player = get_tree().get_first_node_in_group("storeplayer")


func _on_dash_body_entered(body: Node2D) -> void:
	for n in range(2):
		modulate = Color.GREEN
		await get_tree().create_timer(0.3)
		modulate = Color.WHITE
	modulate = Color.from_rgba8(44, 45, 45)
	pass # Replace with function body.
