	object_const_def
	const ROUTE16GATE2F_LITTLE_BOY
	const ROUTE16GATE2F_LITTLE_GIRL

Route16Gate2F_MapScripts:
	def_scene_scripts

	def_callbacks

Route16Gate2F_MapEvents:
	def_warp_events
	warp_event  7,  7, ROUTE_16_GATE_1F, 9

	def_coord_events

	def_bg_events
	bg_event  1,  2, BGEVENT_READ, BGEvent
	bg_event  6,  2, BGEVENT_READ, BGEvent

	def_object_events
	object_event  4,  2, SPRITE_LITTLE_BOY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  2,  5, SPRITE_LITTLE_GIRL, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
