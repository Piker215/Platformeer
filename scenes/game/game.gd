extends Node2D
@onready var movingset = get_tree().get_nodes_in_group("movings")
@onready var killbricks := get_tree().get_nodes_in_group("killbricks")
@onready var camera = get_tree().get_first_node_in_group("camera")
@onready var golden: Node = get_tree().get_first_node_in_group("goldenmushroom")
@onready var movingsetposit = movingset.global_position
@onready var goldenposit = golden.global_position
@onready var difflevel: Label = $CanvasLayer/MarginContainer/HBoxContainer2/HBoxContainer/difflevel
@onready var iterator: int = 0
@onready var killarray: Array = [killbricks]
#var duplicator := $mushroom.duplicate()
#var wait := await get_tree().await_timer(1.5).timeout


func _ready() -> void:
	stunny.status = 0
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


func _on_child_entered_tree(node: Node) -> void:
	if node.is_in_group("killbricks") && golden != null:
		node.name = node.name + str(iterator)
		iterator = iterator + 1
		while node.global_position.distance_to(goldenposit) < 50:
			node.position = Vector2(randf_range(-500, 500), randf_range(-200, 200))
	pass # Replace with function body.


func _on_goldenmushroom_body_entered(body: Node2D) -> void:
	for n in difficulty.difficultyer:
		var duplicator: Area2D = $killbrick.duplicate()
		duplicator.position = Vector2(randf_range(-500, 500), randf_range(-200, 200))
		var duposit = Vector2(duplicator.global_position)
		print(duposit)
		duplicator.name = str(iterator)
		iterator += 1
		while duposit.distance_to(goldenposit) < 50 || duposit.distance_to(movingsetposit) < 50:
			duposit = Vector2(randf_range(-500, 500), randf_range(-200, 200))
		get_parent().add_child(duplicator)
			
	pass # Replace with function body.
