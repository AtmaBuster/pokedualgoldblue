	object_const_def
	const CINNABARLAB_FISHING_GURU

CinnabarLab_MapScripts:
	def_scene_scripts

	def_callbacks

CinnabarLab_GuyScript:
	jumptextfaceplayer .Text
.Text:
	text "We study #MON"
	line "extensively here."

	para "People often bring"
	line "us rare #MON"
	cont "for examination."
	done

CinnabarLab_PhotoScript:
	jumptext .Text
.Text:
	text "A photo of the"
	line "LAB's founder,"
	cont "DR.FUJI!"
	done

CinnabarLab_Sign1Script:
	jumptext .Text
.Text:
	text "#MON LAB"
	line "Meeting Room"
	done

CinnabarLab_Sign2Script:
	jumptext .Text
.Text:
	text "#MON LAB"
	line "R-and-D Room"
	done

CinnabarLab_Sign3Script:
	jumptext .Text
.Text:
	text "#MON LAB"
	line "Testing Room"
	done

CinnabarLab_MapEvents:
	def_warp_events
	warp_event  2,  7, CINNABAR_ISLAND, 3
	warp_event  3,  7, CINNABAR_ISLAND, 3
	warp_event  8,  4, CINNABAR_LAB_TRADE_ROOM, 1
	warp_event 12,  4, CINNABAR_LAB_METRONOME_ROOM, 1
	warp_event 16,  4, CINNABAR_LAB_FOSSIL_ROOM, 1

	def_coord_events

	def_bg_events
	bg_event  3,  2, BGEVENT_READ, CinnabarLab_PhotoScript
	bg_event  9,  4, BGEVENT_READ, CinnabarLab_Sign1Script
	bg_event 13,  4, BGEVENT_READ, CinnabarLab_Sign2Script
	bg_event 17,  4, BGEVENT_READ, CinnabarLab_Sign3Script

	def_object_events
	object_event  1,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarLab_GuyScript, -1
