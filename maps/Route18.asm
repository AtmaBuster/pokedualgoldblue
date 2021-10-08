	object_const_def
	const ROUTE18_COOLTRAINER_M1
	const ROUTE18_COOLTRAINER_M2
	const ROUTE18_COOLTRAINER_M3

Route18_MapScripts:
	def_scene_scripts

	def_callbacks

Route18_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 33,  8, ROUTE_18_GATE_1F, 1
	warp_event 33,  9, ROUTE_18_GATE_1F, 2
	warp_event 40,  8, ROUTE_18_GATE_1F, 3
	warp_event 40,  9, ROUTE_18_GATE_1F, 4

	def_coord_events

	def_bg_events
	bg_event 43,  7, BGEVENT_READ, BGEvent
	bg_event 33,  5, BGEVENT_READ, BGEvent

	def_object_events
	object_event 36, 11, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 40, 15, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 42, 13, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
