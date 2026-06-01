extends Area2D
@onready var animator := $goldenmushroomanim
@onready var player := get_node("../playerreal")
@onready var killbrick := get_tree().get_nodes_in_group("killbricks")
@onready var game := get_node("../game")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	animator.play("default")
	randomize()
	position = Vector2(randf_range(-500, 500), randf_range(-200, 200))
	
	pass # Replace with function body


func _on_body_entered(body: Node2D) -> void:
	if body == player:
		randomize()
		position = Vector2(randf_range(-500, 500), randf_range(-200, 200))
		money.moneys += 5
		points.pointse += 1
	pass 
