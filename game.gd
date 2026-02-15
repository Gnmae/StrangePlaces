extends Node2D

func _ready() -> void:
	$Player.set_controller(HumanController.new($Player))
