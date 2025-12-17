extends Node2D

# Variables for the tilemap and the player
@onready var tilemap: TileMap = $"../TileMap"
@onready var mplayer: CharacterBody2D = $"../Level Template/Player Skeletton/MultPlayer"
@onready var player: CharacterBody2D = $"../Level Template/MultPlayer"
@onready var level_template: Node = $"../Level Template"

# Tileset details
var tile_size : int = 64
var ground_tile_id : int = 0  # Ensure this matches the ID of your ground tile
var ground_atlas_coords : Vector2i = Vector2i(0, 0)  # Atlas coordinates (0,0)

# Level generation settings
var min_platform_length : int = 3
var max_platform_length : int = 10
var gap_size : int = 0
var generation_buffer : int = 10  # Distance to player at which to generate more platforms
var last_generated_x : int = 0  # Last generated x position

# Row range for platform generation
var min_row : int = 0
var max_row : int = 0
var count = 0
# Track previous row
var previous_row : int = 8  # Initial row
var generation_count : int = 0

var premade_platform_x_range: Vector2 = Vector2(0, 0)  # Adjust this to match your premade platform's x range

func generate_level():
	count +=1
	#print(count)
	var x_pos = last_generated_x
	if get_window().mode == 0:
		min_row = 4 #-7
		max_row = 4 #6
		#rint(player.position.x) # -7
	elif get_window().mode == 2:
		min_row = 10
		max_row = 10

	while x_pos < last_generated_x + generation_buffer:
		var platform_length = randi() % (max_platform_length - min_platform_length + 1) + min_platform_length
		var y_pos = randi() % (max_row - min_row + 1) + min_row
		
		for i in range(platform_length):
			var alternative_tile: int = 0
			if abs(y_pos - previous_row) == 2:
				alternative_tile = 1
			tilemap.set_cell(1, Vector2i(x_pos, y_pos), ground_tile_id, ground_atlas_coords, alternative_tile)
			generate_background(0,x_pos)
			#print(tilemap.get_cell_atlas_coords(0,Vector2i(x_pos,y_pos)))
			
			# Optionally add tiles underneath
			if randi() % 2 == 0:  # 50% chance to add a tile underneath
				tilemap.set_cell(1, Vector2i(x_pos, y_pos + 1), ground_tile_id, ground_atlas_coords, 0)

			x_pos += 1
		previous_row = y_pos
		x_pos += gap_size

		#generate_background(x_pos - platform_length - gap_size, x_pos)

	last_generated_x = x_pos
	generation_count= x_pos

# Function to generate background
func generate_background(start_x, end_x):
	for x in range(start_x, end_x):
		for y in range(-10, 10):  # Adjust the vertical range as needed
			tilemap.set_cell(0, Vector2i(x, y), 0, Vector2i(0,11), 0)  # Layer 0 for Background	
	
func _process(delta):
	if generation_count - generation_buffer >= 2000:
		last_generated_x = 0
		generation_buffer = 1/500
		#generate_background(0,500)
		generation_count = 0
		
	if player.position.x > last_generated_x - generation_buffer:
		generate_level()
		#generate_background(0,generation_buffer)

	
