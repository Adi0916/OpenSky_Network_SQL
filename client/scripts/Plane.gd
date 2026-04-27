extends Node3D
@export var init_pos: Vector2
@export var anmiate: AnimationPlayer


func _ready() -> void:
	anmiate.play("Blinking")

func _process(delta: float) -> void:
	set_plane_pos(init_pos.x, init_pos.y)


func set_plane_pos(latitude: float, longnitude:float) -> void:
	rotation_degrees.x = -latitude
	rotation_degrees.y = longnitude
