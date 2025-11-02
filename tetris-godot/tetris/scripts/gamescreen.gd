extends Node2D
# @export is for initializing values @ compile time (these are static values)
# @onready delays var initializing until ready() is called. for dynamically accessing nodes in scene tree.

@export var point1: Vector2 = Vector2(50, 50) # x boundaries
@export var point2: Vector2 = Vector2(1100, 600) # y boundaries

@onready var t_block: PackedScene = preload("res://scenes/T-Block.tscn")
@onready var s1_block: PackedScene = preload("res://scenes/S1_Block.tscn")


var blocks_to_spawn = []


func _ready() -> void:
	blocks_to_spawn.append(t_block)
	blocks_to_spawn.append(s1_block)
	
	randomize()
	random_spawn(point1, point2)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("rotate"):
		spawn_block()
	#pass





#choosing random spawn point (using vector)
func random_spawn(p1: Vector2, p2: Vector2) -> Vector2:
	var x_value: float = randf_range(p1.x, p2.x) # choose random point from x vector 
	var y_value: float = randf_range(p1.y, p2.y) # choose random point from y vector
	
	var random_point: Vector2 = Vector2(x_value, y_value) # make vector from x, y point
	
	return random_point

func spawn_block ():
	
	var chosen_block = blocks_to_spawn.pick_random() # choose ranodm block from list
	var spawn: Node = chosen_block.instantiate() # instantiate block into a node in scene tree
	add_child(spawn)
	
	var spawn_location: Vector2 = random_spawn(point1, point2)
	spawn.position = spawn_location

# Called when the node enters the scene tree for the first time.
