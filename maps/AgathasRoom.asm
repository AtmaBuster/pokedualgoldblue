	object_const_def
	const AGATHASROOM_AGATHA

AgathasRoom_MapScripts:
	def_scene_scripts

	def_callbacks

AgathasRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 11, BRUNOS_ROOM_KANTO, 3
	warp_event  5, 11, BRUNOS_ROOM_KANTO, 4
	warp_event  4,  0, LANCES_ROOM_KANTO, 1
	warp_event  5,  0, LANCES_ROOM_KANTO, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_AGATHA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
