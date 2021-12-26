	object_const_def
	const PEWTERPOKECENTER_KANTO_NURSE
	const PEWTERPOKECENTER_GENTLEMAN
	const PEWTERPOKECENTER_FAIRY
	const PEWTERPOKECENTER_OLD_LINK_RECEPTIONIST
IF DEF(_GOLD)
	const PEWTERPOKECENTER_COUCH_MAN
ENDC

PewterPokecenter_MapScripts:
	def_scene_scripts

	def_callbacks

PewterPokecenter_NurseScript:
	jumpstd PokecenterKantoNurseScript

PewterPokecenter_ManScript:
	jumptextfaceplayer .Text
.Text:
	text "What!?"

	para "TEAM ROCKET is"
	line "at MT.MOON? Huh?"
	cont "I'm on the phone!"

	para "Scram!"
	done

PewterPokecenter_ClefairyScript:
	faceplayer
	opentext
	writetext .Text
	playmusic MUSIC_NONE
	pause 16
	playmusic MUSIC_RBY_JIGGLYPUFF_SONG
REPT 4
	turnobject PEWTERPOKECENTER_FAIRY, DOWN
	pause 12
	turnobject PEWTERPOKECENTER_FAIRY, LEFT
	pause 12
	turnobject PEWTERPOKECENTER_FAIRY, UP
	pause 12
	turnobject PEWTERPOKECENTER_FAIRY, RIGHT
	pause 12
ENDR
	closetext
	special RestartMapMusic
	end

.Text:
	text "JIGGLYPUFF: Puu"
	line "pupuu!"
	done

PewterPokecenter_ReceptionistScript:
	jumpstd KantoPokecenterLinkReceptionist

PewterPokecenter_BenchGuyScript:
	jumptext .Text
.Text:
	text "Yawn!"

	para "When JIGGLYPUFF"
	line "sings, #MON"
	cont "get drowsy..."

	para "...Me too..."
	line "Snore..."
	done

PewterPokecenter_MapEvents:
	def_warp_events
	warp_event  3,  7, PEWTER_CITY, 7
	warp_event  4,  7, PEWTER_CITY, 7

	def_coord_events

	def_bg_events
	bg_event  0,  4, BGEVENT_LEFT, PewterPokecenter_BenchGuyScript

	def_object_events
	object_event  3,  1, SPRITE_KANTO_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterPokecenter_NurseScript, -1
	object_event 11,  7, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterPokecenter_ManScript, -1
	object_event  1,  3, SPRITE_FAIRY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterPokecenter_ClefairyScript, -1
	object_event 11,  2, SPRITE_OLD_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterPokecenter_ReceptionistScript, -1
IF DEF(_GOLD)
	object_event  0,  4, SPRITE_COUCH_MAN, SPRITEMOVEDATA_COUCH_MAN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DummyScript, -1
ENDC
