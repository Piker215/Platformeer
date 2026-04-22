extends Area2D
@onready var player = get_node("../Player")

# Called when the node enters the scene tree for the first time.
func _on_body_entered(body: Node) -> void:
	if body == player:
		print("Teleporting to game")
		get_tree().change_scene_to_file("res://scenes/difficultyscreen.tscn")
	else:
		return
	pass 
