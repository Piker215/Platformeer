extends Node2D
@onready var movingset = get_tree().get_nodes_in_group("movings")
@onready var killbricks := get_tree().get_nodes_in_group("killbricks")
@onready var camera = get_tree().get_first_node_in_group("camera")
@onready var collisioner = $colkick
#var duplicator := $mushroom.duplicate()
#var wait := await get_tree().await_timer(1.5).timeout


func _ready() -> void:
	camera.make_current()
	$Timer.start()
	
	#for n in 4:
	#duplicator
	pass 


#func _on_goldenmushroom_body_entered(body: Node2D) -> void:
	#if is_in_group("killbricks"):
		#$colkick.disabled = true
		#$spritebrick.modulate = Color.ANTIQUE_WHITE
		#await get_tree().create_timer(0.4).timeout
		#$colkick.disabled = false
		#$spritebrick.modulate = Color.ORANGE_RED
	#pass # Replace with function body.
