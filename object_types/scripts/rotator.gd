class_name Rotator extends MeshInstance3D

var pivot

func _ready() -> void:
	pivot = get_parent()
	$StaticBody3D.add_to_group("rotator")
