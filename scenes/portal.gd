extends Area2D

signal player_entered_portal(body,portal_position)
var is_active = false

func portal_on():
	if is_active:
		$AnimationPlayer.play('portal')

func _on_body_entered(body: CharacterBody2D):
	if is_active:
		player_entered_portal.emit(body,position) 

func _on_lever_player_close():
	print("player pulling lever")
	is_active = true
	portal_on()


func _on_lever_a_player_interacted():
	is_active = true
	portal_on()

func _on_lever_a_2_player_interacted():
	is_active = true
	portal_on()
