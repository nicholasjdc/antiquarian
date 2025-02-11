extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	var scene = load("res://Scenes/16_mm_film.tscn")
	var instance = scene.instantiate()
	
	add_child(instance)
	instance.set_position(Vector3(0,1.5,0))

	var record_scene = load("res://Scenes/Record.tscn")
	var record_instance = record_scene.instantiate()
	add_child(record_instance)
	record_instance.set_position(Vector3(1,1,1))
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
