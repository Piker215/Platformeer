extends Area2D

@onready var groupp := get_tree().get_first_node_in_group("movingse")
@onready var distance := global_position.distance_to(groupp.global_position)
var difficulty = 1
var scaler = 7/7
var number = difficulty * scaler
var adder = 1
func _ready() -> void:
	$spritebrick.modulate = Color.ORANGE_RED
	randomize()
	while(1>0):
		position = Vector2(randf_range(-500, 500), randf_range(-200, 200))
		if distance < 300:
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
	var duplicator = duplicate()
	print(difficulty)
	adder = 0
	difficulty = difficulty + 1
	number = round(number)
	duplicator.position = Vector2(randf_range(-500, 500), randf_range(-200, 200))
	while(number>adder):
		get_parent().add_child(duplicator)
		adder += 1
		print(adder)
	pass # Replace with function body.
