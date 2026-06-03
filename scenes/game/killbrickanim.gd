extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	play("default")
	await get_tree().create_timer(1).timeout
	play("idle")
	pass # Replace with function body.
