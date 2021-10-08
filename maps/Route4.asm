	object_const_def
	const ROUTE4_COOLTRAINER_F1
	const ROUTE4_COOLTRAINER_F2
	const ROUTE4_POKE_BALL

Route4_MapScripts:
	def_scene_scripts

	def_callbacks

Route4_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11,  5, MT_MOON_POKECENTER, 1
	warp_event 18,  5, MT_MOON_1F, 1
	warp_event 24,  5, MT_MOON_B1F, 8

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9,  8, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 63,  3, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 57,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
