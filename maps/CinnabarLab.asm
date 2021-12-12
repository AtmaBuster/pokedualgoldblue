	object_const_def
	const CINNABARLAB_FISHING_GURU

CinnabarLab_MapScripts:
	def_scene_scripts

	def_callbacks

CinnabarLab_MapEvents:
	def_warp_events
	warp_event  2,  7, CINNABAR_ISLAND, 3
	warp_event  3,  7, CINNABAR_ISLAND, 3
	warp_event  8,  4, CINNABAR_LAB_TRADE_ROOM, 1
	warp_event 12,  4, CINNABAR_LAB_METRONOME_ROOM, 1
	warp_event 16,  4, CINNABAR_LAB_FOSSIL_ROOM, 1

	def_coord_events

	def_bg_events
	bg_event  3,  2, BGEVENT_READ, BGEvent
	bg_event  9,  4, BGEVENT_READ, BGEvent
	bg_event 13,  4, BGEVENT_READ, BGEvent
	bg_event 17,  4, BGEVENT_READ, BGEvent

	def_object_events
	object_event  1,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
