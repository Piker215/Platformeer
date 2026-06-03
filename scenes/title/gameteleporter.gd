extends Area2D
@onready var player = get_node("../Player")


func _on_body_entered(body: Node) -> void:
	if body == player:
		print("Teleporting to game")
		get_tree().change_scene_to_file("res://scenes/difficultyscreen/difficultyscreen.tscn")
	else:
		return
	pass 
