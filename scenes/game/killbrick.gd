extends Area2D
@onready var animator := $killbrickanim
@onready var times = 0
@onready var grouppp := get_tree().get_nodes_in_group("difficulty")
@onready var groupp := get_tree().get_first_node_in_group("movingse")
@onready var killbricks : Array = get_tree().get_nodes_in_group("killbricks")
@onready var n := get_tree().get_node_count_in_group("killbricks")
#@onready var distance := global_position.distance_to(killbricks.position)
@onready var difficults := get_tree().get_nodes_in_group("difficulty")
@onready var col := get_tree().get_nodes_in_group("killbricks")
@onready var killarray : Array = [killbricks]
@onready var iterator = 0

var difficulter = difficulty.difficultyer
var scaler = 1
var number = difficulter * scaler
var adder = 1
func _ready() -> void:
	var col = get_child(0)
	col.disabled = true
	await get_tree().create_timer(1).timeout
	col.disabled = false
#	collisioner.disabled = true
	randomize()
	#animator.play("default")
	#await get_tree().create_timer(1).timeout
##	collisioner.disabled = false
	#animator.play("idle")
	#while(1>0):
		#position = Vector2(randf_range(-500, 500), randf_range(-200, 200))
		#if goldenshroomy < 150 || distance[0] < 30:
			#position = Vector2(randf_range(-500, 500), randf_range(-200, 200))
			#return
		#else:
			#break
	pass 



func _on_body_entered(body: CharacterBody2D) -> void:
	if body.is_in_group("killbricks"):
		var bodeh = body
		while body_entered:
			body.position = Vector2(randf_range(500, -500), randf_range(-200, 200))
	if body == groupp:
		musicplayer.play_death()
		print("You died!")
		if points.pointse >= maximum.maximals:
			maximum.maximals = points.pointse
			get_tree().change_scene_to_file("scenes/highscore/highscore.tscn")
		else:
			get_tree().change_scene_to_file("scenes/highscore/highscore.tscn")
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
#	collisioner = duplicator.get_child(0)
	#for n in difficulter:
		#var killbrickid: String = "killbrick"
		#var duplicator = duplicate()
		#duplicator.name = str(iterator)
		#iterator = iterator + 1
		#get_parent().add_child(duplicator)
		#var positionnew = duplicator.position
		#var goldenshroomy := global_position.distance_to(goldy.position)
		#var playerrealdist := global_position.distance_to(playerreal.position)
		#duplicator.position = Vector2(randf_range(-500, 500), randf_range(-200, 200))
		#print(killbricks)
		#for i in killbricks:
			#var killbrick = distance_to_player(killbricks[i])
			#if killbrick.global_position.distance_to(groupp.position) < 50:
				#duplicator.position = Vector2(randf_range(-500, 500), randf_range(-200, 200))
			#else:
				#return
		#if playerrealdist < 50 || goldenshroomy < 50:
			#duplicator.position = Vector2(randf_range(-500, 500), randf_range(-200, 200))
		#while distance < 100:
			#position = Vector2(randf_range(-500, 500), randf_range(-200, 200))
			#print("ayay")
	pass 
func distance_to_player(killbrick):
	print(killbrick.position)
	while killbrick.global_position.distance_to(killbrick) < 50:
		killbrick.position = Vector2(randf_range(-500, 500), randf_range(-200, 200))


func _on_timer_timeout() -> void:
	times += 1
	pass 
