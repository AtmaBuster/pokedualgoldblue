	object_const_def
	const FUCHSIABILLSGRANDPASHOUSE_MIDDLE_AGED_WOMAN
	const FUCHSIABILLSGRANDPASHOUSE_GAMBLER
	const FUCHSIABILLSGRANDPASHOUSE_KANTO_YOUNGSTER

FuchsiaBillsGrandpasHouse_MapScripts:
	def_scene_scripts

	def_callbacks

FuchsiaBillsGrandpasHouse_MapEvents:
	def_warp_events
	warp_event  2,  7, FUCHSIA_CITY, 2
	warp_event  3,  7, FUCHSIA_CITY, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  7,  2, SPRITE_GAMBLER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  5,  5, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
