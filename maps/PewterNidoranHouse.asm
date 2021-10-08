	object_const_def
	const PEWTERNIDORANHOUSE_MONSTER
	const PEWTERNIDORANHOUSE_LITTLE_BOY
	const PEWTERNIDORANHOUSE_POKEFAN_M

PewterNidoranHouse_MapScripts:
	def_scene_scripts

	def_callbacks

PewterNidoranHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, PEWTER_CITY, 4
	warp_event  3,  7, PEWTER_CITY, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  5, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  3,  5, SPRITE_LITTLE_BOY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  1,  2, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
