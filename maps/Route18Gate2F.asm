	object_const_def
	const ROUTE18GATE2F_KANTO_YOUNGSTER

Route18Gate2F_MapScripts:
	def_scene_scripts

	def_callbacks

Route18Gate2F_MapEvents:
	def_warp_events
	warp_event  7,  7, ROUTE_18_GATE_1F, 5

	def_coord_events

	def_bg_events
	bg_event  1,  2, BGEVENT_READ, BGEvent
	bg_event  6,  2, BGEVENT_READ, BGEvent

	def_object_events
	object_event  4,  2, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
