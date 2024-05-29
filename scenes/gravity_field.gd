extends Area2D

signal player_entered
signal player_exited
var current_gravity : float

func _on_body_entered(body: CharacterBody2D):
	print(body)
	player_entered.emit()
	current_gravity = body.gravity
	body.gravity = 300



func _on_body_exited(body: CharacterBody2D):
	player_exited.emit()
	body.gravity = current_gravity
