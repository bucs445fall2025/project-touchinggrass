extends Node2D

@export var step_size: float = 40.0
@export var move_speed: float = 20.0
@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_left: RayCast2D = $RayCastLeft

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
		elif Input.is_action_just_pressed("move_left"):
			target_pos.x -= step_size; moving = true
		elif Input.is_action_just_pressed("move_down"):
			target_pos.y += step_size; moving = true
		#elif Input.is_action_just_pressed("rotate"):
			#target_pos.angle() *= PI;
			#moving = true

	if moving:
		position = position.move_toward(target_pos, move_speed + delta)
		if position.distance_to(target_pos) < 0.5:
			position = target_pos
			moving = false




#extends Node2D
#
#
## Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	#pass # Replace with function body.
#
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass
