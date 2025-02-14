extends "res://Switch-Sprint/scripts/Players/PlayerBase.gd"

func _physics_process(delta: float) -> void:

	shrink()

	handle_gravity(delta)
	handle_basic_movement()
	handle_animation()
	move_and_slide()
