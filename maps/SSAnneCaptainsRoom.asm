	object_const_def
	const SSANNECAPTAINSROOM_CAPTAIN

SSAnneCaptainsRoom_MapScripts:
	def_scene_scripts

	def_callbacks

SSAnneCaptainsRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  7, SS_ANNE_2F, 9

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_CAPTAIN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
