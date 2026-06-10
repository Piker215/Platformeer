extends Area2D
@onready var storeplayer: CharacterBody2D = $"../storeplayer"


func _on_body_entered(body: Node2D) -> void:
	if body == storeplayer:
		if money.moneys < 500:
			musicplayer.play_death()
			print("Not enough money!")
		else:
			musicplayer.play_collect()
			print("Switched abilities!")
			ability.abilities = "stun"
	pass # Replace with function body.
