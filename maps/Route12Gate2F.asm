	object_const_def
	const ROUTE12GATE2F_BRUNETTE_GIRL

Route12Gate2F_MapScripts:
	def_scene_scripts

	def_callbacks

Route12Gate2F_MapEvents:
	def_warp_events
	warp_event  7,  7, ROUTE_12_GATE_1F, 5

	def_coord_events

	def_bg_events
	bg_event  1,  2, BGEVENT_READ, BGEvent
	bg_event  6,  2, BGEVENT_READ, BGEvent

	def_object_events
	object_event  3,  4, SPRITE_BRUNETTE_GIRL, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
