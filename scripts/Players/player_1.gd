extends "res://Switch-Sprint/scripts/Players/PlayerBase.gd"

func _physics_process(delta: float) -> void:
	# Determines wheather which players to display based on game mode
	

# Adds functionality to player 1
	handle_gravity(delta)
	handle_switching()
	handle_basic_movement()
	handle_animation()
	move_and_slide()
