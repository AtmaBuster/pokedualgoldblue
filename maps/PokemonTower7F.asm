	object_const_def
	const POKEMONTOWER7F_KANTO_ROCKET1
	const POKEMONTOWER7F_KANTO_ROCKET2
	const POKEMONTOWER7F_KANTO_ROCKET3
	const POKEMONTOWER7F_ELDER

PokemonTower7F_MapScripts:
	def_scene_scripts

	def_callbacks

PokemonTower7F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 16, POKEMON_TOWER_6F, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9, 11, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 12,  9, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event  9,  7, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 10,  3, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
