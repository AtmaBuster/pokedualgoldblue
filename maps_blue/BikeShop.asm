	object_const_def
	const BIKESHOP_BIKE_SHOP_CLERK
	const BIKESHOP_MIDDLE_AGED_WOMAN
	const BIKESHOP_KANTO_YOUNGSTER

BikeShop_MapScripts:
	def_scene_scripts

	def_callbacks

BikeShop_ClerkScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_BICYCLE_KANTO
	iftrue .HaveBike
	checkitem BIKE_VOUCHER
	iftrue .GetBike
	writetext .WelcomeText
	waitbutton
	writetext .CoolBikeText
	loadmenu .MenuHeader
	verticalmenu
	closewindow
	ifnotequal 1, .Leave
	writetext .CantAffordText
.Leave:
	writetext .ComeBackText
	waitbutton
	closetext
	end

.GetBike:
	writetext .HaveVoucherText
	waitbutton
	giveitem BICYCLE
	iffalse .BagFull
	takeitem BIKE_VOUCHER
	writetext .ExchangedText
	playsound SFX_KEY_ITEM
	waitsfx
	waitbutton
	closetext
	setevent EVENT_GOT_BICYCLE_KANTO
	end

.BagFull:
	writetext .MakeRoomText
	waitbutton
	closetext
	end

.HaveBike:
	writetext .HowDoYouLikeText
	waitbutton
	closetext
	end

.WelcomeText:
	text "Hi! Welcome to"
	line "our BIKE SHOP."

	para "Have we got just"
	line "the BIKE for you!"
	done

.CoolBikeText:
	text "It's a cool BIKE!"
	line "Do you want it?"
	done

.CantAffordText:
	text "Sorry! You can't"
	line "afford it!"
	prompt

.ComeBackText:
	text "Come back again"
	line "some time!"
	done

.HaveVoucherText:
	text "Oh, that's..."

	para "A BIKE VOUCHER!"

	para "OK! Here you go!"
	done

.ExchangedText:
	text "<PLAYER> exchanged"
	line "the BIKE VOUCHER"
	cont "for a BICYCLE."
	done

.MakeRoomText:
	text "You better make"
	line "room for this!"
	done

.HowDoYouLikeText
	text "How do you like"
	line "your new BICYCLE?"

	para "You can take it"
	line "on CYCLING ROAD"
	cont "and in caves!"
	done

.MenuHeader:
	db MENU_BACKUP_TILES ; falgs
	menu_coords 0, 0, SCREEN_WIDTH - 1, 5
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 2 ; items
	db "BICYCLE  ¥1000000@"
	db "CANCEL@"

BikeShop_WomanScript:
	jumptextfaceplayer .Text
.Text:
	text "A plain city BIKE"
	line "is good enough"
	cont "for me!"

	para "You can't put a"
	line "shopping basket"
	cont "on an MTB!"
	done

BikeShop_KidScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_BICYCLE_KANTO
	iftrue .After
	writetext .Text1
	waitbutton
	closetext
	end

.After:
	writetext .Text2
	waitbutton
	closetext
	end

.Text1:
	text "These BIKEs are"
	line "cool, but they're"
	cont "way expensive!"
	done

.Text2:
	text "Wow. Your BIKE is"
	line "really cool!"
	done

BikeShop_BikeScript:
	jumptext .Text
.Text:
	text "A shiny new"
	line "BICYCLE!"
	done

BikeShop_MapEvents:
	def_warp_events
	warp_event  2,  7, CERULEAN_CITY, 5
	warp_event  3,  7, CERULEAN_CITY, 5

	def_coord_events

	def_bg_events
	bg_event  1,  0, BGEVENT_READ, BikeShop_BikeScript
	bg_event  2,  1, BGEVENT_READ, BikeShop_BikeScript
	bg_event  1,  2, BGEVENT_READ, BikeShop_BikeScript
	bg_event  3,  2, BGEVENT_READ, BikeShop_BikeScript
	bg_event  0,  4, BGEVENT_READ, BikeShop_BikeScript
	bg_event  1,  5, BGEVENT_READ, BikeShop_BikeScript

	def_object_events
	object_event  6,  2, SPRITE_BIKE_SHOP_CLERK, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BikeShop_ClerkScript, -1
	object_event  5,  6, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BikeShop_WomanScript, -1
	object_event  1,  3, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BikeShop_KidScript, -1
