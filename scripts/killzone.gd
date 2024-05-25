extends Area2D

@onready var timer = $Timer

func _on_body_entered(body):
	Globals.life_amount -= 1
	print(Globals.life_amount)
	body.get_node("CollisionShape2D").queue_free()
	timer.start()

func _on_timer_timeout():
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
	
