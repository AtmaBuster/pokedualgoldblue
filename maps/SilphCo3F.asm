	object_const_def
	const SILPHCO3F_SILPH_WORKER
	const SILPHCO3F_KANTO_ROCKET
	const SILPHCO3F_KANTO_SCIENTIST
	const SILPHCO3F_POKE_BALL

SilphCo3F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, .Doors

.Doors:
	checkevent EVENT_SILPH_CO_3F_DOOR_1
	iftrue .SkipDoor1
	changeblock 8, 8, $5f
.SkipDoor1:
	checkevent EVENT_SILPH_CO_3F_DOOR_2
	iftrue .SkipDoor2
	changeblock 16, 8, $5f
.SkipDoor2:
	endcallback

SilphCo3F_WorkerScript:
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
	text "I work for SILPH."
	line "What should I do?"
	done

.Text2:
	text "<PLAYER>! You and"
	line "your #MON"
	cont "saved us!"
	done

TrainerRocketGrunt24:
	trainer ROCKET_GEN1, GRUNT24_GEN1, EVENT_BEAT_ROCKET_GRUNT24_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Quit messing with"
	line "us, kid!"
	done

.BeatenText:
	text "I give"
	line "up!"
	done

.AfterText:
	text "A hint? You can"
	line "open doors with a"
	cont "CARD KEY!"
	done

TrainerScientistJose:
	trainer SCIENTIST_GEN1, JOSE_GEN1, EVENT_BEAT_SCIENTIST_JOSE_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I support TEAM"
	line "ROCKET more than"
	cont "I support SILPH!"
	done

.BeatenText:
	text "You"
	line "really got me!"
	done
	
.AfterText:
	text "Humph..."

	para "TEAM ROCKET said"
	line "that if I helped"
	cont "them, they'd let"
	cont "me study #MON!"
	done

SilphCo3F_HyperPotionScript:
	itemball HYPER_POTION

SilphCo3F_Door1:
	cardkeydoor 4, 4, $0e, EVENT_SILPH_CO_3F_DOOR_1

SilphCo3F_Door2:
	cardkeydoor 8, 4, $0e, EVENT_SILPH_CO_3F_DOOR_2

SilphCo3F_MapEvents:
	def_warp_events
	warp_event 26,  0, SILPH_CO_2F, 2
	warp_event 24,  0, SILPH_CO_4F, 1
	warp_event 20,  0, SILPH_CO_ELEVATOR, 1
	warp_event 23, 11, SILPH_CO_3F, 10
	warp_event  3,  3, SILPH_CO_5F, 6
	warp_event  3, 15, SILPH_CO_5F, 7
	warp_event 27,  3, SILPH_CO_2F, 4
	warp_event  3, 11, SILPH_CO_9F, 4
	warp_event 11, 11, SILPH_CO_7F, 5
	warp_event 27, 15, SILPH_CO_3F, 4

	def_coord_events

	def_bg_events
	bg_event  9,  8, BGEVENT_KEYDOOR, SilphCo3F_Door1
	bg_event  9,  9, BGEVENT_KEYDOOR, SilphCo3F_Door1
	bg_event 17,  8, BGEVENT_KEYDOOR, SilphCo3F_Door2
	bg_event 17,  9, BGEVENT_KEYDOOR, SilphCo3F_Door2

	def_object_events
	object_event 24,  8, SPRITE_SILPH_WORKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo3F_WorkerScript, -1
	object_event 20,  7, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerRocketGrunt24, EVENT_SAFFRON_CITY_ROCKET_GROUP1
	object_event  7,  9, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerScientistJose, EVENT_SAFFRON_CITY_ROCKET_GROUP1
	object_event  8,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilphCo3F_HyperPotionScript, EVENT_SILPH_CO_3F_HYPER_POTION
