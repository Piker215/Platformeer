extends Area2D

@onready var groupp := get_tree().get_first_node_in_group("movingse")
@onready var distance := global_position.distance_to(groupp.global_position)
@onready var easy := get_node("../easy")
@onready var medium := get_node("../medium")
@onready var hard := get_node("../hard")
var difficults := [easy, medium, hard]

var difficulter = 1
var scaler = 7/7
var number = difficulter * scaler
var adder = 1
func _ready() -> void:
	print(easy)
	print("easy")
	print(medium)
	print("medium")
	print(hard)
	print("hard")
	$spritebrick.modulate = Color.ORANGE_RED
	randomize()
	while(1>0):
		position = Vector2(randf_range(-500, 500), randf_range(-200, 200))
		if distance < 300:
			position = Vector2(randf_range(-500, 500), randf_range(-200, 200))
			return
		else:
			break
	pass 

	if difficults[0] != null:
		difficulter = 1
		scaler = 1
	elif difficults[1] != null:
		difficulter = 1
		scaler = 2
	else:
		difficulter = 1
		scaler = 3

func _on_body_entered(body: CharacterBody2D) -> void:
	if body == groupp:
		print("You died!")
		get_tree().change_scene_to_file("res://scenes/Title.tscn")
	else:
		return
	pass 


func _on_goldenmushroom_body_entered(body: CharacterBody2D) -> void:
	var duplicator = duplicate()
	print(scaler)
	adder = 0
	difficulter = difficulter + 1
	number = round(number)
	duplicator.position = Vector2(randf_range(-500, 500), randf_range(-200, 200))
	while(number>adder):
		get_parent().add_child(duplicator)
		adder += 1
		print(adder)
	pass # Replace with function body.
