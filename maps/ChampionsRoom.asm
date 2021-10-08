	object_const_def
	const CHAMPIONSROOM_KANTO_BLUE
	const CHAMPIONSROOM_OAK

ChampionsRoom_MapScripts:
	def_scene_scripts

	def_callbacks

ChampionsRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, LANCES_ROOM_KANTO, 2
	warp_event  4,  7, LANCES_ROOM_KANTO, 3
	warp_event  3,  0, HALL_OF_FAME_KANTO, 1
	warp_event  4,  0, HALL_OF_FAME_KANTO, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_KANTO_BLUE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  3,  7, SPRITE_OAK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
