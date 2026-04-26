extends Area2D
@onready var player := get_node("../playerreal")
@onready var killbrick := get_node("../killbrick")
@onready var distance := global_position.distance_to(killbrick.global_position)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$goldenmushsprite.modulate = Color.GOLD
	randomize()
	position = Vector2(randf_range(-500, 500), randf_range(-200, 200))
	
	pass # Replace with function body


func _on_body_entered(body: Node2D) -> void:
	if body == player:
		randomize()
		var duplicator = duplicate()
		while distance < 50:
			position = Vector2(randf_range(-500, 500), randf_range(-200, 200))
			get_parent().add_child(duplicator)
	pass 
