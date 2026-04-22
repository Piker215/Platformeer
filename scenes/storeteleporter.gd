extends Area2D
@onready var player = get_node("../Player")


func _on_body_entered(body: Node2D) -> void:
	if body == player:
		print("Going to store")
		get_tree().change_scene_to_file("res://scenes/store.tscn")
	else:
		return
	pass 
