	object_const_def
	const ROUTE1_KANTO_YOUNGSTER1
	const ROUTE1_KANTO_YOUNGSTER2

Route1_MapScripts:
	def_scene_scripts

	def_callbacks

Route1_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event  9, 27, BGEVENT_READ, BGEvent

	def_object_events
	object_event  5, 24, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 15, 13, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
