extends Interactable



func _on_interacted(_body, _specialData):

	$ProjectionLight.visible = true
	if not $AudioStreamPlayer3D.is_playing():
		$AudioStreamPlayer3D.play()
	elif $AudioStreamPlayer3D.is_playing():
		$AudioStreamPlayer3D.stop()
