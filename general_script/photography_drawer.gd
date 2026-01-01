extends Node3D

@export var painting: StandardMaterial3D

func _ready() -> void:
	$StaticBody3D/plane.material_override = painting
