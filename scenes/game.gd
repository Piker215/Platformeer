extends Node2D
@onready var movingset = get_tree().get_nodes_in_group("movings")
@onready var killbricks := get_tree().get_nodes_in_group("killbricks")
#var duplicator := $mushroom.duplicate()
#var wait := await get_tree().await_timer(1.5).timeout

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Timer.start()
	
	#for n in 4:
	#duplicator
	pass # Replace with function body.


func _on_goldenmushroom_body_entered(body: Node2D) -> void:
	if is_in_group("killbricks"):
		$colkick.disabled = true
		$spritebrick.modulate = Color.ANTIQUE_WHITE
		await get_tree().create_timer(0.4).timeout
		$colkick.disabled = false
		$spritebrick.modulate = Color.ORANGE_RED
	pass # Replace with function body.
