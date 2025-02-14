extends "res://Switch-Sprint/scripts/Players/PlayerBase.gd"

func _physics_process(delta: float) -> void:
	
	handle_gravity(delta)
	handle_jumping()
	handle_basic_movement()
	handle_advanced_movement()
	handle_animation()
	move_and_slide()
