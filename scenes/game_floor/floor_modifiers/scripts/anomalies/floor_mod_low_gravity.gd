extends FloorModifier

const GRAVITY_MULTIPLIER := 0.75

## Lowers player gravity for the floor
func modify_floor() -> void:
	if Util.get_player():
		Util.get_player().gravity *= GRAVITY_MULTIPLIER
		game_floor.s_floor_ended.connect(func(): Util.get_player().gravity /= GRAVITY_MULTIPLIER)

func get_mod_name() -> String:
	return "Low Gravity"

func get_mod_quality() -> ModType:
	return ModType.POSITIVE
	
func get_mod_icon() -> Texture2D:
	return load("res://ui_assets/player_ui/pause/tightened_security.png")

func get_description() -> String:
	return "You can jump higher!"
