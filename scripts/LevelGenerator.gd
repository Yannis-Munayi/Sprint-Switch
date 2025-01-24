extends Node2D

# Variables for the tilemap and the player
@onready var tilemap: TileMap = $"../TileMap"
@onready var player: CharacterBody2D = $"../Level Template/Player Skeletton/MultPlayer"

# Tileset details
var tile_size : int = 64
var ground_tile_id : int = 0  # Ensure this matches the ID of your ground tile
var ground_atlas_coords : Vector2i = Vector2i(0, 0)  # Atlas coordinates (0,0)

# Level generation settings
var min_platform_length : int = 3
var max_platform_length : int = 10
var gap_size : int = 3
var generation_buffer : int = 500  # Distance to player at which to generate more platforms
var last_generated_x : int = 0  # Last generated x position

# Row range for platform generation
var min_row : int = 5
var max_row : int = 10

# Track previous row
var previous_row : int = 8  # Initial row

# Function to generate the level
func generate_level():
	var x_pos = last_generated_x
	while x_pos < last_generated_x + generation_buffer:
		var platform_length = randi() % (max_platform_length - min_platform_length + 1) + min_platform_length
		var y_pos = randi() % (max_row - min_row + 1) + min_row  # Randomly select a row within the range
		for i in range(platform_length):
			var alternative_tile : int = 0  # Default: no rotation
			if abs(y_pos - previous_row) == 2:
				alternative_tile = 1  # Rotate tile 180 degrees
			tilemap.set_cell(0, Vector2i(x_pos, y_pos), ground_tile_id, ground_atlas_coords, alternative_tile)  # Use atlas coordinates
			x_pos += 1
		previous_row = y_pos  # Update previous row after each platform
		x_pos += gap_size  # Add a gap after each platform
	last_generated_x = x_pos  # Update last generated x position

# Continuously check player's position and generate new platforms as needed
func _process(delta):
	if player.position.x > last_generated_x - generation_buffer:
		generate_level()

func _ready():
	generate_level()  # Initial generation
