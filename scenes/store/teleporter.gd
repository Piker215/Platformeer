extends Area2D
@onready var player = $"../storeplayer"

func _on_body_entered(body: Node2D) -> void:
	if body == player:
		get_tree().change_scene_to_file("res://scenes/title/title.tscn")
	pass 
