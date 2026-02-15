extends Camera3D

var mouse_position : Vector2

func get_object_at_mouse_position():
	mouse_position = get_viewport().get_mouse_position()
	var ray_start : Vector3 = self.project_ray_origin(mouse_position)
	var direction := self.project_ray_normal(mouse_position)
	
	var space_state := get_world_3d().direct_space_state
	
	var physics_params := PhysicsRayQueryParameters3D.create(ray_start, ray_start + direction * 1000.0)
	var result := space_state.intersect_ray(physics_params)
	if result:
		if result.collider is not Player:
			return result
	else:
		return null
