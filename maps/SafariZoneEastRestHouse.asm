	object_const_def
	const SAFARIZONEEASTRESTHOUSE_KANTO_SCIENTIST
	const SAFARIZONEEASTRESTHOUSE_KANTO_ROCKER
	const SAFARIZONEEASTRESTHOUSE_SILPH_WORKER

SafariZoneEastRestHouse_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZoneEastRestHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, SAFARI_ZONE_EAST, 5
	warp_event  3,  7, SAFARI_ZONE_EAST, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  4,  2, SPRITE_KANTO_ROCKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  5,  2, SPRITE_SILPH_WORKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
