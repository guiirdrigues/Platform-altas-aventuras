extends Node2D

@onready var player := $player as CharacterBody2D
@onready var control: Control = $HUD/control
@onready var player_scene = preload("res://actors/player.tscn")
#@onready var camera := $camera as Camera2D


func _ready() -> void:
	#player.follow_camera(camera)
	Globals.player = player
	Globals.player.player_has_died.connect(reload_game)
	control.time_is_up.connect(reload_game)
	Globals.coins = 0
	Globals.score = 0 
	Globals.player_life = 3
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func reload_game():
	await get_tree().create_timer(1.0).timeout
	var player = player_scene.instantiate()
	add_child(player)
	Globals.player = player
	#Globals.player_camera(camera)
	Globals.player.player_has_died.connect(reload_game)
	Globals.respawn_player()
	#get_tree().reload_current_scene()
	
	
