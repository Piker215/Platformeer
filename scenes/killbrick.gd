extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var groupp = get_tree().get_first_node_in_group("movings")
	$spritebrick.modulate = Color.ORANGE_RED
	randomize()
	while(1>0):
		position = Vector2(randf_range(-500, 500), randf_range(-200, 200))
		if global_position.is_equal_approx(groupp.global_position):
			return
		else:
			break
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	print("You died!")
	get_tree().change_scene_to_file("res://scenes/Title.tscn")
	pass # Replace with function body.
