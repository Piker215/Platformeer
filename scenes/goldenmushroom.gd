extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$goldenmushsprite.modulate = Color.GOLD
	randomize()
	position = Vector2(randf_range(-500, 500), randf_range(-200, 200))
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	$goldenmushsprite.visible = false
	randomize()
	var duplicator = duplicate()
	position = Vector2(randf_range(-500, 500), randf_range(-200, 200))
	get_parent().add_child(duplicator)
	pass 
