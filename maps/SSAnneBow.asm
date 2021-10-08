	object_const_def
	const SSANNEBOW_KANTO_SUPER_NERD
	const SSANNEBOW_KANTO_SAILOR1
	const SSANNEBOW_COOLTRAINER_M
	const SSANNEBOW_KANTO_SAILOR2
	const SSANNEBOW_KANTO_SAILOR3

SSAnneBow_MapScripts:
	def_scene_scripts

	def_callbacks

SSAnneBow_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13,  6, SS_ANNE_3F, 1
	warp_event 13,  7, SS_ANNE_3F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  4,  9, SPRITE_KANTO_SAILOR, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  7, 11, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  4,  4, SPRITE_KANTO_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 10,  8, SPRITE_KANTO_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
