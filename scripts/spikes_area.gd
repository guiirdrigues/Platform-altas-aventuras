extends Area2D

@onready var spikes: Sprite2D = $spikes
@onready var collision: CollisionShape2D = $collision


func _ready() -> void:
	collision.shape.size = spikes.get_rect().size

func _on_body_entered(body: Node2D) -> void:
	if body.name == "player" && body.has_method("take_damage"):
		body.take_damage(Vector2(0, -250))
