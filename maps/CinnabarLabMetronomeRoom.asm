	object_const_def
	const CINNABARLABMETRONOMEROOM_KANTO_SCIENTIST1
	const CINNABARLABMETRONOMEROOM_KANTO_SCIENTIST2

CinnabarLabMetronomeRoom_MapScripts:
	def_scene_scripts

	def_callbacks

CinnabarLabMetronomeRoom_MetronomeGuyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM_METRONOME
	iftrue .After
	writetext .Text1
	waitbutton
IF DEF(_GOLD)
	verbosegiveitem TM_DYNAMICPUNCH
ELIF DEF(_BLUE)
	verbosegiveitem TM_METRONOME
ENDC
	iffalse .BagFull
	setevent EVENT_GOT_TM_METRONOME
.BagFull:
	closetext
	end

.After:
	writetext .Text2
	waitbutton
	closetext
	end

.Text1:
	text "Tch-tch-tch!"
	line "I made a cool TM!"

	para "It can cause all"
	line "kinds of fun!"
	done

.Text2:
	text "Tch-tch-tch!"
	line "That's the sound"
	cont "of a METRONOME!"

	para "It tweaks your"
	line "#MON's brain"
	cont "into using moves"
	cont "it doesn't know!"
	done

CinnabarLabMetronomeRoom_EeveeGuyScript:
	jumptextfaceplayer .Text
.Text:
	text "EEVEE can evolve"
	line "into 1 of 3 kinds"
	cont "of #MON."
	done

CinnabarLabMetronomeRoom_EMailScript:
	jumptext .Text
.Text:
	text "There's an e-mail"
	line "message!"

	para "..."

	para "The 3 legendary"
	line "bird #MON are"
	cont "ARTICUNO, ZAPDOS"
	cont "and MOLTRES."

	para "Their whereabouts"
	line "are unknown."

	para "We plan to explore"
	line "the cavern close"
	cont "to CERULEAN."

	para "From: #MON"
	line "RESEARCH TEAM"

	para "..."
	done

CinnabarLabMetronomeRoom_PipeScript:
	jumptext .Text
.Text:
	text "An amber pipe!"
	done

CinnabarLabMetronomeRoom_MapEvents:
	def_warp_events
	warp_event  2,  7, CINNABAR_LAB, 4
	warp_event  3,  7, CINNABAR_LAB, 4

	def_coord_events

	def_bg_events
	bg_event  0,  4, BGEVENT_READ, CinnabarLabMetronomeRoom_EMailScript
	bg_event  1,  4, BGEVENT_READ, CinnabarLabMetronomeRoom_EMailScript
	bg_event  2,  1, BGEVENT_READ, CinnabarLabMetronomeRoom_PipeScript

	def_object_events
	object_event  7,  2, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarLabMetronomeRoom_MetronomeGuyScript, -1
	object_event  2,  3, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarLabMetronomeRoom_EeveeGuyScript, -1
