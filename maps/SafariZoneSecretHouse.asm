	object_const_def
	const SAFARIZONESECRETHOUSE_FISHING_GURU

SafariZoneSecretHouse_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZoneSecretHouse_MapEvents:
	def_warp_events
	warp_event  2,  7, SAFARI_ZONE_WEST, 7
	warp_event  3,  7, SAFARI_ZONE_WEST, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
