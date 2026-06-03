extends CollisionShape2D



func _ready() -> void:
	disabled = true
	await get_tree().create_timer(1.0).timeout
	disabled = false
	pass 
