extends Area2D
@onready var animator := $goldenmushroomanim
@onready var player := get_node("../playerreal")
@onready var killbrick := get_tree().get_nodes_in_group("killbricks")
@onready var game := get_node("../game")
@onready var goldsfx: AudioStreamPlayer = $goldsfx
@onready var tree: StaticBody2D = $"../tree"


func _ready() -> void:
	animator.play("default")
	randomize()
	position = Vector2(randf_range(-500, 500), randf_range(-200, 200))
	
	pass 
	
func close(close: Node):
	var posite = close.position
	global_position.distance_to(posite) < 300

func _on_body_entered(body: Node2D) -> void:
	player.speed = 200
	if body == player:
		musicplayer.play_collect()
		randomize()
		position = Vector2(randf_range(-500, 500), randf_range(-200, 200))
		while killbrick.any(close):
			position = Vector2(randf_range(-500, 500), randf_range(-200, 200))
#		while killbrick.any(body_entered):
#			position = Vector2(randf_range(-500, 500), randf_range(-200, 200))
		if difficulty.difficultyer == 1:
			money.moneys += 5
		elif difficulty.difficultyer == 3:
			money.moneys += 10
		elif difficulty.difficultyer == 6:
			money.moneys += 15
		elif difficulty.difficultyer == 0:
			money.moneys += 5
		points.pointse += 1 
	pass 


func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("killbricks") || area == tree:
		position = Vector2(randf_range(-500, 500), randf_range(-200, 200))
	pass # Replace with function body.
