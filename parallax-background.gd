extends ParallaxBackground

func _ready():
	# Create the first parallax layer
	var layer1 = ParallaxLayer.new()
	layer1.motion_scale = Vector2(0.2, 0.2)
	add_child(layer1)

	# Add a StaticBody2D with CollisionShape2D to the first layer
	var static_body1 = StaticBody2D.new()
	layer1.add_child(static_body1)

	var collision_shape1 = CollisionShape2D.new()
	var shape1 = RectangleShape2D.new()
	shape1.extents = Vector2(32, 32) # Set the size of the collidable object
	collision_shape1.shape = shape1
	static_body1.add_child(collision_shape1)

	# Create the second parallax layer
	var layer2 = ParallaxLayer.new()
	layer2.motion_scale = Vector2(0.5, 0.5)
	add_child(layer2)

	# Add a StaticBody2D with CollisionShape2D to the second layer
	var static_body2 = StaticBody2D.new()
	layer2.add_child(static_body2)

	var collision_shape2 = CollisionShape2D.new()
	var shape2 = RectangleShape2D.new()
	shape2.extents = Vector2(64, 64) # Set the size of the collidable object
	collision_shape2.shape = shape2
	static_body2.add_child(collision_shape2)

	# Create the third parallax layer
	var layer3 = ParallaxLayer.new()
	layer3.motion_scale = Vector2(1.0, 1.0)
	add_child(layer3)

	# Add a StaticBody2D with CollisionShape2D to the third layer
	var static_body3 = StaticBody2D.new()
	layer3.add_child(static_body3)

	var collision_shape3 = CollisionShape2D.new()
	var shape3 = RectangleShape2D.new()
	shape3.extents = Vector2(128, 128) # Set the size of the collidable object
	collision_shape3.shape = shape3
	static_body3.add_child(collision_shape3)
