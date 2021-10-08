	object_const_def
	const VIRIDIANFORESTNORTHGATE_KANTO_SUPER_NERD
	const VIRIDIANFORESTNORTHGATE_KANTO_GRAMPS

ViridianForestNorthGate_MapScripts:
	def_scene_scripts

	def_callbacks

ViridianForestNorthGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, ROUTE_2, 2
	warp_event  5,  0, ROUTE_2, 2
	warp_event  4,  7, VIRIDIAN_FOREST, 1
	warp_event  5,  7, VIRIDIAN_FOREST, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  2, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  2,  5, SPRITE_KANTO_GRAMPS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
