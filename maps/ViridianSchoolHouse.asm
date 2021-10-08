	object_const_def
	const VIRIDIANSCHOOLHOUSE_BRUNETTE_GIRL
	const VIRIDIANSCHOOLHOUSE_COOLTRAINER_F

ViridianSchoolHouse_MapScripts:
	def_scene_scripts

	def_callbacks

ViridianSchoolHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VIRIDIAN_CITY, 3
	warp_event  3,  7, VIRIDIAN_CITY, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  5, SPRITE_BRUNETTE_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  4,  1, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
