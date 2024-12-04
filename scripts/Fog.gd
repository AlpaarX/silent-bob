extends Node3D

@onready var world_environment = $WorldEnvironment  # This assumes WorldEnvironment is a direct child

@export var fog_start_distance = 5  # Fog starts close to the player
@export var fog_end_distance = 20   # Abrupt fog cutoff
@export var fog_density = 0.4       # Dense fog
@export var fog_color = Color(0.5, 0.5, 0.5)  # Grayish fog color

func _ready():
	# Create and assign the Environment resource to the WorldEnvironment
	var env_resource = Environment.new()
	world_environment.environment = env_resource
	
	# Enable and configure fog settings
	env_resource.fog_enabled = true
	env_resource.fog_color = fog_color  # Set fog color
	env_resource.fog_density = fog_density  # Set fog density
	env_resource.fog_start_distance = fog_start_distance  # Set fog start
	env_resource.fog_end_distance = fog_end_distance  # Set fog end
