extends Polygon2D
@onready var speed = 10000
@onready var mushy := get_tree().get_first_node_in_group("goldenmushroom")


func _ready() -> void:
	pass


func _physics_process(delta: float) -> void:
	look_at(mushy.position)
	pass
