extends Node3D

@export var on = false 
@export var on_mat = StandardMaterial3D
@export var off_mat = StandardMaterial3D
@export var light_color: Color

func _ready() -> void:
	$OmniLight3D.light_color = light_color
	if on: 
		$"Floor Lamp/FloorLamp_Bulb".material_override = on_mat
	if !on:
		$"Floor Lamp/FloorLamp_Bulb".material_override = off_mat
	$OmniLight3D.visible = on 

func toggle_light():
	on = !on 
	if on: 
		$"Floor Lamp/FloorLamp_Bulb".material_override = on_mat
	if !on:
		$"Floor Lamp/FloorLamp_Bulb".material_override = off_mat
	$OmniLight3D.visible = on 
