extends Node2D

@onready var player := $player as CharacterBody2D
@onready var camera := $camera as Camera2D


func _ready() -> void:
	player.follow_camera(camera)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
