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
	writetext .HiText
	yesorno
	iffalse .ChoseNo
	setval 10
	readvar VAR_DEXCAUGHT
	ifless 10, .NotEnoughMons
	writetext .HereYouGo
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
	writetext .UhOhText1
	setval 10
	writetext .UhOhText2
	waitbutton
	closetext
	end

.ChoseNo
	setval 10
	writetext .ComeBackText
	waitbutton
	closetext
	end

.HiText
	text_far _OaksAideHiText
	text_end

.UhOhText1
	text_far _OaksAideUhOhText1
	text_end

.UhOhText2
	text_far _OaksAideUhOhText2
	text_end

.ComeBackText
	text_far _OaksAideComeBackText
	text_end

.HereYouGo
	text_far _OaksAideHereYouGoText
	text_end

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
	db 0, 0 ; filler

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
