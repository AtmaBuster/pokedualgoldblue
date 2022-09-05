	object_const_def
	const GAMECORNER_KANTO_BEAUTY1
	const GAMECORNER_KANTO_CLERK1
	const GAMECORNER_POKEFAN_M
	const GAMECORNER_KANTO_BEAUTY2
	const GAMECORNER_FISHING_GURU
	const GAMECORNER_MIDDLE_AGED_WOMAN
	const GAMECORNER_KANTO_GYM_GUIDE
	const GAMECORNER_GAMBLER
	const GAMECORNER_KANTO_CLERK2
	const GAMECORNER_GENTLEMAN
	const GAMECORNER_KANTO_ROCKET

GameCorner_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, .Staircase

.Staircase:
	checkevent EVENT_GAME_CORNER_OPENED_STAIRS
	iftrue .KeepOpen
	changeblock 16, 4, $2a ; wall
.KeepOpen:
	endcallback

GameCorner_PrizeGirlScript:
	jumptextfaceplayer .Text
.Text:
	text "Welcome!"

	para "You can exchange"
	line "your coins for"
	cont "fabulous prizes"
	cont "next door."
	done

GameCorner_CoinExchangeClerkScript:
	jumpstd GameCornerCoinVendorScript

GameCorner_RumorGuyScript:
	jumptextfaceplayer .Text
.Text:
	text "Keep this quiet."

	para "It's rumored that"
	line "this place is run"
	cont "by TEAM ROCKET."
	done

GameCorner_DifferentOddsWomanScript:
	jumptextfaceplayer .Text
.Text:
	text "I think these"
	line "machines have"
	cont "different odds."
	done

GameCorner_10CoinGuyGcript:
	faceplayer
	opentext
	checkevent EVENT_GAME_CORNER_GOT_10_COINS_FROM_MAN
	iftrue .After
	writetext .GiveCoinsText
	checkitem COIN_CASE
	iffalse GameCorner_NoCoinCase
	checkcoins MAX_COINS - 10
	ifequal HAVE_MORE, .TooManyCoins
	givecoins 10
	setevent EVENT_GAME_CORNER_GOT_10_COINS_FROM_MAN
	setval 10
	writetext GameCorner_GotCoinsText
	playsound SFX_ITEM
	waitsfx
	closetext
	end

.After:
	writetext .AfterText
	waitbutton
	closetext
	end

.TooManyCoins:
	writetext .TooManyCoinsText
	waitbutton
	closetext
	end

.GiveCoinsText:
	text "Kid, do you want"
	line "to play?"
	prompt

.AfterText:
	text "Wins seem to come"
	line "and go."
	done

.TooManyCoinsText:
	text "You don't need my"
	line "coins!"
	done

GameCorner_NoCoinCase:
	writetext .Text
	waitbutton
	closetext
	end

.Text:
	text "Oops! Forgot the"
	line "COIN CASE!"
	done

GameCorner_GotCoinsText:
	text "<PLAYER> received"
	line "@"
	text_decimal wScriptVar, 1, 2
	text " coins!"
	done

GameCorner_WonderfulTimeScript:
	jumptextfaceplayer .Text
.Text:
	text "I'm having a"
	line "wonderful time!"
	done

GameCorner_GymGuyScript:
	faceplayer
	opentext
	checkflag ENGINE_RAINBOWBADGE
	iftrue .HaveBadge
	writetext .AdviceText
	waitbutton
	closetext
	end

.HaveBadge:
	writetext .DoneText
	waitbutton
	closetext
	end

.AdviceText:
	text "Hey!"

	para "You have better"
	line "things to do,"
	cont "champ in making!"

	para "CELADON GYM's"
	line "LEADER is ERIKA!"
	cont "She uses grass-"
	cont "type #MON!"

	para "She might appear"
	line "docile, but don't"
	cont "be fooled!"
	done

.DoneText:
	text "They offer rare"
	line "#MON that can"
	cont "be exchanged for"
	cont "your coins."

	para "But, I just can't"
	line "seem to win!"
	done

GameCorner_ScaryGuyScript:
	jumptextfaceplayer .Text
.Text:
	text "Games are scary!"
	line "It's so easy to"
	cont "get hooked!"
	done

GameCorner_20CoinGuy1Script:
	faceplayer
	opentext
	checkevent EVENT_GAME_CORNER_GOT_20_COINS_FROM_MAN1
	iftrue .After
	writetext .GiveCoinsText
	checkitem COIN_CASE
	iffalse GameCorner_NoCoinCase
	checkcoins MAX_COINS - 20
	ifequal HAVE_MORE, .TooManyCoins
	givecoins 20
	setevent EVENT_GAME_CORNER_GOT_20_COINS_FROM_MAN1
	setval 20
	writetext GameCorner_GotCoinsText
	playsound SFX_ITEM
	waitsfx
	closetext
	end

.After:
	writetext .AfterText
	waitbutton
	closetext
	end

.TooManyCoins:
	writetext .TooManyCoinsText
	waitbutton
	closetext
	end

.GiveCoinsText:
	text "What's up? Want"
	line "some coins?"
	prompt

.AfterText:
	text "Darn! I need more"
	line "coins for the"
	cont "#MON I want!"
	done

.TooManyCoinsText:
	text "You have lots of"
	line "coins!"
	done

GameCorner_20CoinGuy2Script:
	faceplayer
	opentext
	checkevent EVENT_GAME_CORNER_GOT_20_COINS_FROM_MAN2
	iftrue .After
	writetext .GiveCoinsText
	checkitem COIN_CASE
	iffalse GameCorner_NoCoinCase
	checkcoins MAX_COINS - 20
	ifequal HAVE_MORE, .TooManyCoins
	givecoins 20
	setevent EVENT_GAME_CORNER_GOT_20_COINS_FROM_MAN2
	setval 20
	writetext GameCorner_GotCoinsText
	playsound SFX_ITEM
	waitsfx
	closetext
	end

.After:
	writetext .AfterText
	waitbutton
	closetext
	end

.TooManyCoins:
	writetext .TooManyCoinsText
	waitbutton
	closetext
	end

.GiveCoinsText:
	text "Hey, what? You're"
	line "throwing me off!"
	cont "Here are some"
	cont "coins, shoo!"
	prompt

.AfterText:
	text "The trick is to"
	line "watch the reels"
	cont "closely!"
	done

.TooManyCoinsText:
	text "You've got your"
	line "own coins!"
	done

TrainerRocketGrunt7:
	trainer ROCKET_GEN1, GRUNT7_GEN1, EVENT_BEAT_ROCKET_GRUNT7_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	opentext
	writetext .AfterText
	waitbutton
	closetext
	readvar VAR_FACING
	ifequal LEFT, .Left
	applymovement GAMECORNER_KANTO_ROCKET, .ExitMovement1
	disappear GAMECORNER_KANTO_ROCKET
	end

.Left:
	applymovement GAMECORNER_KANTO_ROCKET, .ExitMovement2
	disappear GAMECORNER_KANTO_ROCKET
	end

.SeenText:
	text "I'm guarding this"
	line "poster!"
	cont "Go away, or else!"
	done

.BeatenText:
	text "Dang!"
	done

.AfterText:
	text "Our hideout might"
	line "be discovered! I"
	cont "better tell BOSS!"
	done

.ExitMovement1:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

.ExitMovement2:
	step DOWN
	step RIGHT
	step RIGHT
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

GameCorner_PosterScript:
	opentext
	writetext .Text
	waitbutton
	closetext
	checkevent EVENT_GAME_CORNER_OPENED_STAIRS
	iftrue DummyScript
	changeblock 16, 4, $43 ; stairs
	setevent EVENT_GAME_CORNER_OPENED_STAIRS
	end

.Text:
	text "Hey!"

	para "A switch behind"
	line "the poster!?"
	cont "Let's push it!"
	done

GameCorner_SlotMachineScript:
	random 6
	ifequal 0, .Lucky
	refreshscreen
	setval FALSE
	sjump .Join

.Lucky:
	refreshscreen
	setval TRUE
.Join:
	special SlotMachine
	closetext
	end

GameCorner_SomeonesKeysScript:
	jumptext .Text
.Text:
	text "Someone's keys!"
	line "They'll be back."
	done

GameCorner_OutToLunchScript:
	jumptext .Text
.Text:
	text "OUT TO LUNCH"
	line "This is reserved."
	done

GameCorner_OutOfOrderScript:
	jumptext .Text
.Text:
	text "OUT OF ORDER"
	line "This is broken."
	done

GameCorner_HiddenCoins1:
	hiddencoin 10, EVENT_GAME_CORNER_HIDDEN_10_COINS1
GameCorner_HiddenCoins2:
	hiddencoin 10, EVENT_GAME_CORNER_HIDDEN_10_COINS2
GameCorner_HiddenCoins3:
	hiddencoin 20, EVENT_GAME_CORNER_HIDDEN_20_COINS1
GameCorner_HiddenCoins4:
	hiddencoin 10, EVENT_GAME_CORNER_HIDDEN_10_COINS3
GameCorner_HiddenCoins5:
	hiddencoin 10, EVENT_GAME_CORNER_HIDDEN_10_COINS4
GameCorner_HiddenCoins6:
	hiddencoin 20, EVENT_GAME_CORNER_HIDDEN_20_COINS2
GameCorner_HiddenCoins7:
	hiddencoin 10, EVENT_GAME_CORNER_HIDDEN_10_COINS5
GameCorner_HiddenCoins8:
	hiddencoin 10, EVENT_GAME_CORNER_HIDDEN_10_COINS6
GameCorner_HiddenCoins9:
	hiddencoin 10, EVENT_GAME_CORNER_HIDDEN_10_COINS7
GameCorner_HiddenCoins10:
	hiddencoin 40, EVENT_GAME_CORNER_HIDDEN_40_COINS
GameCorner_HiddenCoins11:
	hiddencoin 100, EVENT_GAME_CORNER_HIDDEN_100_COINS
GameCorner_HiddenCoins12:
	hiddencoin 10, EVENT_GAME_CORNER_HIDDEN_10_COINS8

GameCorner_MapEvents:
	def_warp_events
	warp_event 15, 17, CELADON_CITY, 8
	warp_event 16, 17, CELADON_CITY, 8
	warp_event 17,  4, ROCKET_HIDEOUT_B1F, 2

	def_coord_events

	def_bg_events
	bg_event  9,  4, BGEVENT_READ, GameCorner_PosterScript
	bg_event 18, 15, BGEVENT_READ, GameCorner_SlotMachineScript
	bg_event 18, 14, BGEVENT_READ, GameCorner_SlotMachineScript
	bg_event 18, 13, BGEVENT_READ, GameCorner_SlotMachineScript
	bg_event 18, 12, BGEVENT_READ, GameCorner_SlotMachineScript
	bg_event 18, 11, BGEVENT_READ, GameCorner_SlotMachineScript
	bg_event 18, 10, BGEVENT_READ, GameCorner_SomeonesKeysScript
	bg_event 13, 10, BGEVENT_READ, GameCorner_SlotMachineScript
	bg_event 13, 11, BGEVENT_READ, GameCorner_SlotMachineScript
	bg_event 13, 12, BGEVENT_READ, GameCorner_OutToLunchScript
	bg_event 13, 13, BGEVENT_READ, GameCorner_SlotMachineScript
	bg_event 13, 14, BGEVENT_READ, GameCorner_SlotMachineScript
	bg_event 13, 15, BGEVENT_READ, GameCorner_SlotMachineScript
	bg_event 12, 15, BGEVENT_READ, GameCorner_SlotMachineScript
	bg_event 12, 14, BGEVENT_READ, GameCorner_SlotMachineScript
	bg_event 12, 13, BGEVENT_READ, GameCorner_SlotMachineScript
	bg_event 12, 12, BGEVENT_READ, GameCorner_SlotMachineScript
	bg_event 12, 11, BGEVENT_READ, GameCorner_SlotMachineScript
	bg_event 12, 10, BGEVENT_READ, GameCorner_SlotMachineScript
	bg_event  7, 10, BGEVENT_READ, GameCorner_SlotMachineScript
	bg_event  7, 11, BGEVENT_READ, GameCorner_SlotMachineScript
	bg_event  7, 12, BGEVENT_READ, GameCorner_SlotMachineScript
	bg_event  7, 13, BGEVENT_READ, GameCorner_SlotMachineScript
	bg_event  7, 14, BGEVENT_READ, GameCorner_SlotMachineScript
	bg_event  7, 15, BGEVENT_READ, GameCorner_SlotMachineScript
	bg_event  6, 15, BGEVENT_READ, GameCorner_SlotMachineScript
	bg_event  6, 14, BGEVENT_READ, GameCorner_SlotMachineScript
	bg_event  6, 13, BGEVENT_READ, GameCorner_SlotMachineScript
	bg_event  6, 12, BGEVENT_READ, GameCorner_OutOfOrderScript
	bg_event  6, 11, BGEVENT_READ, GameCorner_SlotMachineScript
	bg_event  6, 10, BGEVENT_READ, GameCorner_SlotMachineScript
	bg_event  1, 10, BGEVENT_READ, GameCorner_SlotMachineScript
	bg_event  1, 11, BGEVENT_READ, GameCorner_SlotMachineScript
	bg_event  1, 12, BGEVENT_READ, GameCorner_SlotMachineScript
	bg_event  1, 13, BGEVENT_READ, GameCorner_SlotMachineScript
	bg_event  1, 14, BGEVENT_READ, GameCorner_SlotMachineScript
	bg_event  1, 15, BGEVENT_READ, GameCorner_SlotMachineScript
	bg_event  0,  8, BGEVENT_COIN, GameCorner_HiddenCoins1
	bg_event  1, 16, BGEVENT_COIN, GameCorner_HiddenCoins2
	bg_event  3, 11, BGEVENT_COIN, GameCorner_HiddenCoins3
	bg_event  3, 14, BGEVENT_COIN, GameCorner_HiddenCoins4
	bg_event  4, 12, BGEVENT_COIN, GameCorner_HiddenCoins5
	bg_event  9, 12, BGEVENT_COIN, GameCorner_HiddenCoins6
	bg_event  9, 15, BGEVENT_COIN, GameCorner_HiddenCoins7
	bg_event 16, 14, BGEVENT_COIN, GameCorner_HiddenCoins8
	bg_event 10, 16, BGEVENT_COIN, GameCorner_HiddenCoins9
	bg_event 11,  7, BGEVENT_COIN, GameCorner_HiddenCoins10
	bg_event 15,  8, BGEVENT_COIN, GameCorner_HiddenCoins11
	bg_event 12, 15, BGEVENT_COIN, GameCorner_HiddenCoins12

	def_object_events
	object_event  2,  6, SPRITE_KANTO_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GameCorner_PrizeGirlScript, -1
	object_event  5,  6, SPRITE_KANTO_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GameCorner_CoinExchangeClerkScript, -1
	object_event  2, 10, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GameCorner_RumorGuyScript, -1
	object_event  2, 13, SPRITE_KANTO_BEAUTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GameCorner_DifferentOddsWomanScript, -1
	object_event  5, 11, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GameCorner_10CoinGuyGcript, -1
	object_event  8, 11, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GameCorner_WonderfulTimeScript, -1
	object_event  8, 14, SPRITE_KANTO_GYM_GUIDE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GameCorner_GymGuyScript, -1
	object_event 11, 15, SPRITE_GAMBLER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GameCorner_ScaryGuyScript, -1
	object_event 14, 11, SPRITE_KANTO_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GameCorner_20CoinGuy1Script, -1
	object_event 17, 13, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GameCorner_20CoinGuy2Script, -1
	object_event  9,  5, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerRocketGrunt7, EVENT_GAME_CORNER_ROCKET
