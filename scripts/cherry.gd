extends EnemyBase

func _ready():
	pass

func _physics_process(delta: float) -> void:
	_apply_gravity(delta)
	movement(delta)
