extends Area2D
var calls:int = 0
@onready var animator := $killbrickanim
@onready var times = 0
@onready var grouppp := get_tree().get_nodes_in_group("difficulty")
@onready var goldy := get_node("../goldenmushroom")
@onready var goldenshroomy := global_position.distance_to(goldy.global_position)
@onready var groupp := get_tree().get_first_node_in_group("movingse")
@onready var killbricks := get_tree().get_nodes_in_group("killbricks")
@onready var n := get_tree().get_node_count_in_group("killbricks")
#@onready var distance := global_position.distance_to(killbricks.position)
@onready var difficults := get_tree().get_nodes_in_group("difficulty")
@onready var timer := get_node("../Timer")

var difficulter = difficulty.difficultyer
var scaler = 1
var number = difficulter * scaler
var adder = 1
func _ready() -> void:
	randomize()
	animator.play("default")
	await get_tree().create_timer(1).timeout
	animator.play("idle")
	#while(1>0):
		#position = Vector2(randf_range(-500, 500), randf_range(-200, 200))
		#if goldenshroomy < 150 || distance[0] < 30:
			#position = Vector2(randf_range(-500, 500), randf_range(-200, 200))
			#return
		#else:
			#break
	pass 



func _on_body_entered(body: CharacterBody2D) -> void:
	
	if body == groupp:
		print("You died!")
		
		
		get_tree().change_scene_to_file("res://scenes/title/title.tscn")
	else:
		return
	pass 
#func distances_to():
	#return distance < 100
	#return goldenshroomy < 50

func _on_goldenmushroom_body_entered(body: CharacterBody2D) -> void:
	#if calls >= 1:
	#	print("eh")
	#	queue_free()
	#for n in get_tree().get_node_count_in_group("killbricks"):
		#distance = global_position.distance_to(killbricks[n - 1].position)
	print(scaler)
	adder = 0
	difficulter = difficulter + 1
	number = difficulter * scaler
	number = round(number)
	var duplicator = duplicate()
	for _n in number:
		get_parent().add_child(duplicator)
		duplicator.position = Vector2(randf_range(-500, 500), randf_range(-200, 200))
		#while distance < 100:
			#position = Vector2(randf_range(-500, 500), randf_range(-200, 200))
			#print("ayay")
		adder += 1
		print(adder)
	pass # Replace with function body.


func _on_timer_timeout() -> void:
	times += 1
	pass # Replace with function body.
