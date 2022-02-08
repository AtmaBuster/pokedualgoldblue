	object_const_def
	const SILPHCO10F_KANTO_ROCKET
	const SILPHCO10F_KANTO_SCIENTIST
	const SILPHCO10F_KANTO_ERIKA
	const SILPHCO10F_POKE_BALL1
	const SILPHCO10F_POKE_BALL2
	const SILPHCO10F_POKE_BALL3

SilphCo10F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, .Doors

.Doors:
	checkevent EVENT_SILPH_CO_10F_DOOR_1
	iftrue .SkipDoor1
	changeblock 10, 8, $54
.SkipDoor1:
	endcallback

SilphCo10F_Door1:
	cardkeydoor 5, 4, $0e, EVENT_SILPH_CO_10F_DOOR_1

TrainerRocketGrunt38:
	trainer ROCKET_GEN1, GRUNT38_GEN1, EVENT_BEAT_ROCKET_GRUNT38_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Welcome to the"
	line "10F! So good of"
	cont "you to join me!"
	done

.BeatenText:
	text "I'm stunned!"
	done

.AfterText:
	text "Nice try, but the"
	line "boardroom is up"
	cont "one more floor!"
	done

TrainerScientistTravis:
	trainer SCIENTIST_GEN1, TRAVIS_GEN1, EVENT_BEAT_SCIENTIST_TRAVIS_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Enough of your"
	line "silly games!"
	done

.BeatenText:
	text "No continues left!"
	done

.AfterText:
	text "Are you satisfied"
	line "with beating me?"
	cont "Then go on home!"
	done

SilphCo10F_WomanScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_GIOVANNI2_GEN1
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
	text "Waaaaa!"
	cont "I'm scared!"
	done

.Text2:
	text "Please keep quiet"
	line "about my crying!"
	done

SilphCo10F_TMEarthquakeScript:
	itemball TM_EARTHQUAKE
	
SilphCo10F_RareCandyScript:
	itemball RARE_CANDY

SilphCo10F_CarbosScript:
	itemball CARBOS

SilphCo10F_MapEvents:
	def_warp_events
	warp_event  8,  0, SILPH_CO_9F, 1
	warp_event 10,  0, SILPH_CO_11F, 1
	warp_event 12,  0, SILPH_CO_ELEVATOR, 1
	warp_event  9, 11, SILPH_CO_4F, 4
	warp_event 13, 15, SILPH_CO_4F, 6
	warp_event 13,  7, SILPH_CO_4F, 7

	def_coord_events

	def_bg_events
	bg_event 10,  8, BGEVENT_KEYDOOR, SilphCo10F_Door1
	bg_event 11,  8, BGEVENT_KEYDOOR, SilphCo10F_Door1

	def_object_events
	object_event  1,  9, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerRocketGrunt38, EVENT_SAFFRON_CITY_ROCKET_GROUP1
	object_event 10,  2, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerScientistTravis, EVENT_SAFFRON_CITY_ROCKET_GROUP1
	object_event  9, 15, SPRITE_KANTO_ERIKA, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo10F_WomanScript, -1
	object_event  2, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilphCo10F_TMEarthquakeScript, EVENT_SILPH_CO_10F_TM_EARTHQUAKE
	object_event  4, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilphCo10F_RareCandyScript, EVENT_SILPH_CO_10F_RARE_CANDY
	object_event  5, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilphCo10F_CarbosScript, EVENT_SILPH_CO_10F_CARBOS
