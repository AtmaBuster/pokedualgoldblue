	object_const_def
	const CINNABARLABMETRONOMEROOM_KANTO_SCIENTIST1
	const CINNABARLABMETRONOMEROOM_KANTO_SCIENTIST2

CinnabarLabMetronomeRoom_MapScripts:
	def_scene_scripts

	def_callbacks

CinnabarLabMetronomeRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CINNABAR_LAB, 4
	warp_event  3,  7, CINNABAR_LAB, 4

	def_coord_events

	def_bg_events
	bg_event  0,  4, BGEVENT_READ, BGEvent
	bg_event  1,  4, BGEVENT_READ, BGEvent
	bg_event  2,  1, BGEVENT_READ, BGEvent

	def_object_events
	object_event  7,  2, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  2,  3, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
