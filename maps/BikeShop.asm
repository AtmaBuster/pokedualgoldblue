	object_const_def
	const BIKESHOP_BIKE_SHOP_CLERK
	const BIKESHOP_MIDDLE_AGED_WOMAN
	const BIKESHOP_KANTO_YOUNGSTER

BikeShop_MapScripts:
	def_scene_scripts

	def_callbacks

BikeShop_MapEvents:
	def_warp_events
	warp_event  2,  7, CERULEAN_CITY, 5
	warp_event  3,  7, CERULEAN_CITY, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  2, SPRITE_BIKE_SHOP_CLERK, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  5,  6, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  1,  3, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
