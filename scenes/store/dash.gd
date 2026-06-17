extends Area2D
@onready var dashspr: Sprite2D = $"../dashspr"




func _on_body_entered(body: Node2D) -> void:
	musicplayer.play_collect()
	ability.abilities = "dash"
	for n in range(2):
		dashspr.modulate = Color.GREEN
		await get_tree().create_timer(0.3)
		dashspr.modulate = Color.from_rgba8(44, 45, 45)
	pass
