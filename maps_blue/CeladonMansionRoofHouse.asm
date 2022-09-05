	object_const_def
	const CELADONMANSIONROOFHOUSE_HIKER
	const CELADONMANSIONROOFHOUSE_POKE_BALL

CeladonMansionRoofHouse_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonMansionRoofHouse_GuyScript:
	jumptextfaceplayer .Text
.Text:
	text "I know everything"
	line "about the world"
	cont "of #MON in"
	cont "your GAME BOY!"

	para "Get together with"
	line "your friends and"
	cont "trade #MON!"
	done

CeladonMansionRoofHouse_EeveeBallScript:
	opentext
	writetext .Text
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke EEVEE, 25
	closetext
	disappear CELADONMANSIONROOFHOUSE_POKE_BALL
	end

.Text:
	text "<PLAYER> got"
	line "EEVEE!"
	done

CeladonMansionRoofHouse_LinkHelpScript:
	opentext
	writetext .Text1
.Loop:
	writetext .Text2
	loadmenu .BlackboardMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .HowToLink
	ifequal 2, .Colosseum
	ifequal 3, .TradeCenter
	closetext
	end

.HowToLink:
	writetext .HowToLinkText
	sjump .Loop

.Colosseum:
	writetext .ColosseumText
	sjump .Loop

.TradeCenter:
	writetext .TradeCenterText
	sjump .Loop

.Text1:
	text "TRAINER TIPS"

	para "Using a Game Link"
	line "Cable"
	prompt

.Text2:
	text "Which heading do"
	line "you want to read?"
	done

.HowToLinkText:
	text "When you have"
	line "linked your GAME"
	cont "BOY with another"
	cont "GAME BOY, talk to"
	cont "the attendant on"
	cont "the right in any"
	cont "#MON CENTER."
	prompt

.ColosseumText:
	text "COLOSSEUM lets"
	line "you play against"
	cont "a friend."
	prompt

.TradeCenterText:
	text "TRADE CENTER is"
	line "used for trading"
	cont "#MON."
	prompt

.BlackboardMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 14, 10
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "HOW TO LINK@"
	db "COLOSSEUM@"
	db "TRADE CENTER@"
	db "STOP READING@"

CeladonMansionRoofHouse_TMBookScript:
	jumptext .Text
.Text:
	text "It's a pamphlet"
	line "on TMs."

	para "..."

	para "There are 50 TMs"
	line "in all."

	para "There are also 5"
	line "HMs that can be"
	cont "used repeatedly."

	para "SILPH CO."
	done

CeladonMansionRoofHouse_MapEvents:
	def_warp_events
	warp_event  2,  7, CELADON_MANSION_ROOF, 3
	warp_event  3,  7, CELADON_MANSION_ROOF, 3

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_READ, CeladonMansionRoofHouse_LinkHelpScript
	bg_event  4,  0, BGEVENT_READ, CeladonMansionRoofHouse_LinkHelpScript
	bg_event  3,  4, BGEVENT_READ, CeladonMansionRoofHouse_TMBookScript

	def_object_events
	object_event  2,  2, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonMansionRoofHouse_GuyScript, -1
	object_event  4,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonMansionRoofHouse_EeveeBallScript, EVENT_CELADON_MANSION_ROOF_HOUSE_EEVEE
