extends Area2D




func _on_body_entered(body: Node2D) -> void:
	musicplayer.play_collect()
	ability.abilities = "dash"
	pass
