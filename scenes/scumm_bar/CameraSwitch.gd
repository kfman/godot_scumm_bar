extends CollisionPolygon2D


export(NodePath) var camera
var cam: Camera2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	cam = get_node(camera)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_CameraSwitch_body_entered(_body):
	if cam.position.x > 320:
		cam.position = Vector2(160,100)
	else:
		cam.position = Vector2(480,100)
	pass # Replace with function body.
