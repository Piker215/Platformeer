extends Node
@onready var music: AudioStreamPlayer = $music
@onready var death: AudioStreamPlayer = $death
@onready var collect: AudioStreamPlayer = $collect

func play_music():
	music.play()
	return

func play_death():
	death.play()
	return

func play_collect():
	collect.play()
	return



func _on_music_finished() -> void:
	play_music()
	pass # Replace with function body.
