	object_const_def

CeladonMansionRoof_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonMansionRoof_SignScript:
	jumptext .Text
.Text:
	text "I KNOW EVERYTHING!"
	done

CeladonMansionRoof_MapEvents:
	def_warp_events
	warp_event  6,  1, CELADON_MANSION_3F, 2
	warp_event  2,  1, CELADON_MANSION_3F, 3
	warp_event  2,  7, CELADON_MANSION_ROOF_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event  3,  7, BGEVENT_READ, CeladonMansionRoof_SignScript

	def_object_events
