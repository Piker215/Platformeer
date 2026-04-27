extends Area2D
@onready var times = 0
@onready var grouppp := get_tree().get_nodes_in_group("difficulty")
@onready var goldy := get_node("../goldenmushroom")
@onready var goldenshroomy := global_position.distance_to(goldy.global_position)
@onready var groupp := get_tree().get_first_node_in_group("movingse")
@onready var distance := global_position.distance_to(groupp.global_position)
@onready var difficults := get_tree().get_nodes_in_group("difficulty")
@onready var timer := get_node("../Timer")

var difficulter = difficulty.difficultyer
var scaler = 1
var number = difficulter * scaler
var adder = 1
func _ready() -> void:
	$spritebrick.modulate = Color.ORANGE_RED
	randomize()
	while(1>0):
		position = Vector2(randf_range(-500, 500), randf_range(-200, 200))
		if goldenshroomy < 150 || distance < 30:
			position = Vector2(randf_range(-500, 500), randf_range(-200, 200))
			return
		else:
			break
	pass 



func _on_body_entered(body: CharacterBody2D) -> void:
	
	if body == groupp:
		print("You died!")
		
		
		get_tree().change_scene_to_file("res://scenes/Title.tscn")
	else:
		return
	pass 


func _on_goldenmushroom_body_entered(body: CharacterBody2D) -> void:
	print(scaler)
	adder = 0
	difficulter = difficulter + 1
	number = difficulter * scaler
	number = round(number)
	while(number>adder):
		times = 0
		var duplicator = duplicate()
		duplicator.position = Vector2(randf_range(-500, 500), randf_range(-200, 200))
		get_parent().add_child(duplicator)
		while 4 > times:
			$colkick.disabled = true
			$spritebrick.modulate = Color.ANTIQUE_WHITE
			await get_tree().create_timer(0.1).timeout
		$spritebrick.modulate = Color.ORANGE_RED
		$colkick.disabled = false
		adder += 1
		print(adder)
	pass # Replace with function body.


func _on_timer_timeout() -> void:
	times += 1
	pass # Replace with function body.
