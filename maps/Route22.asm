	object_const_def
	const ROUTE22_KANTO_BLUE1
	const ROUTE22_KANTO_BLUE2

Route22_MapScripts:
	def_scene_scripts

	def_callbacks

Route22_MapEvents:
	db 0, 0 ; filler

	def_warp_events
IF DEF(_GOLD)
	warp_event  8,  5, VICTORY_ROAD_GATE, 1
ELIF DEF(_BLUE)
	warp_event  8,  5, ROUTE_22_GATE, 1
ENDC

	def_coord_events

	def_bg_events
	bg_event  7, 11, BGEVENT_READ, BGEvent

	def_object_events
	object_event 25,  5, SPRITE_KANTO_BLUE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 25,  5, SPRITE_KANTO_BLUE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
