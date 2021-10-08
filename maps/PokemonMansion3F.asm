	object_const_def
	const POKEMONMANSION3F_KANTO_SUPER_NERD
	const POKEMONMANSION3F_KANTO_SCIENTIST
	const POKEMONMANSION3F_POKE_BALL1
	const POKEMONMANSION3F_POKE_BALL2
	const POKEMONMANSION3F_POKEDEX

PokemonMansion3F_MapScripts:
	def_scene_scripts

	def_callbacks

PokemonMansion3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7, 10, POKEMON_MANSION_2F, 2
	warp_event  6,  1, POKEMON_MANSION_2F, 4
	warp_event 25, 14, POKEMON_MANSION_2F, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5, 11, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 20, 11, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event  1, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 25,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  6, 12, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
