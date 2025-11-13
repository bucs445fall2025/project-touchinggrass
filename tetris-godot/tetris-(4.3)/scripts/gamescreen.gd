extends Node2D
# @export is for initializing values @ compile time (these are static values)
# @onready delays var initializing until ready() is called. for dynamically accessing nodes in scene tree.

@export var point1: Vector2 = Vector2(100, 100) # x boundaries
@export var point2: Vector2 = Vector2(1000, 600) # y boundaries

@onready var t_block: PackedScene = preload("res://scenes/T-Block.tscn")
@onready var s1_block: PackedScene = preload("res://scenes/S1_Block.tscn")

#@onready var can_we_spawn := get_tree().root.get_node("")
var blocks_to_spawn = []
var has_spawned = false

func _ready() -> void:
	blocks_to_spawn.append(t_block)
	blocks_to_spawn.append(s1_block)
	
	randomize()
	random_spawn(point1, point2)
	
	if !has_spawned:
		spawn_block()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("rotate"):
		spawn_block()
		

#choosing random spawn point (using vector)
func random_spawn(p1: Vector2, p2: Vector2) -> Vector2:
	var x_value: float = randf_range(p1.x, p2.x) # choose random point from x vector 
	var y_value: float = randf_range(p1.y, p2.y) # choose random point from y vector
	
	var random_point: Vector2 = Vector2(x_value, y_value) # make vector from x, y point
	
	return random_point

func spawn_block ():
	print("Spawning new block")
	var chosen_block = blocks_to_spawn.pick_random() # choose random block from list
	var spawn = chosen_block.instantiate() # instantiate block into a node in scene tree	
	
	# Set position before adding to scene
	var spawn_location: Vector2 = random_spawn(point1, point2)
	spawn.position = spawn_location
	
	# Connect with error checking
	print("Attempting to connect signal...")
	# Use FLAGS to make the connection more permissive
	var connect_result = spawn.connect("block_stopped", Callable(self, "_on_block_stopped"), CONNECT_ONE_SHOT)
	if connect_result == OK:
		print("Signal connected successfully")
	else:
		push_error("Failed to connect signal: " + str(connect_result))
		print("Failed to connect signal: " + str(connect_result))
	
	add_child(spawn)
	print("Block spawned at position: ", spawn_location)

func _on_block_stopped():
	print("_on_block_stopped handler called")
	spawn_block()

# Called when the node enters the scene tree for the first time.
