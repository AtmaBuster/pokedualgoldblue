	object_const_def
	const ROUTE12GATE2F_BRUNETTE_GIRL

Route12Gate2F_MapScripts:
	def_scene_scripts

	def_callbacks

Route12Gate2F_SwiftGirlScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM_SWIFT
	iftrue .GotSwift
	writetext .HaveThisText
	waitbutton
	verbosegiveitem TM_SWIFT
	iffalse .BagFull
	setevent EVENT_GOT_TM_SWIFT
.GotSwift:
	writetext .TMText
	waitbutton
.BagFull:
	closetext
	end

.HaveThisText:
	text "My #MON's"
	line "ashes are stored"
	cont "in #MON TOWER."

	para "You can have this"
	line "TM. I don't need"
	cont "it any more..."
	done

.TMText:
	text "TM39 is a move"
	line "called SWIFT."

	para "It's very accurate,"
	line "so use it during"
	cont "battles you can't"
	cont "afford to lose."
	done

Route12Gate2F_BinocularsLeftScript:
	jumptext .Text
.Text:
	text "Looked into the"
	line "binoculars."

	para "A man fishing!"
	done

Route12Gate2F_BinocularsRightScript:
	jumptext .Text
.Text:
	text "Looked into the"
	line "binoculars."

	para "It's #MON TOWER!"
	done


Route12Gate2F_MapEvents:
	def_warp_events
	warp_event  7,  7, ROUTE_12_GATE_1F, 5

	def_coord_events

	def_bg_events
	bg_event  1,  2, BGEVENT_UP, Route12Gate2F_BinocularsLeftScript
	bg_event  6,  2, BGEVENT_UP, Route12Gate2F_BinocularsRightScript

	def_object_events
	object_event  3,  4, SPRITE_BRUNETTE_GIRL, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route12Gate2F_SwiftGirlScript, -1
