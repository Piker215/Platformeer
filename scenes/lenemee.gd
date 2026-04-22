extends Area2D

@onready var tre = get_tree().get_nodes_in_group("movingse")
func _ready() -> void:
	pass 


func _on_body_entered(body: CharacterBody2D) -> void:
	print(tre[0])
	if body == tre[0]:
		print("You died!")
		get_tree().change_scene_to_file("res://scenes/Title.tscn")
	else:
		return
	
