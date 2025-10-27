extends Node2D

@export var step_size: float = 40.0
@export var move_speed: float = 20.0
@onready var node: Node2D = $block
@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var ray_cast_down: RayCast2D = $RayCastDown
@onready var ray_cast_up: RayCast2D = $RayCastUp

var target_pos: Vector2
var moving := false


func _ready() -> void:
	target_pos = position

func _process(delta: float) -> void:

	if not moving:
		if Input.is_action_just_pressed("move_right"):
			if !ray_cast_right.is_colliding():
				target_pos.x += step_size; 
				moving = true
			else:
				print("IS COLLIDING RIGHT")
		elif Input.is_action_just_pressed("move_left"):
			if !ray_cast_left.is_colliding():
				target_pos.x -= step_size; 
				moving = true
			else:
				print("IS COLLIDING LEFT")
		elif Input.is_action_just_pressed("move_down"):
			if !ray_cast_down.is_colliding():
				target_pos.y += step_size; 
				moving = true
			else:
				print("IS COLLIDING DOWN")
		elif Input.is_action_just_pressed("rotate"):
			self.rotation_degrees += 90
			print(self.rotation_degrees)
			#target_pos.angle() *= PI;
			#moving = true

	if moving:
		position = position.move_toward(target_pos, move_speed + delta)
		if position.distance_to(target_pos) < 0.5:
			position = target_pos
			moving = false
