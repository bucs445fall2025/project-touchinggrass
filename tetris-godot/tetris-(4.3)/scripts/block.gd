extends Node2D

signal block_stopped

@export var step_size: float = 40.0
@export var move_speed: float = 20.0
@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var ray_cast_down: RayCast2D = $RayCastDown


var target_pos: Vector2
var moving := false
var has_block_stopped := false
var fall_time: float = 0.0
var fall_speed: float = 1.0  # Adjust this value to make blocks fall faster/slower

const TILE_SIZE: Vector2 = Vector2(10, 10)

#signal block_stopped()
#
#func block_has_stopped():
	#print("block has stopped triggered")
	#emit_signal("block_stopped")
	

func _ready() -> void:
	target_pos = position

func try_move_down() -> bool:
	if !ray_cast_down.is_colliding():
		target_pos.y += step_size
		moving = true
		return true
	return false

func _process(delta: float) -> void:
	if not moving:
		# Handle horizontal movement
		if Input.is_action_just_pressed("move_right"):
			if !ray_cast_right.is_colliding():
				target_pos.x += step_size
				moving = true
			else:
				print("IS COLLIDING RIGHT")
		elif Input.is_action_just_pressed("move_left"):
			if !ray_cast_left.is_colliding():
				target_pos.x -= step_size
				moving = true
			else:
				print("IS COLLIDING LEFT")
		
		# Handle downward movement
		if Input.is_action_just_pressed("move_down"):
			try_move_down()
		
		# Automatic falling
		fall_time += delta
		if fall_time >= fall_speed:
			fall_time = 0
			if not try_move_down() and not moving:
				print("About to emit block_stopped signal")
				emit_signal("block_stopped")
				print("Signal emitted")
				
		elif Input.is_action_just_pressed("rotate"):
			self.rotation_degrees += 90
			print(self.rotation_degrees)
			moving = true

	if moving:
		position = position.move_toward(target_pos, move_speed + delta)
		if position.distance_to(target_pos) < 0.5:
			position = target_pos.snapped(TILE_SIZE)
			moving = false
			


#func block_stopped() -> bool:
	#has_block_stopped = true
	#print("BLOCK HAS STOPPPED (BLOCK.GD)", has_block_stopped)
	#return true
