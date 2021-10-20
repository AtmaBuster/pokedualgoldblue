	object_const_def
	const ROUTE1_KANTO_YOUNGSTER1
	const ROUTE1_KANTO_YOUNGSTER2

Route1_MapScripts:
	def_scene_scripts

	def_callbacks

Route1_MartGuyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_POTION_SAMPLE
	iftrue .GotItem
	writetext .GiveSampleText
	verbosegiveitem POTION
	iffalse .BagFull
	setevent EVENT_GOT_POTION_SAMPLE
.BagFull
	closetext
	end

.GotItem
	writetext .AfterItemText
	waitbutton
	closetext
	end

.GiveSampleText:
	text "Hi! I work at a"
	line "#MON MART."

	para "It's a convenient"
	line "shop, so please"
	cont "visit us in"
	cont "VIRIDIAN CITY."

	para "I know, I'll give"
	line "you a sample!"
	cont "Here you go!"
	prompt

.AfterItemText:
	text "We also carry"
	line "# BALLs for"
	cont "catching #MON!"
	done

Route1_LedgeKidScript:
	jumptextfaceplayer .Text
.Text:
	text "See those ledges"
	line "along the road?"

	para "It's a bit scary,"
	line "but you can jump"
	cont "from them."

	para "You can get back"
	line "to PALLET TOWN"
	cont "quicker that way."
	done

Route1_SignScript:
	jumptext .Text
.Text
	text "ROUTE 1"
	line "PALLET TOWN -"
	cont "VIRIDIAN CITY"
	done

Route1_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event  9, 27, BGEVENT_READ, Route1_SignScript

	def_object_events
	object_event  5, 24, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route1_MartGuyScript, -1
	object_event 15, 13, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route1_LedgeKidScript, -1
