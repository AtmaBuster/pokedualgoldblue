	object_const_def
	const CELADONMART3F_KANTO_CLERK
	const CELADONMART3F_GAMEBOY_KID1
	const CELADONMART3F_GAMEBOY_KID2
	const CELADONMART3F_GAMEBOY_KID3
	const CELADONMART3F_LITTLE_BOY

CeladonMart3F_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonMart3F_CounterGuyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM_COUNTER
	iftrue .After
	writetext .Text1
	waitbutton
IF DEF(_GOLD)
	verbosegiveitem TM_DYNAMICPUNCH
ELIF DEF(_BLUE)
	verbosegiveitem TM_COUNTER
ENDC
	iffalse .BagFull
	setevent EVENT_GOT_TM_COUNTER
.BagFull:
	closetext
	end

.After:
	writetext .Text2
	waitbutton
	closetext
	end

.Text1:
	text "Oh, hi! I finally"
	line "finished #MON!"

	para "Not done yet?"
	line "This might be"
	cont "useful!"
	done

.Text2:
	text "TM18 is COUNTER!"
	line "Not like the one"
	cont "I'm leaning on,"
	cont "mind you!"
	done

CeladonMart3F_OTKidScript:
	jumptextfaceplayer .Text
.Text:
	text "Captured #MON"
	line "are registered"
	cont "with an ID No."
	cont "and OT, the name"
	cont "of the Original"
	cont "Trainer that"
	cont "caught it!"
	done

CeladonMart3F_GravelerSenderScript:
	jumptextfaceplayer .Text
.Text:
	text "All right!"

	para "My buddy's going"
	line "to trade me his"
	cont "KANGASKHAN for my"
	cont "GRAVELER!"
	done

CeladonMart3F_GolemGetterScript:
	jumptextfaceplayer .Text
.Text:
	text "Come on GRAVELER!"

	para "I love GRAVELER!"
	line "I collect them!"

	para "Huh?"

	para "GRAVELER turned"
	line "into a different"
	cont "#MON!"
	done

CeladonMart3F_IDNumberKidScript:
	jumptextfaceplayer .Text
.Text:
	text "You can identify"
	line "#MON you got"
	cont "in trades by"
	cont "their ID Numbers!"
	done

CeladonMart3F_SNESScript:
	jumptext .Text
.Text:
	text "It's an SNES!"
	done

CeladonMart3F_RPGScript:
	jumptext .Text
.Text:
	text "An RPG! There's"
	line "no time for that!"
	done

CeladonMart3F_SportsGameScript:
	jumptext .Text
.Text:
	text "A sports game!"
	line "Dad'll like that!"
	done

CeladonMart3F_PuzzleGameScript:
	jumptext .Text
.Text:
	text "A puzzle game!"
	line "Looks addictive!"
	done

CeladonMart3F_FightingGameScript:
	jumptext .Text
.Text:
	text "A fighting game!"
	line "Looks tough!"
	done

CeladonMart3F_SignScript:
	jumptext .Text
.Text:
	text "3F: TV GAME SHOP"
	done

CeladonMart3F_RedBlueScript:
	jumptext .Text
.Text:
	text "Red and Blue!"
	line "Both are #MON!"
	done

CeladonMart3F_MapEvents:
	def_warp_events
	warp_event 12,  1, CELADON_MART_4F, 1
	warp_event 16,  1, CELADON_MART_2F, 2
	warp_event  1,  1, CELADON_MART_ELEVATOR, 1

	def_coord_events

	def_bg_events
	bg_event  2,  4, BGEVENT_READ, CeladonMart3F_SNESScript
	bg_event  3,  4, BGEVENT_READ, CeladonMart3F_RPGScript
	bg_event  5,  4, BGEVENT_READ, CeladonMart3F_SNESScript
	bg_event  6,  4, BGEVENT_READ, CeladonMart3F_SportsGameScript
	bg_event  2,  6, BGEVENT_READ, CeladonMart3F_SNESScript
	bg_event  3,  6, BGEVENT_READ, CeladonMart3F_PuzzleGameScript
	bg_event  5,  6, BGEVENT_READ, CeladonMart3F_SNESScript
	bg_event  6,  6, BGEVENT_READ, CeladonMart3F_FightingGameScript
	bg_event 14,  1, BGEVENT_READ, CeladonMart3F_SignScript
	bg_event  4,  1, BGEVENT_READ, CeladonMart3F_RedBlueScript
	bg_event  6,  1, BGEVENT_READ, CeladonMart3F_RedBlueScript
	bg_event 10,  1, BGEVENT_READ, CeladonMart3F_RedBlueScript

	def_object_events
	object_event 16,  5, SPRITE_KANTO_CLERK, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonMart3F_CounterGuyScript, -1
	object_event 11,  6, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonMart3F_OTKidScript, -1
	object_event  7,  2, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonMart3F_GravelerSenderScript, -1
	object_event  8,  2, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonMart3F_GolemGetterScript, -1
	object_event  2,  5, SPRITE_LITTLE_BOY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonMart3F_IDNumberKidScript, -1
