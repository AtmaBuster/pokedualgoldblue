	object_const_def
	const VIRIDIANSCHOOLHOUSE_BRUNETTE_GIRL
	const VIRIDIANSCHOOLHOUSE_COOLTRAINER_F

ViridianSchoolHouse_MapScripts:
	def_scene_scripts

	def_callbacks

ViridianSchoolHouse_BlackboardScript:
	opentext
	writetext .BlackboardText1
.Loop:
	writetext .BlackboardText2
	loadmenu .BlackboardMenuHeader
	_2dmenu
	closewindow
	ifequal 1, .Sleep
	ifequal 2, .Burn
	ifequal 3, .Poison
	ifequal 4, .Freeze
	ifequal 5, .Paralysis
	closetext
	end

.Poison:
	writetext .BlackboardPoisonText
	sjump .Loop

.Paralysis:
	writetext .BlackboardParalysisText
	sjump .Loop

.Sleep:
	writetext .BlackboardSleepText
	sjump .Loop

.Burn:
	writetext .BlackboardBurnText
	sjump .Loop

.Freeze:
	writetext .BlackboardFreezeText
	sjump .Loop

.BlackboardMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 11, 8
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	dn 3, 2 ; rows, columns
	db 5 ; spacing
	dba .Text
	dbw BANK(@), NULL

.Text:
	db "SLP@"
	db "BRN@"
	db "PSN@"
	db "FRZ@"
	db "PAR@"
	db "QUIT@"

.BlackboardText1:
	text "The blackboard"
	line "describes #MON"
	cont "STATUS changes"
	cont "during battles."
	prompt

.BlackboardText2:
	text "Which heading do"
	line "you want to read?"
	done

.BlackboardSleepText:
	text "A #MON can't"
	line "attack if it's"
	cont "asleep!"

	para "#MON will stay"
	line "asleep even after"
	cont "battles."

	para "Use AWAKENING to"
	line "wake them up!"
	prompt

.BlackboardPoisonText:
	text "When poisoned, a"
	line "#MON's health"
	cont "steadily drops."

	para "Poison lingers"
	line "after battles."

	para "Use an ANTIDOTE"
	line "to cure poison!"
	prompt

.BlackboardParalysisText:
	text "Paralysis could"
	line "make #MON"
	cont "moves misfire!"

	para "Paralysis remains"
	line "after battles."

	para "Use PARLYZ HEAL"
	line "for treatment!"
	prompt

.BlackboardBurnText:
	text "A burn reduces"
	line "power and speed."
	cont "It also causes"
	cont "ongoing damage."

	para "Burns remain"
	line "after battles."

	para "Use BURN HEAL to"
	line "cure a burn!"
	prompt

.BlackboardFreezeText:
	text "If frozen, a"
	line "#MON becomes"
	cont "totally immobile!"

	para "It stays frozen"
	line "even after the"
	cont "battle ends."

	para "Use ICE HEAL to"
	line "thaw out #MON!"
	prompt

ViridianSchoolHouse_StudentScript:
	jumptextfaceplayer .Text
.Text:
	text "Whew! I'm trying"
	line "to memorize all"
	cont "my notes."
	done

ViridianSchoolHouse_TeacherScript:
	jumptextfaceplayer .Text
.Text:
	text "Okay!"

	para "Be sure to read"
	line "the blackboard"
	cont "carefully!"
	done

ViridianSchoolHouse_NotebookScript:
	opentext
	writetext .Text1
	scall .AskTurnPage
	iffalse .DoneReading
	writetext .Text2
	scall .AskTurnPage
	iffalse .DoneReading
	writetext .Text3
	scall .AskTurnPage
	iffalse .DoneReading
	writetext .Text4
	writetext .Text5
	waitbutton
.DoneReading:
	closetext
	end

.AskTurnPage:
	writetext .TurnPageText
	yesorno
	end

.Text1:
	text "Looked at the"
	line "notebook!"

	para "First page..."

	para "# BALLs are"
	line "used to catch"
	cont "#MON."

	para "Up to 6 #MON"
	line "can be carried."

	para "People who raise"
	line "and make #MON"
	cont "fight are called"
	cont "#MON trainers."
	prompt

.Text2:
	text "Second page..."

	para "A healthy #MON"
	line "may be hard to"
	cont "catch, so weaken"
	cont "it first!"

	para "Poison, burns and"
	line "other damage are"
	cont "effective!"
	prompt

.Text3:
	text "Third page..."

	para "#MON trainers"
	line "seek others to"
	cont "engage in #MON"
	cont "fights."

	para "Battles are"
	line "constantly fought"
	cont "at #MON GYMs."
	prompt

.Text4:
	text "Fourth page..."

	para "The goal for"
	line "#MON trainers"
	cont "is to beat the "
	cont "top 8 #MON"
	cont "GYM LEADERs."

	para "Do so to earn the"
	line "right to face..."

	para "The ELITE FOUR of"
	line "#MON LEAGUE!"
	prompt

.Text5:
	text "GIRL: Hey! Don't"
	line "look at my notes!"
	done

.TurnPageText:
	text "Turn the page?"
	done

ViridianSchoolHouse_MapEvents:
	def_warp_events
	warp_event  2,  7, VIRIDIAN_CITY, 3
	warp_event  3,  7, VIRIDIAN_CITY, 3

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_READ, ViridianSchoolHouse_BlackboardScript
	bg_event  3,  4, BGEVENT_READ, ViridianSchoolHouse_NotebookScript

	def_object_events
	object_event  3,  5, SPRITE_BRUNETTE_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianSchoolHouse_StudentScript, -1
	object_event  4,  1, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianSchoolHouse_TeacherScript, -1
