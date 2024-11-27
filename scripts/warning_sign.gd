extends Node2D

@onready var texture: Sprite2D = $texture
@onready var area_sign: Area2D = $area_sign

const lines : Array[String] = [
	"Olá, aventureiro destemido!",
	"Bem-vindo ao coração deste mundo",
	"Mas cuidado...",
	"Nem tudo é o que parece.",
	"Lembre-se de duas coisas...",
	"Coragem e astúcia serão suas armas...",
	"Que a sorte esteja ao seu lado...",
	"A aventura começou!!",
]

func _unhandled_input(event: InputEvent) -> void:
	if area_sign.get_overlapping_bodies().size() > 0:
		texture.show()
		if event.is_action_pressed("interact") && !DialogManager.is_message_active:
			texture.hide()
			DialogManager.start_message(global_position, lines)
	else:
		texture.hide()
		if DialogManager.dialog_box != null:
			DialogManager.dialog_box.queue_free()
			DialogManager.is_message_active = false
