extends Node2D
@onready var movingset = get_tree().get_nodes_in_group("movings")
@onready var killbricks := get_tree().get_nodes_in_group("killbricks")
@onready var camera = get_tree().get_first_node_in_group("camera")
@onready var difflevel: Label = $CanvasLayer/MarginContainer/HBoxContainer2/HBoxContainer/difflevel
#var duplicator := $mushroom.duplicate()
#var wait := await get_tree().await_timer(1.5).timeout


func _ready() -> void:
	camera.make_current()
	$Timer.start()
	if difficulty.difficultyer == 6:
		difflevel.text = "Hard"
		difflevel.modulate = Color.RED
	elif difficulty.difficultyer == 3:
		difflevel.text = "Medium"
		difflevel.modulate = Color.YELLOW
	elif difficulty.difficultyer == 1:
		difflevel.text = "Easy"
		difflevel.modulate = Color.DARK_GREEN
	elif difficulty.difficultyer == 0:
		difflevel.text = "Safe"
		difflevel.modulate = Color.AQUAMARINE
	#for n in 4:
	#duplicator
	pass 


#func _on_goldenmushroom_body_entered(body: Node2D) -> void:
	#if is_in_group("killbricks"):
		#$colkick.disabled = true
		#$spritebrick.modulate = Color.ANTIQUE_WHITE
		#await get_tree().create_timer(0.4).timeout
		#$colkick.disabled = false
		#$spritebrick.modulate = Color.ORANGE_RED
	#pass # Replace with function body.


func _on_music_finished() -> void:
	$music.play()
	pass # Replace with function body.
