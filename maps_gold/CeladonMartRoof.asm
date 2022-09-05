CELADONMARTROOF_FRESH_WATER_PRICE EQU 200
CELADONMARTROOF_SODA_POP_PRICE    EQU 300
CELADONMARTROOF_LEMONADE_PRICE    EQU 350

	object_const_def
	const CELADONMARTROOF_KANTO_SUPER_NERD
	const CELADONMARTROOF_LITTLE_GIRL

CeladonMartRoof_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonMartRoof_BrotherScript:
	jumptextfaceplayer .Text
.Text:
	text "My sister is a"
	line "trainer, believe"
	cont "it or not."

	para "But, she's so"
	line "immature, she"
	cont "drives me nuts!"
	done

CeladonMartRoof_TMGirlScript:
	faceplayer
	opentext
	special CheckDrinks
	iffalse .NoDrinks
	writetext .AskDrinkText
	yesorno
	iffalse .End
	special DrinkGirlMenu
	ifequal FRESH_WATER, .GaveFreshWater
	ifequal SODA_POP, .GaveSodaPop
	ifequal LEMONADE, .GaveLemonade
	closetext
	end

.NoDrinks:
	writetext .NoDrinksText
	waitbutton
.End:
	closetext
	end

.GaveFreshWater:
	checkevent EVENT_GOT_TM_ICE_BEAM
	iftrue .NotThirsty
	takeitem FRESH_WATER
	writetext .YayFreshWaterText
	waitbutton
IF DEF(_GOLD)
	verbosegiveitem TM_DYNAMICPUNCH
ELIF DEF(_BLUE)
	verbosegiveitem TM_ICE_BEAM
ENDC
	iffalse .End
	setevent EVENT_GOT_TM_ICE_BEAM
	writetext .IceBeamText
	waitbutton
	closetext
	end

.GaveSodaPop:
	checkevent EVENT_GOT_TM_ROCK_SLIDE
	iftrue .NotThirsty
	takeitem SODA_POP
	writetext .YaySodaPopText
	waitbutton
IF DEF(_GOLD)
	verbosegiveitem TM_DYNAMICPUNCH
ELIF DEF(_BLUE)
	verbosegiveitem TM_ROCK_SLIDE
ENDC
	iffalse .End
	setevent EVENT_GOT_TM_ROCK_SLIDE
	writetext .RockSlideText
	waitbutton
	closetext
	end

.GaveLemonade:
	checkevent EVENT_GOT_TM_TRI_ATTACK
	iftrue .NotThirsty
	takeitem LEMONADE
	writetext .YayLemondateText
	waitbutton
IF DEF(_GOLD)
	verbosegiveitem TM_DYNAMICPUNCH
ELIF DEF(_BLUE)
	verbosegiveitem TM_TRI_ATTACK
ENDC
	iffalse .End
	setevent EVENT_GOT_TM_TRI_ATTACK
	writetext .TriAttackText
	waitbutton
	closetext
	end

.NotThirsty:
	writetext .NotThirstyText
	waitbutton
	closetext
	end

.NoDrinksText:
	text "I'm thirsty!"
	line "I want something"
	cont "to drink!"
	done

.AskDrinkText:
	text "I'm thirsty!"
	line "I want something"
	cont "to drink!"

	para "Give her a drink?"
	done

.NotThirstyText:
	text "No thank you!"
	line "I'm not thirsty"
	cont "after all!"
	done

.YayFreshWaterText:
	text "Yay!"

	para "FRESH WATER!"

	para "Thank you!"

	para "You can have this"
	line "from me!"
	done

.IceBeamText:
	text "TM13 contains"
	line "ICE BEAM!"

	para "It can freeze the"
	line "target sometimes!"
	done

.YaySodaPopText:
	text "Yay!"

	para "SODA POP!"

	para "Thank you!"

	para "You can have this"
	line "from me!"
	done

.RockSlideText:
	text "TM48 contains"
	line "ROCK SLIDE!"

	para "It can spook the"
	line "target sometimes!"
	done

.YayLemondateText:
	text "Yay!"

	para "LEMONADE!"

	para "Thank you!"

	para "You can have this"
	line "from me!"
	done

.TriAttackText:
	text "TM49 contains"
	line "TRI ATTACK!"
	done

CeladonMartRoof_VendingMachineScript:
	opentext
	writetext .Text
	special PlaceMoneyTopRight
	loadmenu .MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .FreshWater
	ifequal 2, .SodaPop
	ifequal 3, .Lemonade
	writetext .NotThirstyText
	waitbutton
	closetext
	end

.FreshWater:
	checkmoney YOUR_MONEY, CELADONMARTROOF_FRESH_WATER_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	giveitem FRESH_WATER
	iffalse .NotEnoughSpace
	takemoney YOUR_MONEY, CELADONMARTROOF_FRESH_WATER_PRICE
	getitemname STRING_BUFFER_3, FRESH_WATER
	sjump .VendItem

.SodaPop:
	checkmoney YOUR_MONEY, CELADONMARTROOF_SODA_POP_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	giveitem SODA_POP
	iffalse .NotEnoughSpace
	takemoney YOUR_MONEY, CELADONMARTROOF_SODA_POP_PRICE
	getitemname STRING_BUFFER_3, SODA_POP
	sjump .VendItem

.Lemonade:
	checkmoney YOUR_MONEY, CELADONMARTROOF_LEMONADE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	giveitem LEMONADE
	iffalse .NotEnoughSpace
	takemoney YOUR_MONEY, CELADONMARTROOF_LEMONADE_PRICE
	getitemname STRING_BUFFER_3, LEMONADE
	sjump .VendItem

.VendItem:
	pause 10
	playsound SFX_ENTER_DOOR
	writetext .ClangText
	promptbutton
	itemnotify
	closetext
	end

.NotEnoughMoney:
	writetext .NoMoneyText
	waitbutton
	closetext
	end

.NotEnoughSpace:
	writetext .NoSpaceText
	waitbutton
	closetext
	end

.MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "FRESH WATER  ¥{d:CELADONMARTROOF_FRESH_WATER_PRICE}@"
	db "SODA POP     ¥{d:CELADONMARTROOF_SODA_POP_PRICE}@"
	db "LEMONADE     ¥{d:CELADONMARTROOF_LEMONADE_PRICE}@"
	db "CANCEL@"

.Text:
	text "A vending machine!"
	line "Here's the menu."
	done

.ClangText:
	text_ram wStringBuffer3
	text_start
	line "popped out!"
	done

.NoMoneyText:
	text "Oops, not enough"
	line "money!"
	done

.NoSpaceText:
	text "There's no more"
	line "room for stuff."
	done

.NotThirstyText:
	text "Not thirsty!"
	done

CeladonMartRoof_SignScript:
	jumptext .Text
.Text:
	text "ROOFTOP SQUARE:"
	line "VENDING MACHINES"
	done

CeladonMartRoof_MapEvents:
	def_warp_events
	warp_event 15,  2, CELADON_MART_5F, 1

	def_coord_events

	def_bg_events
	bg_event 10,  1, BGEVENT_READ, CeladonMartRoof_VendingMachineScript
	bg_event 11,  1, BGEVENT_READ, CeladonMartRoof_VendingMachineScript
	bg_event 12,  2, BGEVENT_READ, CeladonMartRoof_VendingMachineScript
	bg_event 13,  2, BGEVENT_READ, CeladonMartRoof_SignScript

	def_object_events
	object_event 10,  4, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonMartRoof_BrotherScript, -1
	object_event  5,  5, SPRITE_LITTLE_GIRL, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonMartRoof_TMGirlScript, -1
