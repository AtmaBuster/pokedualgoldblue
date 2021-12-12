	object_const_def
	const POKEMONFANCLUB_FISHER
	const POKEMONFANCLUB_GIRL
	const POKEMONFANCLUB_FAIRY
	const POKEMONFANCLUB_SEEL
	const POKEMONFANCLUB_GENTLEMAN
	const POKEMONFANCLUB_OLD_LINK_RECEPTIONIST

PokemonFanClub_MapScripts:
	def_scene_scripts

	def_callbacks

PokemonFanClub_MapEvents:
	def_warp_events
	warp_event  2,  7, VERMILION_CITY, 2
	warp_event  3,  7, VERMILION_CITY, 2

	def_coord_events

	def_bg_events
	bg_event  1,  0, BGEVENT_READ, BGEvent
	bg_event  6,  0, BGEVENT_READ, BGEvent

	def_object_events
	object_event  6,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  1,  3, SPRITE_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  6,  4, SPRITE_FAIRY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  1,  4, SPRITE_SEEL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  3,  1, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  5,  1, SPRITE_OLD_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
