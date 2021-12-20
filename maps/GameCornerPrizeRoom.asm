GAME_CORNER_PRIZE_MON_1       EQU ABRA
GAME_CORNER_PRIZE_MON_2       EQU CLEFAIRY
GAME_CORNER_PRIZE_MON_3       EQU NIDORINO
GAME_CORNER_PRIZE_MON_4       EQU PINSIR
GAME_CORNER_PRIZE_MON_5       EQU DRATINI
GAME_CORNER_PRIZE_MON_6       EQU PORYGON
GAME_CORNER_PRIZE_MON_1_COST  EQU 120
GAME_CORNER_PRIZE_MON_2_COST  EQU 750
GAME_CORNER_PRIZE_MON_3_COST  EQU 1200
GAME_CORNER_PRIZE_MON_4_COST  EQU 2500
GAME_CORNER_PRIZE_MON_5_COST  EQU 4600
GAME_CORNER_PRIZE_MON_6_COST  EQU 6500
GAME_CORNER_PRIZE_MON_1_LEVEL EQU 6
GAME_CORNER_PRIZE_MON_2_LEVEL EQU 12
GAME_CORNER_PRIZE_MON_3_LEVEL EQU 17
GAME_CORNER_PRIZE_MON_4_LEVEL EQU 20
GAME_CORNER_PRIZE_MON_5_LEVEL EQU 24
GAME_CORNER_PRIZE_MON_6_LEVEL EQU 18
IF DEF(_GOLD)
GAME_CORNER_PRIZE_TM_1        EQU TM_DYNAMICPUNCH
GAME_CORNER_PRIZE_TM_2        EQU TM_DYNAMICPUNCH
GAME_CORNER_PRIZE_TM_3        EQU TM_DYNAMICPUNCH
ELIF DEF(_BLUE)
GAME_CORNER_PRIZE_TM_1        EQU TM_DRAGON_RAGE
GAME_CORNER_PRIZE_TM_2        EQU TM_HYPER_BEAM
GAME_CORNER_PRIZE_TM_3        EQU TM_SUBSTITUTE
ENDC
GAME_CORNER_PRIZE_TM_1_COST   EQU 3300
GAME_CORNER_PRIZE_TM_2_COST   EQU 5500
GAME_CORNER_PRIZE_TM_3_COST   EQU 7700

	object_const_def
	const GAMECORNERPRIZEROOM_BALDING_GUY
	const GAMECORNERPRIZEROOM_GAMBLER

GameCornerPrizeRoom_MapScripts:
	def_scene_scripts

	def_callbacks

GameCornerPrizeRoom_ManScript:
	jumptextfaceplayer .Text
.Text:
	text "I sure do fancy"
	line "that PORYGON!"

	para "But, it's hard to"
	line "win at slots!"
	done

GameCornerPrizeRoom_GamblerScript:
	jumptextfaceplayer .Text
.Text:
	text "I had a major"
	line "haul today!"
	done

GameCornerPrizeRoom_Window1Script:
	opentext
	checkitem COIN_CASE
	iffalse GameCornerPrizeRoom_NeedCoinCase
	writetext GameCornerPrizeRoom_ExchangeText
.Loop:
	writetext GameCornerPrizeRoom_WhichPrizeText
	special DisplayCoinCaseBalance
	loadmenu .Menu
	verticalmenu
	closewindow
	ifequal 1, .Mon1
	ifequal 2, .Mon2
	ifequal 3, .Mon3
	closetext
	end

.Mon1:
	getmonname STRING_BUFFER_3, GAME_CORNER_PRIZE_MON_1
	writetext GameCornerPrizeRoom_SoYouWantText
	yesorno
	iffalse GameCornerPrizeRoom_FineThen
	checkcoins GAME_CORNER_PRIZE_MON_1_COST
	ifequal HAVE_LESS, GameCornerPrizeRoom_NeedMoreCoins
	writetext GameCornerPrizeRoom_GotItText
	takecoins GAME_CORNER_PRIZE_MON_1_COST
	special DisplayCoinCaseBalance
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke GAME_CORNER_PRIZE_MON_1, GAME_CORNER_PRIZE_MON_1_LEVEL
	closetext
	end

.Mon2:
	getmonname STRING_BUFFER_3, GAME_CORNER_PRIZE_MON_2
	writetext GameCornerPrizeRoom_SoYouWantText
	yesorno
	iffalse GameCornerPrizeRoom_FineThen
	checkcoins GAME_CORNER_PRIZE_MON_2_COST
	ifequal HAVE_LESS, GameCornerPrizeRoom_NeedMoreCoins
	writetext GameCornerPrizeRoom_GotItText
	takecoins GAME_CORNER_PRIZE_MON_2_COST
	special DisplayCoinCaseBalance
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke GAME_CORNER_PRIZE_MON_2, GAME_CORNER_PRIZE_MON_2_LEVEL
	closetext
	end

.Mon3:
	getmonname STRING_BUFFER_3, GAME_CORNER_PRIZE_MON_3
	writetext GameCornerPrizeRoom_SoYouWantText
	yesorno
	iffalse GameCornerPrizeRoom_FineThen
	checkcoins GAME_CORNER_PRIZE_MON_3_COST
	ifequal HAVE_LESS, GameCornerPrizeRoom_NeedMoreCoins
	writetext GameCornerPrizeRoom_GotItText
	takecoins GAME_CORNER_PRIZE_MON_3_COST
	special DisplayCoinCaseBalance
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke GAME_CORNER_PRIZE_MON_3, GAME_CORNER_PRIZE_MON_3_LEVEL
	closetext
	end

.Menu:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 17, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "ABRA        120@"
	db "CLEFAIRY    750@"
	db "NIDORINO   1200@"
	db "NO THANKS@"

GameCornerPrizeRoom_Window2Script:
	opentext
	checkitem COIN_CASE
	iffalse GameCornerPrizeRoom_NeedCoinCase
	writetext GameCornerPrizeRoom_ExchangeText
.Loop:
	writetext GameCornerPrizeRoom_WhichPrizeText
	special DisplayCoinCaseBalance
	loadmenu .Menu
	verticalmenu
	closewindow
	ifequal 1, .Mon1
	ifequal 2, .Mon2
	ifequal 3, .Mon3
	closetext
	end

.Mon1:
	getmonname STRING_BUFFER_3, GAME_CORNER_PRIZE_MON_4
	writetext GameCornerPrizeRoom_SoYouWantText
	yesorno
	iffalse GameCornerPrizeRoom_FineThen
	checkcoins GAME_CORNER_PRIZE_MON_4_COST
	ifequal HAVE_LESS, GameCornerPrizeRoom_NeedMoreCoins
	writetext GameCornerPrizeRoom_GotItText
	takecoins GAME_CORNER_PRIZE_MON_4_COST
	special DisplayCoinCaseBalance
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke GAME_CORNER_PRIZE_MON_4, GAME_CORNER_PRIZE_MON_4_LEVEL
	closetext
	end

.Mon2:
	getmonname STRING_BUFFER_3, GAME_CORNER_PRIZE_MON_5
	writetext GameCornerPrizeRoom_SoYouWantText
	yesorno
	iffalse GameCornerPrizeRoom_FineThen
	checkcoins GAME_CORNER_PRIZE_MON_5_COST
	ifequal HAVE_LESS, GameCornerPrizeRoom_NeedMoreCoins
	writetext GameCornerPrizeRoom_GotItText
	takecoins GAME_CORNER_PRIZE_MON_5_COST
	special DisplayCoinCaseBalance
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke GAME_CORNER_PRIZE_MON_5, GAME_CORNER_PRIZE_MON_5_LEVEL
	closetext
	end

.Mon3:
	getmonname STRING_BUFFER_3, GAME_CORNER_PRIZE_MON_6
	writetext GameCornerPrizeRoom_SoYouWantText
	yesorno
	iffalse GameCornerPrizeRoom_FineThen
	checkcoins GAME_CORNER_PRIZE_MON_6_COST
	ifequal HAVE_LESS, GameCornerPrizeRoom_NeedMoreCoins
	writetext GameCornerPrizeRoom_GotItText
	takecoins GAME_CORNER_PRIZE_MON_6_COST
	special DisplayCoinCaseBalance
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke GAME_CORNER_PRIZE_MON_6, GAME_CORNER_PRIZE_MON_6_LEVEL
	closetext
	end

.Menu:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 17, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "PINSIR     2500@"
	db "DRATINI    4600@"
	db "PORYGON    6500@"
	db "NO THANKS@"

GameCornerPrizeRoom_Window3Script:
	opentext
	checkitem COIN_CASE
	iffalse GameCornerPrizeRoom_NeedCoinCase
	writetext GameCornerPrizeRoom_ExchangeText
.Loop:
	writetext GameCornerPrizeRoom_WhichPrizeText
	special DisplayCoinCaseBalance
	loadmenu .Menu
	verticalmenu
	closewindow
	ifequal 1, .TM1
	ifequal 2, .TM2
	ifequal 3, .TM3
	closetext
	end

.TM1:
	getitemname STRING_BUFFER_3, GAME_CORNER_PRIZE_TM_1
	writetext GameCornerPrizeRoom_SoYouWantText
	yesorno
	iffalse GameCornerPrizeRoom_FineThen
	checkcoins GAME_CORNER_PRIZE_TM_1_COST
	ifequal HAVE_LESS, GameCornerPrizeRoom_NeedMoreCoins
	giveitem GAME_CORNER_PRIZE_TM_1
	iffalse GameCornerPrizeRoom_NotEnoughRoom
	takecoins GAME_CORNER_PRIZE_TM_1_COST
	special DisplayCoinCaseBalance
	writetext GameCornerPrizeRoom_GotItText
	playsound SFX_ITEM
	waitsfx
	closetext
	end

.TM2:
	getitemname STRING_BUFFER_3, GAME_CORNER_PRIZE_TM_2
	writetext GameCornerPrizeRoom_SoYouWantText
	yesorno
	iffalse GameCornerPrizeRoom_FineThen
	checkcoins GAME_CORNER_PRIZE_TM_2_COST
	ifequal HAVE_LESS, GameCornerPrizeRoom_NeedMoreCoins
	giveitem GAME_CORNER_PRIZE_TM_2
	iffalse GameCornerPrizeRoom_NotEnoughRoom
	takecoins GAME_CORNER_PRIZE_TM_2_COST
	special DisplayCoinCaseBalance
	writetext GameCornerPrizeRoom_GotItText
	playsound SFX_ITEM
	waitsfx
	closetext
	end

.TM3:
	getitemname STRING_BUFFER_3, GAME_CORNER_PRIZE_TM_3
	writetext GameCornerPrizeRoom_SoYouWantText
	yesorno
	iffalse GameCornerPrizeRoom_FineThen
	checkcoins GAME_CORNER_PRIZE_TM_3_COST
	ifequal HAVE_LESS, GameCornerPrizeRoom_NeedMoreCoins
	giveitem GAME_CORNER_PRIZE_TM_3
	iffalse GameCornerPrizeRoom_NotEnoughRoom
	takecoins GAME_CORNER_PRIZE_TM_3_COST
	special DisplayCoinCaseBalance
	writetext GameCornerPrizeRoom_GotItText
	playsound SFX_ITEM
	waitsfx
	closetext
	end

.Menu:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 17, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "TM23       3300@"
	db "TM15       5500@"
	db "TM50       7700@"
	db "NO THANKS@"


GameCornerPrizeRoom_NeedCoinCase:
	writetext .NeedCoinCaseText
	waitbutton
	closetext
	end

.NeedCoinCaseText:
	text "A COIN CASE is"
	line "required!"
	done

GameCornerPrizeRoom_FineThen:
	writetext .FineThenText
	waitbutton
	closetext
	end

.FineThenText:
	text "Oh, fine then."
	done

GameCornerPrizeRoom_NeedMoreCoins:
	writetext .NeedMoreCoinsText
	waitbutton
	closetext
	end

.NeedMoreCoinsText:
	text "Sorry, you need"
	line "more coins."
	done

GameCornerPrizeRoom_NotEnoughRoom:
	writetext .NotEnoughRoomText
	waitbutton
	closetext
	end

.NotEnoughRoomText:
	text "Oops! You don't"
	line "have enough room."
	done

GameCornerPrizeRoom_ExchangeText:
	text "We exchange your"
	line "coins for prizes."
	prompt

GameCornerPrizeRoom_WhichPrizeText:
	text "Which prize do"
	line "you want?"
	done

GameCornerPrizeRoom_SoYouWantText:
	text "So, you want"
	line "@"
	text_ram wStringBuffer3
	text "?"
	done

GameCornerPrizeRoom_GotItText:
	text "<PLAYER> got"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

GameCornerPrizeRoom_MapEvents:
	def_warp_events
	warp_event  4,  7, CELADON_CITY, 10
	warp_event  5,  7, CELADON_CITY, 10

	def_coord_events

	def_bg_events
	bg_event  2,  2, BGEVENT_READ, GameCornerPrizeRoom_Window1Script
	bg_event  4,  2, BGEVENT_READ, GameCornerPrizeRoom_Window2Script
	bg_event  6,  2, BGEVENT_READ, GameCornerPrizeRoom_Window3Script

	def_object_events
	object_event  1,  4, SPRITE_BALDING_GUY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GameCornerPrizeRoom_ManScript, -1
	object_event  7,  3, SPRITE_GAMBLER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GameCornerPrizeRoom_GamblerScript, -1
