extends MeshInstance3D

func _ready() -> void:
	$StaticBody3D.add_to_group("floor")
