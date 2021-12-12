	object_const_def
	const POKEMONTOWER1F_OLD_LINK_RECEPTIONIST
	const POKEMONTOWER1F_MIDDLE_AGED_WOMAN
	const POKEMONTOWER1F_BALDING_GUY
	const POKEMONTOWER1F_GIRL
	const POKEMONTOWER1F_CHANNELER

PokemonTower1F_MapScripts:
	def_scene_scripts

	def_callbacks

PokemonTower1F_MapEvents:
	def_warp_events
	warp_event 10, 17, LAVENDER_TOWN, 2
	warp_event 11, 17, LAVENDER_TOWN, 2
	warp_event 18,  9, POKEMON_TOWER_2F, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event 15, 13, SPRITE_OLD_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  6,  8, SPRITE_POKEFAN_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  8, 12, SPRITE_BALDING_GUY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 13,  7, SPRITE_GIRL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 17,  7, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
