	object_const_def
	const CERULEANBADGEHOUSE_POKEFAN_M

CeruleanBadgeHouse_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanBadgeHouse_MapEvents:
	def_warp_events
	warp_event  2,  0, CERULEAN_CITY, 10
	warp_event  2,  7, CERULEAN_CITY, 9
	warp_event  3,  7, CERULEAN_CITY, 9

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
