extends RigidBody2D


func _on_notifier_screen_exited() -> void:
	queue_free()
