extends TextureProgressBar


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.



func _on_timer_timeout() -> void:
	$progress.value += 2
	pass # Replace with function body.
