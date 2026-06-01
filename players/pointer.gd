extends RayCast2D
@onready var goldshroom := get_tree().get_first_node_in_group("goldenmushroom")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var roty = goldshroom.position
	var direction = global_position.angle_to_point(goldshroom)
	var course = rotate_toward(rotation, direction, 400)
	rotation = rotation + direction
	pass
