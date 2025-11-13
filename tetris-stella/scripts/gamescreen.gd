extends Node2D
# @export is for initializing values @ compile time (these are static values)
# @onready delays var initializing until ready() is called. for dynamically accessing nodes in scene tree.

@export var point1: Vector2 = Vector2(100, 100) # x boundaries
@export var point2: Vector2 = Vector2(1000, 600) # y boundaries

const TILE_SIZE : Vector2 = Vector2(16, 1)  

func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
