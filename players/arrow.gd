extends Polygon2D
@onready var speed = 10000
@onready var mushy := get_tree().get_first_node_in_group("goldenmushroom")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _physics_process(delta: float) -> void:
	var mushyposition := global_position.angle_to(mushy.global_position)
	var rotated := rotation
	var rotate = rotate_toward(rotated, mushyposition, speed)
	pass
