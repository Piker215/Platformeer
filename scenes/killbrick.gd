extends Area2D

@onready var groupp := get_tree().get_first_node_in_group("movingse")
func _ready() -> void:
	$spritebrick.modulate = Color.ORANGE_RED
	randomize()
	while(1>0):
		position = Vector2(randf_range(-500, 500), randf_range(-200, 200))
		if global_position.is_equal_approx(groupp.global_position):
			return
		else:
			break
	pass 


func _process(delta: float) -> void:
	pass


func _on_body_entered(body: CharacterBody2D) -> void:
	if body == groupp:
		print("You died!")
		get_tree().change_scene_to_file("res://scenes/Title.tscn")
	else:
		return
	pass 


func _on_goldenmushroom_body_entered(body: CharacterBody2D) -> void:
	var number := 5/4 + 1
	number = round(number)
	var duplicator = duplicate()
	duplicator.position = Vector2(randf_range(-500, 500), randf_range(-200, 200))
	get_parent().add_child(duplicator)
	
	pass # Replace with function body.
