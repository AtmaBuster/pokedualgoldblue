	object_const_def
	const FUCHSIAGOODRODHOUSE_FISHING_GURU

FuchsiaGoodRodHouse_MapScripts:
	def_scene_scripts

	def_callbacks

FuchsiaGoodRodHouse_GuruScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_GOOD_ROD_KANTO
	iftrue .HaveRod
	writetext .IntroText
	yesorno
	iffalse .Refused
	writetext .LikeYourStyleText
	waitbutton
	verbosegiveitem GOOD_ROD
	iffalse .BagFull
	setevent EVENT_GOT_GOOD_ROD_KANTO
.BagFull:
	closetext
	end

.Refused:
	writetext .RefusedText
	waitbutton
	closetext
	end

.HaveRod:
	writetext .AfterText
	waitbutton
	closetext
	end

.IntroText:
	text "I'm the FISHING"
	line "GURU's older"
	cont "brother!"

	para "I simply Looove"
	line "fishing!"

	para "Do you like to"
	line "fish?"
	done

.LikeYourStyleText:
	text "Grand! I like"
	line "your style!"

	para "Take this and"
	line "fish, young one!"
	done

.RefusedText:
	text "Oh... That's so"
	line "disappointing..."
	done

.AfterText:
	text "Hello there,"
	line "<PLAYER>!"

	para "How are the fish"
	line "biting?"
	done

FuchsiaGoodRodHouse_MapEvents:
	def_warp_events
	warp_event  2,  0, FUCHSIA_CITY, 9
	warp_event  2,  7, FUCHSIA_CITY, 8
	warp_event  3,  7, FUCHSIA_CITY, 8

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaGoodRodHouse_GuruScript, -1
