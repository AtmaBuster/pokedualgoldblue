	object_const_def
	const SSANNE3F_KANTO_SAILOR

SSAnne3F_MapScripts:
	def_scene_scripts

	def_callbacks

SSAnne3F_MapEvents:
	def_warp_events
	warp_event  0,  3, SS_ANNE_BOW, 1
	warp_event 19,  3, SS_ANNE_2F, 8

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9,  3, SPRITE_KANTO_SAILOR, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
