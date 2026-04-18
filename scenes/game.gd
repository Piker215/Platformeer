extends Node2D
@onready var movingset = get_tree().get_nodes_in_group("movings")
#var duplicator := $mushroom.duplicate()
#var wait := await get_tree().await_timer(1.5).timeout

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for e in movingset:
		print(e.name)
	#for n in 4:
	#duplicator
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
