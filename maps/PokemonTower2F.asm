	object_const_def
	const POKEMONTOWER2F_KANTO_BLUE
	const POKEMONTOWER2F_CHANNELER

PokemonTower2F_MapScripts:
	def_scene_scripts

	def_callbacks

PokemonTower2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  9, POKEMON_TOWER_3F, 1
	warp_event 18,  9, POKEMON_TOWER_1F, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event 14,  5, SPRITE_KANTO_BLUE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  3,  7, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
