extends Area2D
@onready var player = get_tree().get_first_node_in_group("storeplayer")

func _on_body_entered(body: Node2D) -> void:
	if body == player:
		get_tree().change_scene_to_file("res://scenes/title/title.tscn")
	else:
		return
	pass 
