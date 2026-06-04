extends Node2D

func _ready() -> void:
	musicplayer.play_music()

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Start"):
		get_tree().change_scene_to_file("scenes//difficultyscreen/difficultyscreen.tscn")
		
