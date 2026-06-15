extends ProgressBar



func _on_timer_timeout() -> void:
	if stunny.status == 0 && invincibilities.status == 0:
		value += 2
	elif stunny.status == 1 || invincibilities.status == 1:
		value = 0
	pass # Replace with function body.
