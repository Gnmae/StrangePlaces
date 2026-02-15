extends Area3D

func _ready() -> void:
	body_entered.connect(_on_body_entered)

func _on_body_entered(body : CharacterBody3D):
	if body is Player:
		body.set_controller(EmptyController.new(body))
		$"../Player2".set_controller(HumanController.new($"../Player2"))
	
