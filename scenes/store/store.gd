extends Node2D


func _ready() -> void:
	$invspr.modulate = Color.from_rgba8(44, 45, 45)
	$dashspr.modulate = Color.from_rgba8(44, 45, 45)
	pass

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Start"):
		get_tree().change_scene_to_file("res://scenes/title/title.tscn")
