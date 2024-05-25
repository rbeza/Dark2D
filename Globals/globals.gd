extends Node

signal stat_change

var player_vulnerable: bool = true
var player_can_pickup: bool = true

var player_pos: Vector2

var life_amount: int = 3:
	set(value):
		life_amount = value
		stat_change.emit()

var health = 60:
	set(value):
		if value > health:
			health = min(value, 100)
		else:
			if player_vulnerable: 
				health = value
				player_vulnerable = false
				player_invulnerable_timer()
		stat_change.emit()

func player_invulnerable_timer():
	await get_tree().create_timer(0.5).timeout
	player_vulnerable = true
	

