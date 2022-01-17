	object_const_def
	const SILPHCO6F_SILPH_WORKER1
	const SILPHCO6F_SILPH_WORKER2
	const SILPHCO6F_KANTO_ERIKA1
	const SILPHCO6F_KANTO_ERIKA2
	const SILPHCO6F_SILPH_WORKER3
	const SILPHCO6F_KANTO_ROCKET1
	const SILPHCO6F_KANTO_SCIENTIST
	const SILPHCO6F_KANTO_ROCKET2
	const SILPHCO6F_POKE_BALL1
	const SILPHCO6F_POKE_BALL2

SilphCo6F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, .Doors

.Doors:
	checkevent EVENT_SILPH_CO_6F_DOOR_1
	iftrue .SkipDoor1
	changeblock 4, 12, $5f
.SkipDoor1:
	endcallback

SilphCo6F_Door1:
	cardkeydoor 2, 6, $0e, EVENT_SILPH_CO_6F_DOOR_1

TrainerRocketGrunt29:
	trainer ROCKET_GEN1, GRUNT29_GEN1, EVENT_BEAT_ROCKET_GRUNT29_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I am one of the 4"
	line "ROCKET BROTHERS!"
	done

.BeatenText:
	text "Flame out!"
	done

.AfterText:
	text "No matter!"
	line "My brothers will"
	cont "avenge me!"
	done

TrainerScientistTaylor:
	trainer SCIENTIST_GEN1, TAYLOR_GEN1, EVENT_BEAT_SCIENTIST_TAYLOR_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "That rotten"
	line "PRESIDENT!"

	para "He shouldn't have"
	line "sent me to the"
	cont "TIKSI BRANCH!"
	done

.BeatenText:
	text "Shoot!"
	done

.AfterText:
	text "TIKSI BRANCH?"
	line "It's in Russian"
	cont "no man's land!"
	done

TrainerRocketGrunt30:
	trainer ROCKET_GEN1, GRUNT30_GEN1, EVENT_BEAT_ROCKET_GRUNT30_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "You dare betray"
	line "TEAM ROCKET?"
	done

.BeatenText:
	text "You traitor!"
	done

.AfterText:
	text "If you stand for"
	line "justice, you"
	cont "betray evil!"
	done

SilphCo6F_HPUpScript:
	itemball HP_UP

SilphCo6F_XAccuracyScript:
	itemball X_ACCURACY

SilphCo6F_Worker1Script:
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
	text "The ROCKETs came"
	line "and took over the"
	cont "building!"
	done

.Text2:
	text "Well, better get"
	line "back to work!"
	done

SilphCo6F_Worker2Script:
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
	text "Oh dear, oh dear."
	line "Help me please!"
	done

.Text2:
	text "We got engaged!"
	line "Heheh!"
	done

SilphCo6F_Woman1Script:
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
	text "Look at him! He's"
	line "such a coward!"
	done

.Text2:
	text "I feel so sorry"
	line "for him, I have"
	cont "to marry him!"
	done

SilphCo6F_Woman2Script:
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
	text "TEAM ROCKET is"
	line "trying to conquer"
	cont "the world with"
	cont "#MON!"
	done

.Text2:
	text "TEAM ROCKET ran"
	line "because of you!"
	done

SilphCo6F_Worker3Script:
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
	text "They must have"
	line "targeted SILPH"
	cont "for our #MON"
	cont "products."
	done

.Text2:
	text "Come work for"
	line "SILPH when you"
	cont "get older!"
	done

SilphCo6F_MapEvents:
	def_warp_events
	warp_event 16,  0, SILPH_CO_7F, 2
	warp_event 14,  0, SILPH_CO_5F, 1
	warp_event 18,  0, SILPH_CO_ELEVATOR, 1
	warp_event  3,  3, SILPH_CO_4F, 5
	warp_event 23,  3, SILPH_CO_2F, 7

	def_coord_events

	def_bg_events
	bg_event  5, 12, BGEVENT_KEYDOOR, SilphCo6F_Door1
	bg_event  5, 13, BGEVENT_KEYDOOR, SilphCo6F_Door1

	def_object_events
	object_event 10,  6, SPRITE_SILPH_WORKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo6F_Worker1Script, -1
	object_event 20,  6, SPRITE_SILPH_WORKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo6F_Worker2Script, -1
	object_event 21,  6, SPRITE_KANTO_ERIKA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo6F_Woman1Script, -1
	object_event 11, 10, SPRITE_KANTO_ERIKA, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo6F_Woman2Script, -1
	object_event 18, 13, SPRITE_SILPH_WORKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo6F_Worker3Script, -1
	object_event 17,  3, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerRocketGrunt29, EVENT_SAFFRON_CITY_ROCKET_GROUP1
	object_event  7,  8, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerScientistTaylor, EVENT_SAFFRON_CITY_ROCKET_GROUP1
	object_event 14, 15, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerRocketGrunt30, EVENT_SAFFRON_CITY_ROCKET_GROUP1
	object_event  3, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo6F_HPUpScript, EVENT_SILPH_CO_6F_HP_UP
	object_event  2, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo6F_XAccuracyScript, EVENT_SILPH_CO_6F_X_ACCURACY
