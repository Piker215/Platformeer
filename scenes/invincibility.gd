extends Area2D




func _on_body_entered(body: Node2D) -> void:
	if money.moneys < 200:
		print("Not enough money!")
	else:
		ability.abilities = "invincibility"
	pass # Replace with function body.
