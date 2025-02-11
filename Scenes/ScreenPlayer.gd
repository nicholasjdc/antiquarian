extends VideoStreamPlayer


func _on_mm_projector_interacted(_body, special_data):
	if not is_playing():
		if(special_data.has("film_path_name")):
			var film_path: String = "eye1"#special_data.film_path_name
			var v_stream: VideoStream = load("res://Movies/"+film_path+".ogv")
			set_stream(v_stream)
			play()

	elif is_playing():
		stop()
		pass
		
