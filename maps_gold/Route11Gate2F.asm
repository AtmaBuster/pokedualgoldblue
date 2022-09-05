	object_const_def
	const ROUTE11GATE2F_KANTO_YOUNGSTER
	const ROUTE11GATE2F_KANTO_SCIENTIST

Route11Gate2F_MapScripts:
	def_scene_scripts

	def_callbacks

Route11Gate2F_TurnerScript:
	faceplayer
	opentext
	trade NPC_TRADE_TURNER
	waitbutton
	closetext
	end

Route11Gate2F_OaksAideScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_ITEMFINDER_KANTO
	iftrue .GotItem
	setval 30
	getitemname STRING_BUFFER_3, ITEMFINDER
	farwritetext _OaksAideHiText
	yesorno
	iffalse .ChoseNo
	readvar VAR_DEXCAUGHT
	ifless 30, .NotEnoughMons
	farwritetext _OaksAideHereYouGoText
	verbosegiveitem ITEMFINDER
	iffalse .BagFull
	setevent EVENT_GOT_ITEMFINDER_KANTO
.GotItem
	writetext .AfterText
	waitbutton
.BagFull
	closetext
	end

.NotEnoughMons
	farwritetext _OaksAideUhOhText1
	setval 30
	farwritetext _OaksAideUhOhText2
	waitbutton
	closetext
	end

.ChoseNo
	setval 30
	farwritetext _OaksAideComeBackText
	waitbutton
	closetext
	end

.AfterText
	text "There are items on"
	line "the ground that"
	cont "can't be seen."

	para "ITEMFINDER will"
	line "detect an item"
	cont "close to you."

	para "It can't pinpoint"
	line "it, so you have"
	cont "to look yourself!"
	done

Route11Gate2F_BinocularsLeftScript:
	opentext
	checkevent EVENT_BEAT_ROUTE_12_SNORLAX
	iftrue .BeatSnorlax
	writetext .Text1
	waitbutton
	closetext
	end

.BeatSnorlax:
	writetext .Text2
	waitbutton
	closetext
	end

.Text1:
	text "Looked into the"
	line "binoculars."

	para "A big #MON is"
	line "asleep on a road!"
	done

.Text2:
	text "Looked into the"
	line "binoculars."

	para "It's a beautiful"
	line "view!"
	done

Route11Gate2F_BinocularsRightScript:
	jumptext .Text
.Text:
	text "Looked into the"
	line "binoculars."

	para "The only way to"
	line "get from CERULEAN"
	cont "CITY to LAVENDER"
	cont "is by way of the"
	cont "ROCK TUNNEL."
	done

Route11Gate2F_MapEvents:
	def_warp_events
	warp_event  7,  7, ROUTE_11_GATE_1F, 5

	def_coord_events

	def_bg_events
	bg_event  1,  2, BGEVENT_UP, Route11Gate2F_BinocularsLeftScript
	bg_event  6,  2, BGEVENT_UP, Route11Gate2F_BinocularsRightScript

	def_object_events
	object_event  4,  2, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route11Gate2F_TurnerScript, -1
	object_event  2,  6, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route11Gate2F_OaksAideScript, -1
