	object_const_def
	const VERMILIONOLDRODHOUSE_FISHING_GURU

VermilionOldRodHouse_MapScripts:
	def_scene_scripts

	def_callbacks

VermilionOldRodHouse_GuruScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_OLD_ROD_KANTO
	iftrue .HaveRod
	writetext .IntroText
	yesorno
	iffalse .Refused
	writetext .LikeYourStyleText
	waitbutton
	verbosegiveitem OLD_ROD
	iffalse .BagFull
	setevent EVENT_GOT_OLD_ROD_KANTO
	writetext .WayOfLifeText
	waitbutton
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
	line "GURU!"

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

.WayOfLifeText:
	text "Fishing is a way"
	line "of life!"

	para "From the seas to"
	line "rivers, go out"
	cont "and land the big"
	cont "one, young one!"
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

VermilionOldRodHouse_MapEvents:
	def_warp_events
	warp_event  2,  7, VERMILION_CITY, 9
	warp_event  3,  7, VERMILION_CITY, 9

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionOldRodHouse_GuruScript, -1
