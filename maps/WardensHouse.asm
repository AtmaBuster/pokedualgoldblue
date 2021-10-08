	object_const_def
	const WARDENSHOUSE_WARDEN
	const WARDENSHOUSE_POKE_BALL
	const WARDENSHOUSE_KANTO_BOULDER

WardensHouse_MapScripts:
	def_scene_scripts

	def_callbacks

WardensHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, FUCHSIA_CITY, 4
	warp_event  5,  7, FUCHSIA_CITY, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_WARDEN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  8,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  8,  4, SPRITE_KANTO_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
