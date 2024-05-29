extends Node2D

signal player_close

func _on_body_entered(_body: CharacterBody2D):
		player_close.emit()
		print("detected player at lever")


