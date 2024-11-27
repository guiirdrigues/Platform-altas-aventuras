extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.name == "player":
		body.velocity.y = body.JUMP_FORCE
		get_parent().anim.play("hurt")
