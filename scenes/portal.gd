extends Area2D

signal player_entered_portal(body,portal_position)
signal player_spin()


func _on_body_entered(body: CharacterBody2D):
	player_entered_portal.emit(body,position) 
	player_spin.emit()
