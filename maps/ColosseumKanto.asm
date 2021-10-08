	object_const_def
	const COLOSSEUMKANTO_RED

ColosseumKanto_MapScripts:
	def_scene_scripts

	def_callbacks

ColosseumKanto_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  2, SPRITE_RED, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
