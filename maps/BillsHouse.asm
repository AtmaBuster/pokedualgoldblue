	object_const_def
	const BILLSHOUSE_MONSTER
	const BILLSHOUSE_KANTO_SUPER_NERD1
	const BILLSHOUSE_KANTO_SUPER_NERD2

BillsHouse_MapScripts:
	def_scene_scripts

	def_callbacks

BillsHouse_PCScript:
	opentext
	checkevent EVENT_LEFT_BILLS_HOUSE_AFTER_HELPING
	iftrue .ShowMonList
	checkevent EVENT_BILL_ENTERED_TELEPORTER
	iftrue .DoCellSeparator
	writetext .MonitorText
	waitbutton
	closetext
	end

.DoCellSeparator:
	writetext .InitiatedText
	promptbutton
	closetext
	playmusic MUSIC_NONE
	pause 8
	playsound SFX_PUSH_BUTTON
	waitsfx
	pause 46
	playsound SFX_POKEBALLS_PLACED_ON_TABLE
	waitsfx
	pause 40
	playsound SFX_ESCAPE_ROPE
	waitsfx
	pause 24
	playsound SFX_POKEBALLS_PLACED_ON_TABLE
	waitsfx
	pause 16
	playsound SFX_DEX_FANFARE_50_79
	waitsfx
	special RestartMapMusic
	moveobject BILLSHOUSE_KANTO_SUPER_NERD1, 1, 2
	appear BILLSHOUSE_KANTO_SUPER_NERD1
	applymovement BILLSHOUSE_KANTO_SUPER_NERD1, .ExitTeleporterMovement
	setevent EVENT_HELPED_BILL
	clearevent EVENT_BILL_ENTERED_TELEPORTER
	end

.ShowMonList:
	writetext .FavoriteMonListText
	promptbutton
.ShowMonListLoop:
	writetext .WhichMonText
	loadmenu .MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .Eevee
	ifequal 2, .Flareon
	ifequal 3, .Jolteon
	ifequal 4, .Vaporeon
	closetext
	end

.Eevee:
	closetext
	pokepic EEVEE
	cry EEVEE
	waitbutton
	closepokepic
	opentext
	sjump .ShowMonListLoop

.Flareon:
	closetext
	pokepic FLAREON
	cry FLAREON
	waitbutton
	closepokepic
	opentext
	sjump .ShowMonListLoop

.Jolteon:
	closetext
	pokepic JOLTEON
	cry JOLTEON
	waitbutton
	closepokepic
	opentext
	sjump .ShowMonListLoop

.Vaporeon:
	closetext
	pokepic VAPOREON
	cry VAPOREON
	waitbutton
	closepokepic
	opentext
	sjump .ShowMonListLoop

.MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 10, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default ooption

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 5 ; items
	db "EEVEE@"
	db "FLAREON@"
	db "JOLTEON@"
	db "VAPOREON@"
	db "CANCEL@"

.MonitorText:
	text "TELEPORTER is"
	line "displayed on the"
	cont "PC monitor."
	done

.InitiatedText:
	text "<PLAYER> initiated"
	line "TELEPORTER's Cell"
	cont "Separator!"
	done

.FavoriteMonListText:
	text "BILL's favorite"
	line "#MON list!"
	done

.WhichMonText:
	text "Which #MON do"
	line "you want to see?"
	done

.ExitTeleporterMovement:
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step_end

BillsHouse_BillMonsterScript:
	faceplayer
	opentext
	writetext .HelpMeText
	yesorno
	iftrue .SaidYes
	writetext .ComeOnText
	promptbutton
.SaidYes:
	writetext .RunCellSeparationText
	waitbutton
	closetext
	applymovement BILLSHOUSE_MONSTER, .EnterTeleporterMovement
	disappear BILLSHOUSE_MONSTER
	setevent EVENT_BILL_ENTERED_TELEPORTER
	end

.HelpMeText:
	text "Hiya! I'm a"
	line "#MON..."
	cont "...No I'm not!"

	para "Call me BILL!"
	line "I'm a true blue"
	cont "#MANIAC! Hey!"
	cont "What's with that"
	cont "skeptical look?"

	para "I'm not joshing"
	line "you, I screwed up"
	cont "an experiment and"
	cont "got combined with"
	cont "a #MON!"

	para "So, how about it?"
	line "Help me out here!"
	done

.ComeOnText:
	text "No!? Come on, you"
	line "gotta help a guy"
	cont "in deep trouble!"

	para "What do you say,"
	line "chief? Please?"
	cont "OK? All right!"
	done

.RunCellSeparationText:
	text "When I'm in the"
	line "TELEPORTER, go to"
	cont "my PC and run the"
	cont "Cell Separation"
	cont "System!"
	done

.EnterTeleporterMovement:
	step UP
	step UP
	step UP
	step_end

BillsHouse_Bill1Script:
	faceplayer
	opentext
	checkevent EVENT_GOT_SS_TICKET
	iftrue .GotTicket
	writetext .ThanksText
	promptbutton
	verbosegiveitem S_S_TICKET
	iffalse .End
	setevent EVENT_GOT_SS_TICKET
	setevent EVENT_CERULEAN_CITY_GUARD2
	clearevent EVENT_CERULEAN_CITY_GUARD1
.GotTicket:
	writetext .SSAnneText
	waitbutton
.End:
	closetext
	end

.ThanksText:
	text "BILL: Yeehah!"
	line "Thanks, bud! I"
	cont "owe you one!"

	para "So, did you come"
	line "to see my #MON"
	cont "collection?"
	cont "You didn't?"
	cont "That's a bummer."

	para "I've got to thank"
	line "you... Oh here,"
	cont "maybe this'll do."
	done

.SSAnneText:
	text "That cruise ship,"
	line "S.S.ANNE, is in"
	cont "VERMILION CITY."
	cont "Its passengers"
	cont "are all trainers!"

	para "They invited me"
	line "to their party,"
	cont "but I can't stand"
	cont "fancy do's. Why"
	cont "don't you go"
	cont "instead of me?"
	done

BillsHouse_Bill2Script:
	jumptextfaceplayer .Text
.Text:
	text "BILL: Look, bud,"
	line "just check out"
	cont "some of my rare"
	cont "#MON on my PC!"
	done

BillsHouse_MapEvents:
	def_warp_events
	warp_event  2,  7, ROUTE_25, 1
	warp_event  3,  7, ROUTE_25, 1

	def_coord_events

	def_bg_events
	bg_event  1,  4, BGEVENT_UP, BillsHouse_PCScript

	def_object_events
	object_event  6,  5, SPRITE_MONSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BillsHouse_BillMonsterScript, EVENT_BILLS_HOUSE_MONSTER
	object_event  4,  4, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BillsHouse_Bill1Script, EVENT_BILLS_HOUSE_BILL1
	object_event  6,  5, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BillsHouse_Bill2Script, EVENT_BILLS_HOUSE_BILL2
