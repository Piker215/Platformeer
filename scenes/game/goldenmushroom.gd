extends Area2D
@onready var animator := $goldenmushroomanim
@onready var player := get_node("../playerreal")
@onready var killbrick := get_tree().get_nodes_in_group("killbricks")
@onready var game := get_node("../game")


func _ready() -> void:
	animator.play("default")
	randomize()
	position = Vector2(randf_range(-500, 500), randf_range(-200, 200))
	
	pass 
	
func close(close: Node):
	var posite = close.position
	global_position.distance_to(posite) < 300

func _on_body_entered(body: Node2D) -> void:
	if body == player:
		randomize()
		position = Vector2(randf_range(-500, 500), randf_range(-200, 200))
		while killbrick.any(close):
			position = Vector2(randf_range(-500, 500), randf_range(-200, 200))
#		while killbrick.any(body_entered):
#			position = Vector2(randf_range(-500, 500), randf_range(-200, 200))
		money.moneys += 5
		points.pointse += 1 
	pass 
