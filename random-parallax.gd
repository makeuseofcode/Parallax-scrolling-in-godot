extends ParallaxBackground

const MAX_LAYERS = 5
const MIN_SCALE = 0.2
const MAX_SCALE = 1.5
const MIN_SPEED = 0.01
const MAX_SPEED = 0.03
const MIN_X_POSITION = -500
const MAX_X_POSITION = 500
const MIN_Y_POSITION = -300
const MAX_Y_POSITION = 300

func _ready():
	
	for i in range(MAX_LAYERS):
		create_random_layer()

func create_random_layer():
	# Add a new parallax layer with a random motion scale
	var layer = ParallaxLayer.new()
	var scale = lerp(MIN_SCALE, MAX_SCALE, randf())
	layer.motion_scale = Vector2(scale, scale)

	var x_position = randf_range(MIN_X_POSITION, MAX_X_POSITION)
	var y_position = randf_range(MIN_Y_POSITION, MAX_Y_POSITION)
	layer.global_transform.origin.x = x_position
	layer.global_transform.origin.y = y_position

	add_child(layer)

	# Add a StaticBody2D with CollisionShape2D to the new layer
	var static_body = StaticBody2D.new()
	layer.add_child(static_body)

	var collision_shape = CollisionShape2D.new()
	var shape = RectangleShape2D.new()
	shape.extents = Vector2(32, 32) # Set the size of the collidable object
	collision_shape.shape = shape
	static_body.add_child(collision_shape)

func remove_random_layer():
	# Remove a random parallax layer
	if get_child_count() > 0:
		var random_index = randi() % get_child_count()
		var layer_to_remove = get_child(random_index)
		remove_child(layer_to_remove)
