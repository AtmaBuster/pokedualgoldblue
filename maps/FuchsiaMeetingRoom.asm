	object_const_def
	const FUCHSIAMEETINGROOM_SAFARI_ZONE_WORKER1
	const FUCHSIAMEETINGROOM_SAFARI_ZONE_WORKER2
	const FUCHSIAMEETINGROOM_SAFARI_ZONE_WORKER3

FuchsiaMeetingRoom_MapScripts:
	def_scene_scripts

	def_callbacks

FuchsiaMeetingRoom_MapEvents:
	def_warp_events
	warp_event  4,  7, FUCHSIA_CITY, 7
	warp_event  5,  7, FUCHSIA_CITY, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  1, SPRITE_SAFARI_ZONE_WORKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  0,  2, SPRITE_SAFARI_ZONE_WORKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 10,  1, SPRITE_SAFARI_ZONE_WORKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
