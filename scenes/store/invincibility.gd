extends Area2D




func _on_body_entered(body: Node2D) -> void:
	if money.moneys < 200:
		musicplayer.play_death()
		print("Not enough money!")
	else:
		musicplayer.play_collect()
		money.moneys -= 200
		ability.abilities = "invincibility"
	pass 
