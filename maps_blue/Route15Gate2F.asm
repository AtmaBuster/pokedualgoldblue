	object_const_def
	const ROUTE15GATE2F_KANTO_SCIENTIST

Route15Gate2F_MapScripts:
	def_scene_scripts

	def_callbacks

Route15Gate2F_OaksAideScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_EXP_SHARE
	iftrue .GotItem
	setval 50
	getitemname STRING_BUFFER_3, EXP_SHARE
	farwritetext _OaksAideHiText
	yesorno
	iffalse .ChoseNo
	readvar VAR_DEXCAUGHT
	ifless 50, .NotEnoughMons
	farwritetext _OaksAideHereYouGoText
	verbosegiveitem EXP_SHARE
	iffalse .BagFull
	setevent EVENT_GOT_EXP_SHARE
.GotItem
	writetext .AfterText
	waitbutton
.BagFull
	closetext
	end

.NotEnoughMons
	farwritetext _OaksAideUhOhText1
	setval 50
	farwritetext _OaksAideUhOhText2
	waitbutton
	closetext
	end

.ChoseNo
	setval 50
	farwritetext _OaksAideComeBackText
	waitbutton
	closetext
	end

.AfterText
	text "EXP.ALL gives"
	line "EXP points to all"
	cont "the #MON with"
	cont "you, even if they"
	cont "don't fight."

	para "It does, however,"
	line "reduce the amount"
	cont "of EXP for each"
	cont "#MON."

	para "If you don't need"
	line "it, you should "
	cont "store it via PC."
	done

Route15Gate2F_BinocularsLeftScript:
	opentext
	writetext .Text
	waitbutton
	closetext
	pokepic ARTICUNO
	cry ARTICUNO
	waitbutton
	closepokepic
	closetext
	end

.Text:
	text "Looked into the"
	line "binoculars..."

	para "A large, shining"
	line "bird is flying"
	cont "toward the sea."
	done

Route15Gate2F_BinocularsRightScript:
	jumptext .Text
.Text:
	text "Looked into the"
	line "binoculars."

	para "It looks like a"
	line "small island!"
	done

Route15Gate2F_MapEvents:
	def_warp_events
	warp_event  7,  7, ROUTE_15_GATE_1F, 5

	def_coord_events

	def_bg_events
	bg_event  1,  2, BGEVENT_UP, Route15Gate2F_BinocularsLeftScript
	bg_event  6,  2, BGEVENT_UP, Route15Gate2F_BinocularsRightScript

	def_object_events
	object_event  4,  2, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route15Gate2F_OaksAideScript, -1
