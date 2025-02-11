extends RayCast3D


@export var heldData = {}
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta) ->void:
	$Prompt.text= ""
	if is_colliding():
		var collider = get_collider()

		if collider is Interactable:
			$Prompt.text = collider.get_prompt()
		
			if Input.is_action_just_pressed(collider.prompt_action):
				
				collider.interact(owner, heldData)
				if collider.is_holdable:
					collider.freeze=true
					collider.collision_layer = 0
					collider.reparent(%Camera3D)
					collider.set_position(Vector3(0.5,-0.5,-0.7))
					if(collider.data):
						heldData = collider.data
					print(heldData)
