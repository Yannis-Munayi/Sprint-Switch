extends Camera2D

@onready var player: CharacterBody2D = $"../../../MultPlayer"
@onready var camera_base_player: CharacterBody2D = $".."
@onready var camera_movement: CharacterBody2D = $".."

var checkpoint_position: Vector2 = Vector2i(500,0)
var checkPointReached: bool = false

func _ready() -> void:
	print("Checkpoint Collider Position:", $"../../../Area2D/CollisionShape2D".position)

func _process(delta: float) -> void:
	#print("player pos x", player.position.x, "\tplayer pos y", player.position.y)

	if get_window().mode == 2: # When game is full screen
		if player.position.x >= 156:
			died()
		if round(camera_base_player.position.x - player.position.x) <= -344:
			died()
		if round(player.position.x - camera_base_player.position.x) <= -344:
			died()
	
	elif get_window().mode == 0: # when game is in window mode
		if abs(player.position.y) >= 170: # horizontal kill zone
			died()
		if round(abs(camera_base_player.position.x - player.position.x)) >= 198: #vertical kill zone
			died()
@onready var camera_2d: Camera2D = $"."

func died() -> void:
	"""
	if player.position.x >= 500:
		print("Respawning at checkpoint")

		# Stop movement
		camera_base_player.velocity = Vector2.ZERO
		camera_movement.velocity = Vector2.ZERO
		player.velocity = Vector2.ZERO

		# Teleport player
		player.position = checkpoint_position

		# Ensure camera is reset and followin
		camera_movement.position.x = 290
		camera_2d.position.x = 290
		camera_base_player.position.x = player.position.x + 198
		
		#camera_2d.current = true
		
		# Re-show player if hidden
		player.visible = true

	else:
	"""
	get_tree().reload_current_scene()
