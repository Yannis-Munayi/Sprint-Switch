extends Camera2D
@onready var left_kill_zone: Area2D = $"Left Kill Zone"
@onready var right_kill_zone: Area2D = $"Right Kill Zone"
@onready var top_kill_zone: Area2D = $"../../../Kill Zones/Top Kill Zone"
@onready var player: CharacterBody2D = $"../../MultPlayer"
@onready var camera_base_player: CharacterBody2D = $".."

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.y = 0

	# changes the camera killzone depending on if the screen is windowed/maximed
	if get_window().mode == 2:
		# Adds the bottom kill zone
		print(player.GRA.x)
		if player.GRA.x >= 156 or (player.GRA.x <=84 and player.GRA.x != 1):
			died()
			
		if round(camera_base_player.position.x - player.position.x) <= -344:
			died()
		if round(player.position.x - camera_base_player.position.x) <= -344:
			died()
		
		
	elif get_window().mode == 0:
		# Adds the bottom kill zone
		if player.GRA.x >= 70:
			died()
			
		if round(camera_base_player.position.x - player.position.x) <= -210:
			died()
		if round(player.position.x - camera_base_player.position.x) <= -210:
			died()
			
	
# restarts the level if the camera catch ups to the player
func died() -> void:
	print("You died!") # Replace with function body.
	get_tree().reload_current_scene()
