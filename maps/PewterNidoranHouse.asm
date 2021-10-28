	object_const_def
	const PEWTERNIDORANHOUSE_MONSTER
	const PEWTERNIDORANHOUSE_LITTLE_BOY
	const PEWTERNIDORANHOUSE_POKEFAN_M

PewterNidoranHouse_MapScripts:
	def_scene_scripts

	def_callbacks

PewterNidoranHouse_NidoranScript:
	faceplayer
	opentext
	writetext .Text
	cry NIDORAN_M
	waitbutton
	closetext
	end

.Text:
	text "NIDORAN: Bowbow!"
	done

PewterNidoranHouse_BoyScript:
	jumptextfaceplayer .Text
.Text:
	text "NIDORAN sit!"
	done

PewterNidoranHouse_GuyScript:
	jumptextfaceplayer .Text
.Text:
	text "Our #MON's an"
	line "outsider, so it's"
	cont "hard to handle."

	para "An outsider is a"
	line "#MON that you"
	cont "get in a trade."

	para "It grows fast, but"
	line "it may ignore an"
	cont "unskilled trainer"
	cont "in battle!"

	para "If only we had"
	line "some BADGEs..."
	done


PewterNidoranHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, PEWTER_CITY, 4
	warp_event  3,  7, PEWTER_CITY, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  5, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterNidoranHouse_NidoranScript, -1
	object_event  3,  5, SPRITE_LITTLE_BOY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterNidoranHouse_BoyScript, -1
	object_event  1,  2, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterNidoranHouse_GuyScript, -1
