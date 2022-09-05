	object_const_def
	const CELADONCITY_LITTLE_GIRL
	const CELADONCITY_KANTO_GRAMPS1
	const CELADONCITY_GIRL
	const CELADONCITY_KANTO_GRAMPS2
	const CELADONCITY_KANTO_GRAMPS3
	const CELADONCITY_FISHER
	const CELADONCITY_MONSTER
	const CELADONCITY_KANTO_ROCKET1
	const CELADONCITY_KANTO_ROCKET2

CeladonCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_CELADON
	endcallback

CeladonCity_KoffingGirlScript:
	jumptextfaceplayer .Text
.Text:
	text "I got my KOFFING"
	line "in CINNABAR!"

	para "It's nice, but it"
	line "breathes poison"
	cont "when it's angry!"
	done

CeladonCity_PervertScript:
	jumptextfaceplayer .Text
.Text:
	text "Heheh! This GYM"
	line "is great! It's"
	cont "full of women!"
	done

CeladonCity_AntiGamblerGirlScript:
	jumptextfaceplayer .Text
.Text:
	text "The GAME CORNER"
	line "is bad for our"
	cont "city's image!"
	done

CeladonCity_GamblerScript:
	jumptextfaceplayer .Text
.Text:
	text "Moan! I blew it"
	line "all at the slots!"

	para "I knew I should"
	line "have cashed in my"
	cont "coins for prizes!"
	done

CeladonCity_SoftboiledManScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM_SOFTBOILED
	iftrue .After
	writetext .Text1
	waitbutton
IF DEF(_GOLD)
	verbosegiveitem TM_DYNAMICPUNCH
ELIF DEF(_BLUE)
	verbosegiveitem TM_SOFTBOILED
ENDC
	iffalse .BagFull
	setevent EVENT_GOT_TM_SOFTBOILED
.BagFull:
	closetext
	end

.After:
	writetext .Text2
	waitbutton
	closetext
	end

.Text1:
	text "Hello, there!"

	para "I've seen you,"
	line "but I never had a"
	cont "chance to talk!"

	para "Here's a gift for"
	line "dropping by!"
	done

.Text2:
	text "TM41 teaches"
	line "SOFTBOILED!"

	para "Only one #MON"
	line "can use it!"

	para "That #MON is"
	line "CHANSEY!"
	done

CeladonCity_PoliwrathGuyScript:
	jumptextfaceplayer .Text
.Text:
	text "This is my trusted"
	line "pal, POLIWRATH!"

	para "It evolved from"
	line "POLIWHIRL when I"
	cont "used WATER STONE!"
	done

CeladonCity_PoliwrathScript:
	faceplayer
	opentext
	writetext .Text
	cry POLIWRATH
	waitsfx
	closetext
	end

.Text:
	text "POLIWRATH: Ribi"
	line "ribit!"
	done

CeladonCity_Rocket1Script:
	jumptextfaceplayer .Text
.Text:
	text "What are you"
	line "staring at?"
	done

CeladonCity_Rocket2Script:
	jumptextfaceplayer .Text
.Text:
	text "Keep out of TEAM"
	line "ROCKET's way!"
	done

CeladonCity_TrainerTips1Script:
	jumptext .Text
.Text:
	text "TRAINER TIPS"

	para "X ACCURACY boosts"
	line "the accuracy of"
	cont "techniques!"

	para "DIRE HIT jacks up"
	line "the likelihood of"
	cont "critical hits!"

	para "Get your items at"
	line "CELADON DEPT."
	cont "STORE!"
	done

CeladonCity_NameSignScript:
	jumptext .Text
.Text:
	text "CELADON CITY"
	line "The City of"
	cont "Rainbow Dreams"
	done

CeladonCity_PMCSignScript:
	jumptext .Text
.Text:
	text "Heal your #MON!"
	line "#MON CENTER"
	done

CeladonCity_GymSignScript:
	jumptext .Text
.Text:
	text "CELADON CITY"
	line "#MON GYM"
	cont "LEADER: ERIKA"

	para "The Nature Loving"
	line "Princess!"
	done

CeladonCity_MansionSignScript:
	jumptext .Text
.Text:
	text "CELADON MANSION"
	done

CeladonCity_DeptStoreSignScript:
	jumptext .Text
.Text:
	text "Find what you"
	line "need at CELADON"
	cont "DEPT. STORE!"
	done

CeladonCity_TrainerTips2Script:
	jumptext .Text
.Text:
	text "TRAINER TIPS"

	para "GUARD SPEC."
	line "protects #MON"
	cont "against SPECIAL"
	cont "attacks such as"
	cont "fire and water!"

	para "Get your items at"
	line "CELADON DEPT."
	cont "STORE!"
	done

CeladonCity_PrizeExchangeSignScript:
	jumptext .Text
.Text:
	text "Coins exchanged"
	line "for prizes!"
	cont "PRIZE EXCHANGE"
	done

CeladonCity_GameCornerSignScript:
	jumptext .Text
.Text:
	text "ROCKET GAME CORNER"
	line "The playground"
	cont "for grown-ups!"
	done

CeladonCity_HiddenPPUp:
	hiddenitem PP_UP, EVENT_CELADON_CITY_HIDDEN_PP_UP

CeladonCity_MapEvents:
	def_warp_events
	warp_event  8, 13, CELADON_MART_1F, 1
	warp_event 10, 13, CELADON_MART_1F, 3
	warp_event 24,  9, CELADON_MANSION_1F, 1
	warp_event 24,  3, CELADON_MANSION_1F, 3
	warp_event 25,  3, CELADON_MANSION_1F, 3
	warp_event 41,  9, CELADON_POKECENTER, 1
	warp_event 12, 27, CELADON_GYM, 1
	warp_event 28, 19, GAME_CORNER, 1
	warp_event 39, 19, CELADON_MART_5F, 1 ; beta warp_event! no longer used
	warp_event 33, 19, GAME_CORNER_PRIZE_ROOM, 1
	warp_event 31, 27, CELADON_DINER, 1
	warp_event 35, 27, CELADON_CHIEF_HOUSE, 1
	warp_event 43, 27, CELADON_HOTEL, 1

	def_coord_events

	def_bg_events
	bg_event 27, 15, BGEVENT_READ, CeladonCity_TrainerTips1Script
	bg_event 19, 15, BGEVENT_READ, CeladonCity_NameSignScript
	bg_event 42,  9, BGEVENT_READ, CeladonCity_PMCSignScript
	bg_event 13, 29, BGEVENT_READ, CeladonCity_GymSignScript
	bg_event 21,  9, BGEVENT_READ, CeladonCity_MansionSignScript
	bg_event 12, 13, BGEVENT_READ, CeladonCity_DeptStoreSignScript
	bg_event 39, 21, BGEVENT_READ, CeladonCity_TrainerTips2Script
	bg_event 33, 21, BGEVENT_READ, CeladonCity_PrizeExchangeSignScript
	bg_event 27, 21, BGEVENT_READ, CeladonCity_GameCornerSignScript
	bg_event 48, 15, BGEVENT_ITEM, CeladonCity_HiddenPPUp

	def_object_events
	object_event  8, 17, SPRITE_LITTLE_GIRL, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonCity_KoffingGirlScript, -1
	object_event 11, 28, SPRITE_KANTO_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonCity_PervertScript, -1
	object_event 14, 19, SPRITE_GIRL, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonCity_AntiGamblerGirlScript, -1
	object_event 25, 22, SPRITE_KANTO_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonCity_GamblerScript, -1
	object_event 22, 16, SPRITE_KANTO_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonCity_SoftboiledManScript, -1
	object_event 32, 12, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonCity_PoliwrathGuyScript, -1
	object_event 30, 12, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonCity_PoliwrathScript, -1
	object_event 32, 29, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonCity_Rocket1Script, -1
	object_event 42, 14, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonCity_Rocket2Script, -1
