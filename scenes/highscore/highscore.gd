extends Node2D



func _ready() -> void:
	pass 



func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Start"):
		points.pointse = 0
		get_tree().change_scene_to_file("scenes/game/game.tscn")
	elif Input.is_action_just_pressed("Escape"):
		points.pointse = 0
		get_tree().change_scene_to_file("scenes/title/title.tscn")
	pass
