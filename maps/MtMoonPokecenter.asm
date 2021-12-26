	object_const_def
	const MTMOONPOKECENTER_KANTO_NURSE
	const MTMOONPOKECENTER_KANTO_YOUNGSTER
	const MTMOONPOKECENTER_GENTLEMAN
	const MTMOONPOKECENTER_POKEFAN_M
	const MTMOONPOKECENTER_CLIPBOARD
	const MTMOONPOKECENTER_OLD_LINK_RECEPTIONIST
IF DEF(_GOLD)
	const MTMOONPOKECENTER_COUCH_MAN
ENDC

MtMoonPokecenter_NurseScript:
	jumpstd PokecenterKantoNurseScript

MtMoonPokecenter_KidScript:
	jumptextfaceplayer .Text
.Text:
	text "I've 6 # BALLs"
	line "set in my belt."

	para "At most, you can"
	line "carry 6 #MON."
	done

MtMoonPokecenter_ManScript:
	jumptextfaceplayer .Text
.Text:
	text "TEAM ROCKET"
	line "attacks CERULEAN"
	cont "citizens..."

	para "TEAM ROCKET is"
	line "always in the"
	cont "news!"
	done

MtMoonPokecenter_SalesmanScript:
	faceplayer
	opentext
	checkevent EVENT_BOUGHT_MAGIKARP
	iftrue .After
	writetext .Text1
	special PlaceMoneyTopRight
	yesorno
	iffalse .SaidNo
	checkmoney YOUR_MONEY, 500
	ifequal HAVE_LESS, .NotEnoughMoney
	takemoney YOUR_MONEY, 500
	special PlaceMoneyTopRight
	writetext .GotItText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	givepoke MAGIKARP, 5
	setevent EVENT_BOUGHT_MAGIKARP
	closetext
	end

.SaidNo:
	writetext .Text2
	waitbutton
	closetext
	end

.NotEnoughMoney:
	writetext .Text3
	waitbutton
	closetext
	end

.After:
	writetext .Text4
	waitbutton
	closetext
	end

.GotItText:
	text "<PLAYER> got"
	line "MAGIKARP!"
	done

.Text1:
	text "MAN: Hello, there!"
	line "Have I got a deal"
	cont "just for you!"

	para "I'll let you have"
	line "a swell MAGIKARP"
	cont "for just ¥500!"
	cont "What do you say?"
	done

.Text2:
	text "No? I'm only"
	line "doing this as a"
	cont "favor to you!"
	done

.Text3:
	text "You'll need more"
	line "money than that!"
	done

.Text4:
	text "MAN: Well, I don't"
	line "give refunds!"
	done

MtMoonPokecenter_ReceptionistScript:
	jumpstd KantoPokecenterLinkReceptionist

MtMoonPokecenter_BenchGuyScript:
	jumptext .Text
.Text:
	text "If you have too"
	line "many #MON, you"
	cont "should store them"
	cont "via PC!"
	done


MtMoonPokecenter_MapScripts:
	def_scene_scripts

	def_callbacks

MtMoonPokecenter_MapEvents:
	def_warp_events
	warp_event  3,  7, ROUTE_4, 1
	warp_event  4,  7, ROUTE_4, 1

	def_coord_events

	def_bg_events
	bg_event  0,  4, BGEVENT_LEFT, MtMoonPokecenter_BenchGuyScript

	def_object_events
	object_event  3,  1, SPRITE_KANTO_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtMoonPokecenter_NurseScript, -1
	object_event  4,  3, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtMoonPokecenter_KidScript, -1
	object_event  7,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtMoonPokecenter_ManScript, -1
	object_event 10,  6, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtMoonPokecenter_SalesmanScript, -1
	object_event  7,  2, SPRITE_CLIPBOARD, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 11,  2, SPRITE_OLD_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtMoonPokecenter_ReceptionistScript, -1
IF DEF(_GOLD)
	object_event  0,  4, SPRITE_COUCH_MAN, SPRITEMOVEDATA_COUCH_MAN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DummyScript, -1
ENDC
