	object_const_def

CeladonMansion2F_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonMansion2F_SignScript:
	jumptext .Text
.Text:
	text "GAME FREAK"
	line "Meeting Room"
	done

CeladonMansion2F_PCScript:
	jumpstd PCScript

CeladonMansion2F_MapEvents:
	def_warp_events
	warp_event  6,  1, CELADON_MANSION_3F, 1
	warp_event  7,  1, CELADON_MANSION_1F, 4
	warp_event  2,  1, CELADON_MANSION_1F, 5
	warp_event  4,  1, CELADON_MANSION_3F, 4

	def_coord_events

	def_bg_events
	bg_event  4,  9, BGEVENT_READ, CeladonMansion2F_SignScript
	bg_event  0,  5, BGEVENT_UP, CeladonMansion2F_PCScript

	def_object_events
