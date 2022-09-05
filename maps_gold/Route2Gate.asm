	object_const_def
	const ROUTE2GATE_KANTO_SCIENTIST
	const ROUTE2GATE_KANTO_YOUNGSTER

Route2Gate_MapScripts:
	def_scene_scripts

	def_callbacks

Route2Gate_AideScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_HM05_KANTO
	iftrue .GotItem
	setval 10
	getitemname STRING_BUFFER_3, HM_FLASH
	farwritetext _OaksAideHiText
	yesorno
	iffalse .ChoseNo
	readvar VAR_DEXCAUGHT
	ifless 10, .NotEnoughMons
	farwritetext _OaksAideHereYouGoText
	verbosegiveitem HM_FLASH
	iffalse .BagFull
	setevent EVENT_GOT_HM05_KANTO
.GotItem
	writetext .AfterText
	waitbutton
.BagFull
	closetext
	end

.NotEnoughMons
	farwritetext _OaksAideUhOhText1
	setval 10
	farwritetext _OaksAideUhOhText2
	waitbutton
	closetext
	end

.ChoseNo
	setval 10
	farwritetext _OaksAideComeBackText
	waitbutton
	closetext
	end

.AfterText
	text "The HM FLASH"
	line "lights even the"
	cont "darkest dungeons."
	done

Route2Gate_YoungsterScript:
	jumptextfaceplayer .Text
.Text:
	text "Once a #MON"
	line "learns FLASH, you"
	cont "can get through"
	cont "ROCK TUNNEL."
	done

Route2Gate_MapEvents:
	def_warp_events
	warp_event  4,  0, ROUTE_2, 4
	warp_event  5,  0, ROUTE_2, 4
	warp_event  4,  7, ROUTE_2, 5
	warp_event  5,  7, ROUTE_2, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  4, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route2Gate_AideScript, -1
	object_event  5,  4, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route2Gate_YoungsterScript, -1
