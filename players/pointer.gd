extends RayCast2D
@onready var goldshroom := get_node("../goldenmushroom")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var direction := goldshroom.global_position.direction_to(goldshroom.global_position)
	position = direction
	pass
