extends Area2D
@onready var player = get_node("../playerdifficulty")

func _on_body_entered(body: Node2D) -> void:
	if body == player:
		difficulty.difficultyer = 3
		print("Medium")
		get_tree().change_scene_to_file("res://scenes/game/Game.tscn")
	pass 
