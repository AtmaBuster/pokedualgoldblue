	object_const_def
	const CERULEANTRASHEDHOUSE_FISHING_GURU
	const CERULEANTRASHEDHOUSE_GIRL

CeruleanTrashedHouse_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanTrashedHouse_ManScript:
	faceplayer
	opentext
	checkitem TM_DIG
	iftrue .HaveDig
	writetext .Text1
	waitbutton
	closetext
	end

.HaveDig:
	writetext .Text2
	waitbutton
	closetext
	end

.Text1:
	text "Those miserable"
	line "ROCKETs!"

	para "Look what they"
	line "did here!"

	para "They stole a TM"
	line "for teaching"
	cont "#MON how to"
	cont "DIG holes!"

	para "That cost me a"
	line "bundle, it did!"
	done

.Text2:
	text "I figure what's"
	line "lost is lost!"

	para "I decided to teach"
	line "DIGLETT how to"
	cont "DIG without a TM!"
	done

CeruleanTrashedHouse_GirlScript:
	jumptextfaceplayer .Text
.Text:
	text "TEAM ROCKET must"
	line "be trying to DIG"
	cont "their way into no"
	cont "good!"
	done

CeruleanTrashedHouse_HoleScript:
	jumptext .Text
.Text:
	text "TEAM ROCKET left"
	line "a way out!"
	done

CeruleanTrashedHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CERULEAN_CITY, 1
	warp_event  3,  7, CERULEAN_CITY, 1
	warp_event  3,  0, CERULEAN_CITY, 8

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_READ, CeruleanTrashedHouse_HoleScript

	def_object_events
	object_event  2,  1, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanTrashedHouse_ManScript, -1
	object_event  5,  6, SPRITE_GIRL, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanTrashedHouse_GirlScript, -1
