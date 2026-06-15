extends Area2D
@onready var storeplayer: CharacterBody2D = $"../storeplayer"

func _on_body_entered(body: Node2D) -> void:
	if body == storeplayer:
		get_tree().change_scene_to_file("res://scenes/title/title.tscn")
	else:
		return
	pass 
