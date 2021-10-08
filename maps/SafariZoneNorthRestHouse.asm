	object_const_def
	const SAFARIZONENORTHRESTHOUSE_KANTO_SCIENTIST
	const SAFARIZONENORTHRESTHOUSE_SAFARI_ZONE_WORKER
	const SAFARIZONENORTHRESTHOUSE_GENTLEMAN

SafariZoneNorthRestHouse_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZoneNorthRestHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, SAFARI_ZONE_NORTH, 9
	warp_event  3,  7, SAFARI_ZONE_NORTH, 9

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  3, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  3,  4, SPRITE_SAFARI_ZONE_WORKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  1,  5, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
