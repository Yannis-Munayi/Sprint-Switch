# Sprint Switch

## Plan

That sounds like an exciting project! Your 2D sidescroller, Switch-Sprint, inspired by Gravity Guy with gravity inversion as a core mechanic, has a lot of potential for engaging gameplay, especially with the high-score-driven arcade style and a story mode featuring three characters with unique abilities (moving left/right, jumping, shrinking, and possibly slowing time). Distributing the introduction of characters and abilities across 90 levels in a way that feels rewarding and paced well is a great challenge, and I’m happy to help you plan this out. I’ll also suggest additional content to enhance the game’s depth and replayability, drawing on the context of your project (e.g., the Godot-based development, PlayerBase.gd, and the multi-character switching mechanic) and your goal of a 90-level story mode.

Game Overview
Based on your description and prior conversations:

Core Mechanic: Gravity inversion (similar to Gravity Guy), where players flip gravity to navigate platforms and obstacles.
Game Mode: Story mode with 90 levels, focusing on progressing through levels to unlock abilities and switch between three characters.
Characters: Three main characters (Player_1, Player_2, player3, plus potentially MultPlayer as a base), each with unique abilities.

### Current Abilities:
Moving left/right (basic movement).
Jumping.
Shrinking (reduces player size for tight spaces).
Slowing time (potential future ability).
Objective: Reach a high score in each level, with no chasing enemies (unlike Gravity Guy), focusing on platforming challenges and obstacle navigation.
Level Design: Levels should introduce abilities and characters gradually—ideally at a good pace, with increasing complexity over 90 levels.

#### Step 1: Structuring 90 Levels
To distribute the game’s content across 90 levels, we need a progression that feels natural, introduces mechanics gradually, and keeps players engaged. I’ll break this into phases (e.g., acts or chapters) to organize the introduction of characters, abilities, and increasing difficulty. Each phase can span 15–30 levels, with clear milestones (e.g., new character, new ability, boss level).

Progression Framework
I propose dividing the 90 levels into 6 acts, each with 15 levels, balancing the introduction of characters, abilities, and difficulty spikes. Here’s a suggested structure:

 ### Act 1: Basics and First Character (Levels 1–15)
Focus: Introduce the core mechanic (gravity inversion) and the first character (Player_1).
Abilities Introduced:
Gravity Inversion (Level 1): Players learn to flip gravity to navigate simple platforms.
Move Left/Right (Level 1): Basic movement, starting slow and forgiving.
Level Design:
Simple layouts with wide platforms, minimal obstacles (e.g., gaps, low ceilings).
Tutorials embedded in levels (e.g., prompts to press “invert_gravity” key).
Gradually increase platform density and introduce moving platforms by Level 10.
Level 15: Mini-boss or challenge level (e.g., a longer level requiring multiple gravity flips to reach a goal).
Story Beat: Introduce Player_1 as the protagonist in a sci-fi/fantasy world where gravity anomalies are destabilizing the environment. Their goal is to collect “Gravity Shards” to restore balance.
Difficulty: Easy, with generous checkpoints and low penalty for failure.

### Act 2: Jumping and Second Character (Levels 16–30)
Focus: Add jumping and introduce the second character (Player_2).
Abilities Introduced:
Jumping (Level 16): Allows players to cross gaps or reach higher platforms without gravity inversion.
Switch to Player_2 (Level 18): Players can now switch between Player_1 and Player_2, with Player_2 having a unique variant of jumping (e.g., double jump).
Level Design:
Introduce gaps and vertical obstacles requiring jumps.
Require switching between Player_1 and Player_2 to progress (e.g., Player_2 jumps higher to reach a switch).
Add hazards like spikes or laser beams that force precise gravity/jump timing.
Level 30: Challenge level combining movement, jumping, and switching (e.g., a gauntlet with alternating platforms and gaps).
Story Beat: Player_2 joins the quest, revealing a rival faction controlling Gravity Shards. The two characters have complementary skills to counter new threats.
Difficulty: Medium, with tighter platforming and occasional death traps.

### Act 3: Shrinking and Third Character (Levels 31–45)
Focus: Introduce shrinking and the third character (player3).
Abilities Introduced:
Shrinking (Level 31): Allows players to pass through narrow gaps or avoid low obstacles.
Switch to player3 (Level 33): player3 has a unique shrinking ability (e.g., faster shrink/expand or smaller minimum size).
Level Design:
Add narrow tunnels and low ceilings requiring shrinking.
Combine shrinking with gravity inversion and jumping (e.g., shrink to enter a tunnel, then jump and flip gravity).
Introduce puzzles requiring specific character abilities (e.g., player3 shrinks to activate a switch, Player_2 jumps to a high platform).
Level 45: Mid-game boss level (e.g., a large obstacle course requiring all three characters’ abilities to progress).
Story Beat: player3 is a rogue agent who initially opposes the team but joins after a pivotal event (e.g., saving them from a trap). The team learns the Gravity Shards are part of a larger machine.
Difficulty: Medium-hard, with more complex layouts and stricter timing.

### Act 4: Slowing Time (Levels 46–60)
Focus: Introduce slowing time as a universal ability and increase challenge density.
Abilities Introduced:
Slow Time (Level 46): Temporarily slows game speed (e.g., 0.5x speed for 5 seconds game speeds by 1.25x after) to navigate fast-moving obstacles or tight sequences.
Level Design:
Add fast-moving hazards (e.g., spinning blades, collapsing platforms) that require slow time.
Increase switching frequency (e.g., rapid switches between characters to use their unique abilities).
Introduce environmental effects (e.g., wind pushing the player, requiring counter-movement).
Level 60: Challenge level with a high-density obstacle course (e.g., a “speedrun” level testing all abilities).
Story Beat: The team discovers the machine’s location but faces a time-manipulating guardian. Slowing time is a shard-powered ability they unlock to counter it.
Difficulty: Hard, with precise inputs and fewer checkpoints.

### Act 5: Mastery and Combinations (Levels 61–75)
Focus: Combine all abilities in creative ways, with no new mechanics but deeper complexity.
Abilities: All available (gravity inversion, move left/right, jumping, shrinking, slow time).
Level Design:
Complex levels requiring chained mechanics (e.g., shrink, jump, flip gravity, slow time to pass a laser grid).
Introduce optional challenges for bonus points (e.g., collect hidden Gravity Shards within a time limit).
Add dynamic environments (e.g., platforms that toggle gravity automatically).

Level 75: Penultimate boss level (e.g., a multi-phase challenge requiring all characters to disable a Gravity Shard-powered trap).
Story Beat: The team infiltrates the enemy stronghold, facing increasingly chaotic gravity anomalies. They uncover the machine’s purpose: to reshape the world’s physics.
Difficulty: Very hard, with minimal forgiveness and intricate level design.

### Act 6: Climax and Endgame (Levels 76–90)
Focus: Culminate in epic challenges and a satisfying conclusion.
Abilities: All available, with mastery expected.
Level Design:
Massive, multi-stage levels combining all mechanics in unpredictable ways.
Introduce “remix” levels that revisit early layouts with new twists (e.g., Level 1 but with fast hazards and shrinking tunnels).
Add score-based objectives (e.g., beat a level under a time limit for extra points).

Level 90: Final boss level (e.g., a sentient Gravity Machine that manipulates gravity, time, and obstacles, requiring all characters to disable its core).
Story Beat: The team destroys the machine, stabilizes gravity, and restores the world. A post-credits scene teases a potential sequel (e.g., a new anomaly appearing).
Difficulty: Expert, designed for players who’ve mastered all mechanics.
Step 2: Pacing Abilities and Characters
To ensure abilities and characters are introduced at a “good pace”:

## Characters:
Player_1: Level 1 (immediate introduction to establish the protagonist).
Player_2: Level 18 (after players are comfortable with gravity and jumping, adding switching).
player3: Level 33 (mid-game, when switching is familiar, adding complexity).

## Abilities:
Move Left/Right: Level 1 (core mechanic, immediate).
Gravity Inversion: Level 1 (core mechanic, immediate).
Jumping: Level 16 (after gravity mastery, adds verticality).
Shrinking: Level 31 (mid-game, introduces spatial puzzles).
Slow Time: Level 46 (late-game, counters high-speed challenges).
Pacing Rationale:
Early levels (1–15) focus on core mechanics to build confidence.
Mid-game (16–45) introduces switching and new abilities to deepen strategy.
Late-game (46–90) leverages all abilities for complex, rewarding challenges.
Spacing abilities ~15 levels apart ensures players master each before the next arrives.

Step 3: Suggested Additional Content
To flesh out Switch-Sprint across 90 levels and enhance replayability, here are content ideas that align with your vision and add variety:

1. New Abilities
Beyond the current set, consider adding one or two late-game abilities to keep Act 5–6 fresh:

Wall Cling (Level 61): Players can stick to walls briefly, allowing new platforming routes (e.g., cling to a wall, flip gravity to land on it).
Unique Variant: player3 can climb walls while clinging.
Teleport Dash (Level 61): A short-range teleport in the movement direction, useful for bypassing obstacles.
Unique Variant: Player_2 can teleport vertically (e.g., to a higher platform).
Implementation:
Add to PlayerBase.gd with new input actions (e.g., wall_cling, teleport).
Example for wall_cling:
gdscript

Copy
func handle_wall_cling() -> void:
    if Input.is_action_pressed("wall_cling") and is_on_wall():
        velocity.y = 0  # Stick to wall
        if active_player == player_3 and Input.is_action_pressed("move_up"):
            velocity.y = -SPEED  # Climb
2. Environmental Hazards and Mechanics
Dynamic Platforms: Platforms that move, rotate, or toggle gravity automatically (e.g., a platform that flips gravity every 5 seconds).
Gravity Zones: Areas with altered gravity (e.g., low gravity for floaty jumps, high gravity for fast falls).
Portals: Teleport players between two points, requiring strategic gravity flips to align with the exit.
Time Anomalies: Zones where time speeds up or slows down, complementing the slow-time ability.
Implementation:
Create new Area2D nodes for gravity/time zones that modify PlayerBase.gd’s gravity or Engine.time_scale when entered.
Example for gravity zone:
gdscript

Copy
func _on_GravityZone_body_entered(body: Node) -> void:
    if body is CharacterBody2D:
        body.gravity = Vector2(0, 500)  # Low gravity
3. Collectibles and Scoring
Gravity Shards: Collectibles that boost the score and unlock bonus levels (e.g., Levels 91–100 as “Infinite Mode” with randomized obstacles).
Time Trials: Optional objectives to beat a level under a time limit for extra points.
Combo System: Chain gravity flips, jumps, and shrinks without touching the ground for score multipliers.
Implementation:
Add a collectible_count variable in PlayerBase.gd:
gdscript

Copy
var collectible_count: int = 0
func _on_Collectible_body_entered(body: Node) -> void:
    if body == active_player:
        collectible_count += 1
        queue_free()  # Remove collectible
4. Boss Fights
Act Bosses (Levels 15, 30, 45, 75, 90):
Level 15: A giant moving platform that requires precise gravity flips.
Level 30: A drone that shoots gravity-disrupting beams, forcing rapid switches.
Level 45: A maze with shrinking tunnels and moving hazards.
Level 75: A multi-stage trap with all mechanics.
Level 90: The Gravity Machine, altering gravity and time dynamically.
Implementation:
Create boss nodes with custom scripts (e.g., Boss.gd) that trigger events (e.g., spawn hazards, change gravity).
Example for beam-shooting drone:
gdscript

Copy
func shoot_beam() -> void:
    var beam = BeamScene.instantiate()
    beam.position = global_position
    get_tree().current_scene.add_child(beam)
5. Story and Worldbuilding
Lore Elements:
Add brief cutscenes or dialogue (e.g., text pop-ups) at key levels (1, 15, 30, 45, 75, 90).
Example: After Level 45, player3 explains their backstory via a Label node.
Themed Environments:
Act 1–2: Ruined city with unstable gravity.
Act 3–4: High-tech lab with portals and lasers.
Act 5–6: Abstract void with chaotic gravity and time distortions.
Implementation:
Use CanvasLayer with Label nodes for dialogue:
gdscript

Copy
func show_dialogue(text: String) -> void:
    var label = Label.new()
    label.text = text
    $CanvasLayer.add_child(label)
    await get_tree().create_timer(3.0).timeout
    label.queue_free()
6. Replayability Features
Infinite Mode: Post-story mode (Levels 91–100 or endless) with randomized obstacles and increasing speed.
Leaderboards: Integrate Godot’s silentwolf plugin for online high scores (https://silentwolf.com/).
Level Editor: Allow players to create and share levels using Godot’s scene system.
Achievements: Unlockable goals (e.g., “Collect 100 Gravity Shards”, “Beat Level 90 without dying”).
Implementation:
For leaderboards, follow Silent Wolf’s Godot tutorial (requires API key setup).
For achievements, add a Dictionary in PlayerBase.gd:
gdscript

Copy
var achievements: Dictionary = {"collect_100_shards": false}
func check_achievements() -> void:
    if collectible_count >= 100:
        achievements["collect_100_shards"] = true
7. Visual and Audio Enhancements
Visuals:
Use particle effects for gravity flips (e.g., a swirl when flipping).
Add character-specific animations (e.g., Player_2’s double jump has a unique trail).
Audio:
Sound effects for gravity flips, jumps, shrinks, and slow time (e.g., whoosh, boing, hum).
Dynamic music that speeds up in intense sections (use Godot’s AudioStreamPlayer).
Implementation:
Add CPUParticles2D for effects:
gdscript

Copy
func handle_gravity_switch() -> void:
    gravity.y *= -1
    $Particles2D.emitting = true  # Emit particles
    velocity.y = INVERT_VELOCITY * sign(gravity.y)
    animated_sprite_2d.flip_v = gravity.y < 0
Step 4: Implementation in Godot
To support the 90-level structure and new content in Godot:

Level Scenes:
Create a base level scene (Level.tscn) with placeholders for platforms, hazards, and collectibles.
Duplicate and modify for each level (e.g., Level_01.tscn, Level_02.tscn).
Use Godot’s tilemap or individual StaticBody2D nodes for platforms.
Scene Management:
Create a level select script to load levels:
gdscript

Copy
func load_level(level_number: int) -> void:
    var scene_path = "res://Switch-Sprint/scenes/Levels/Level_%02d.tscn" % level_number
    get_tree().change_scene_to_file(scene_path)
Store progress in a Save.gd singleton:
gdscript

Copy
var unlocked_levels: int = 1
func save_progress(level: int) -> void:
    unlocked_levels = max(unlocked_levels, level + 1)
    var file = FileAccess.open("user://save.dat", FileAccess.WRITE)
    file.store_var(unlocked_levels)
New Mechanics:
Add new functions to PlayerBase.gd for wall_cling, teleport_dash, etc.
Update child scripts (Player1.gd, etc.) to override handle_unique_mechanics with character-specific variants.
Testing:
Test each act’s first and last levels to ensure difficulty ramps smoothly.
Use Godot’s debugger to monitor performance (90 levels may require optimization, e.g., disabling off-screen nodes).
Step 5: Memory Integration
From our prior conversations (e.g., April 16, 2025), you’re working on Sprint-Switch (likely Switch-Sprint) via a GitHub repo (https://github.com/Yannis-Munayi/Sprint-Switch.git). The project faced issues with a missing project.godot file, suggesting active development in Godot. Your current setup (PlayerBase.gd, multi-character switching) aligns with the 90-level vision, and the focus on abilities like gravity inversion and shrinking matches the Gravity Guy-inspired mechanic. The lack of chasing enemies and emphasis on high scores suggests a focus on skill-based platforming, which the proposed structure supports.

Questions for You
Abilities:
Are the current abilities (move left/right, jump, shrink, slow time) locked to specific characters, or can all characters use them once unlocked?
Do you want the suggested abilities (wall cling, teleport dash) or others (e.g., glide, shield)?
Characters:
Should MultPlayer be playable (as in players = [self, player_1, player_2, player_3]) or just a base for shared logic?
What are the unique abilities for Player_1, Player_2, and player3?
Level Design:
Do you have specific themes or aesthetics for each act (e.g., sci-fi, nature, abstract)?
How long should each level be (e.g., 30 seconds to 2 minutes)?
Story:
How much story do you want (e.g., brief text, cutscenes, or minimal)?
Any preferred tone (e.g., serious, humorous, epic)?
Additional Content:
Which suggested features excite you most (e.g., collectibles, boss fights, infinite mode)?
Any specific hazards or mechanics you want (e.g., lasers, crumbling platforms)?
Technical:
Are you comfortable adding new nodes (e.g., Area2D for gravity zones) or scripts (e.g., for bosses)?
Any performance concerns with 90 levels (e.g., load times, memory)?
Next Steps
Apply the Structure: Start by creating 3–5 levels per act (e.g., Levels 1, 8, 15 for Act 1) to test pacing.
Implement One New Feature: Try adding one suggested mechanic (e.g., Gravity Shards or wall cling) to a test level.
Share Feedback: Let me know which parts of the plan work or need tweaking, and I can provide specific code (e.g., for portals, bosses) or level design tips.
Clarify Abilities: Share the unique abilities for Player_1, Player_2, player3 so I can tailor their scripts.
This plan should give Switch-Sprint a robust 90-level arc with satisfying progression and plenty of content to keep players hooked. I’m excited to see where you take it! Let me know your thoughts or any specific areas to dive deeper into.
