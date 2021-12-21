	object_const_def
	const MRPSYCHICSHOUSE_FISHING_GURU

MrPsychicsHouse_MapScripts:
	def_scene_scripts

	def_callbacks

MrPsychicsHouse_MrPsychicScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM_PSYCHIC
	iftrue .After
	writetext .Text1
	waitbutton
	verbosegiveitem TM_PSYCHIC_M
	iffalse .BagFull
	setevent EVENT_GOT_TM_PSYCHIC
.BagFull:
	closetext
	end

.After:
	writetext .Text2
	waitbutton
	closetext
	end

.Text1:
	text "...Wait! Don't"
	line "say a word!"

	para "You wanted this!"
	done

.Text2:
	text "TM29 is PSYCHIC!"

	para "It can lower the"
	line "target's SPECIAL"
	cont "abilities."
	done

MrPsychicsHouse_MapEvents:
	def_warp_events
	warp_event  2,  7, SAFFRON_CITY, 8
	warp_event  3,  7, SAFFRON_CITY, 8

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MrPsychicsHouse_MrPsychicScript, -1
