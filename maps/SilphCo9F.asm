	object_const_def
	const SILPHCO9F_KANTO_NURSE
	const SILPHCO9F_KANTO_ROCKET1
	const SILPHCO9F_KANTO_SCIENTIST
	const SILPHCO9F_KANTO_ROCKET2

SilphCo9F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, .Doors

.Doors:
	checkevent EVENT_SILPH_CO_9F_DOOR_1
	iftrue .SkipDoor1
	changeblock 2, 8, $5f
.SkipDoor1:
	checkevent EVENT_SILPH_CO_9F_DOOR_2
	iftrue .SkipDoor2
	changeblock 18, 4, $54
.SkipDoor2:
	checkevent EVENT_SILPH_CO_9F_DOOR_3
	iftrue .SkipDoor3
	changeblock 18, 10, $54
.SkipDoor3:
	checkevent EVENT_SILPH_CO_9F_DOOR_4
	iftrue .SkipDoor3
	changeblock 10, 12, $5f
.SkipDoor4:
	endcallback

SilphCo9F_Door1:
	cardkeydoor 1, 4, $0e, EVENT_SILPH_CO_9F_DOOR_1

SilphCo9F_Door2:
	cardkeydoor 9, 2, $0e, EVENT_SILPH_CO_9F_DOOR_2

SilphCo9F_Door3:
	cardkeydoor 9, 5, $0e, EVENT_SILPH_CO_9F_DOOR_3

SilphCo9F_Door4:
	cardkeydoor 5, 6, $0e, EVENT_SILPH_CO_9F_DOOR_4

TrainerRocketGrunt36:
	trainer ROCKET_GEN1, GRUNT36_GEN1, EVENT_BEAT_ROCKET_GRUNT36_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Your #MON seem"
	line "to adore you, kid!"
	done

.BeatenText:
	text "Ghaaah!"
	done

.AfterText:
	text "If I had started"
	line "as a trainer at"
	cont "your age..."
	done

TrainerScientistEd:
	trainer SCIENTIST_GEN1, ED_GEN1, EVENT_BEAT_SCIENTIST_ED_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Your #MON have"
	line "weak points! I"
	cont "can nail them!"
	done

.BeatenText:
	text "You hammered me!"
	done

.AfterText:
	text "Exploiting weak"
	line "spots does work!"
	cont "Think about"
	cont "element types!"
	done

TrainerRocketGrunt37:
	trainer ROCKET_GEN1, GRUNT37_GEN1, EVENT_BEAT_ROCKET_GRUNT37_GEN1, .SeenText, .BeatenText, 0, .Script
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
	text "Warg! Brothers,"
	line "I lost!"
	done

.AfterText:
	text "My brothers will"
	line "avenge me!"
	done

SilphCo9F_NurseScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_GIOVANNI2_GEN1
	iftrue .After
	writetext .Text1
	waitbutton
	special FadeOutPalettes
	pause 3
	special HealParty
	special FadeInPalettes
	writetext .Text2
	waitbutton
	closetext
	end

.After:
	writetext .Text3
	waitbutton
	closetext
	end

.Text1:
	text "You look tired!"
	line "You should take a"
	cont "quick nap!"
	done

.Text2:
	text "Don't give up!"
	done

.Text3:
	text "Thank you so"
	line "much!"
	done

SilphCo9F_HiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_SILPH_CO_9F_HIDDEN_MAX_POTION

SilphCo9F_MapEvents:
	def_warp_events
	warp_event 14,  0, SILPH_CO_10F, 1
	warp_event 16,  0, SILPH_CO_8F, 1
	warp_event 18,  0, SILPH_CO_ELEVATOR, 1
	warp_event  9,  3, SILPH_CO_3F, 8
	warp_event 17, 15, SILPH_CO_5F, 5

	def_coord_events

	def_bg_events
	bg_event  2, 15, BGEVENT_ITEM, SilphCo9F_HiddenMaxPotion
	bg_event  3,  8, BGEVENT_KEYDOOR, SilphCo9F_Door1
	bg_event  3,  9, BGEVENT_KEYDOOR, SilphCo9F_Door1
	bg_event 18,  4, BGEVENT_KEYDOOR, SilphCo9F_Door2
	bg_event 19,  4, BGEVENT_KEYDOOR, SilphCo9F_Door2
	bg_event 18, 10, BGEVENT_KEYDOOR, SilphCo9F_Door3
	bg_event 19, 10, BGEVENT_KEYDOOR, SilphCo9F_Door3
	bg_event 11, 12, BGEVENT_KEYDOOR, SilphCo9F_Door4
	bg_event 11, 13, BGEVENT_KEYDOOR, SilphCo9F_Door4

	def_object_events
	object_event  3, 14, SPRITE_KANTO_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo9F_NurseScript, -1
	object_event  2,  4, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerRocketGrunt36, EVENT_SAFFRON_CITY_ROCKET_GROUP1
	object_event 21, 13, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerScientistEd, EVENT_SAFFRON_CITY_ROCKET_GROUP1
	object_event 13, 16, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerRocketGrunt37, EVENT_SAFFRON_CITY_ROCKET_GROUP1
