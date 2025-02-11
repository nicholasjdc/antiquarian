extends Interactable

func _on_interacted(body, special_data):
	print(special_data)
	if(special_data.has("music_path_name")):
		var music_path: String = special_data["music_path_name"]
		var a_stream: AudioStream = load("res://Music/"+music_path+".ogg")
		#a_stream same as currently played stream
		%AudioStreamPlayer3D.set_stream(a_stream)
	if not %AudioStreamPlayer3D.is_playing():
		%AudioStreamPlayer3D.play()
	elif %AudioStreamPlayer3D.is_playing():
		%AudioStreamPlayer3D.stop()
