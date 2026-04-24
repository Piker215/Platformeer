extends Area2D


func _on_body_entered(body: Node2D) -> void:
	var difficulty = "easy"
	print("Easy")
	get_tree().change_scene_to_file("res://scenes/Game.tscn")
	pass
