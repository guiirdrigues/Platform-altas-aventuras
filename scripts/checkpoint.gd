extends Node2D

var is_active = false

func _on_body_entered(body: Node2D) -> void:
	print("player entrou")
