	object_const_def
	const ROUTE15GATE2F_KANTO_SCIENTIST

Route15Gate2F_MapScripts:
	def_scene_scripts

	def_callbacks

Route15Gate2F_MapEvents:
	def_warp_events
	warp_event  7,  7, ROUTE_15_GATE_1F, 5

	def_coord_events

	def_bg_events
	bg_event  6,  2, BGEVENT_READ, BGEvent

	def_object_events
	object_event  4,  2, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
