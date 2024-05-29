extends Area2D
class_name InteractionArea

@export var action_name: String = "interact"

var interact: Callable = func():
	pass
	##callable is type of variable that holds a function any object with an interaction area can override the callable and provide its own implementation of interaction
	##any question refer to https://www.youtube.com/watch?v=ajCraxGAeYU


func _on_body_entered(_body):
	InteractionManager.register_area(self)

func _on_body_exited(_body):
	InteractionManager.unregister_area(self)
