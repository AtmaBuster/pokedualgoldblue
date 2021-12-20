	object_const_def
	const ROCKETHIDEOUTB1F_KANTO_ROCKET1
	const ROCKETHIDEOUTB1F_KANTO_ROCKET2
	const ROCKETHIDEOUTB1F_KANTO_ROCKET3
	const ROCKETHIDEOUTB1F_KANTO_ROCKET4
	const ROCKETHIDEOUTB1F_KANTO_ROCKET5
	const ROCKETHIDEOUTB1F_POKE_BALL1
	const ROCKETHIDEOUTB1F_POKE_BALL2

RocketHideoutB1F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, .Door

.Door:
	checkevent EVENT_BEAT_ROCKET_GRUNT12_GEN1
	iftrue .KeepOpen
	changeblock $18, $10, $54 ; door
.KeepOpen:
	endcallback

TrainerRocketGrunt8:
	trainer ROCKET_GEN1, GRUNT8_GEN1, EVENT_BEAT_ROCKET_GRUNT8_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Who are you? How"
	line "did you get here?"
	done

.BeatenText:
	text "Oww!"
	line "Beaten!"
	done

.AfterText:
	text "Are you dissing"
	line "TEAM ROCKET?"
	done

TrainerRocketGrunt9:
	trainer ROCKET_GEN1, GRUNT9_GEN1, EVENT_BEAT_ROCKET_GRUNT9_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "You broke into"
	line "our operation?"
	done

.BeatenText:
	text "Burnt!"
	done

.AfterText:
	text "You're not going"
	line "to get away with"
	cont "this, brat!"
	done

TrainerRocketGrunt10:
	trainer ROCKET_GEN1, GRUNT10_GEN1, EVENT_BEAT_ROCKET_GRUNT10_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Intruder alert!"
	done

.BeatenText:
	text "I"
	line "can't do it!"
	done

.AfterText:
	text "SILPH SCOPE?"
	line "I don't know"
	cont "where it is!"
	done

TrainerRocketGrunt11:
	trainer ROCKET_GEN1, GRUNT11_GEN1, EVENT_BEAT_ROCKET_GRUNT11_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Why did you come"
	line "here?"
	done

.BeatenText:
	text "This"
	line "won't do!"
	done

.AfterText:
	text "OK, I'll talk!"
	line "Take the elevator"
	cont "to see my BOSS!"
	done

TrainerRocketGrunt12:
	trainer ROCKET_GEN1, GRUNT12_GEN1, EVENT_BEAT_ROCKET_GRUNT12_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	changeblock $18, $10, $0e ; empty
	reloadmappart
	closetext
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Are you lost, you"
	line "little rat?"
	done

.BeatenText:
	text "Why...?@"
	text_end

.AfterText:
	text "Uh-oh, that fight"
	line "opened the door!"
	done

RocketHideoutB1F_HiddenPPUp:
	hiddenitem PP_UP, EVENT_ROCKET_HIDEOUT_B1F_HIDDEN_PP_UP

RocketHideoutB1F_EscapeRopeScript:
	itemball ESCAPE_ROPE

RocketHideoutB1F_HyperPotionScript:
	itemball HYPER_POTION

RocketHideoutB1F_MapEvents:
	def_warp_events
	warp_event 23,  2, ROCKET_HIDEOUT_B2F, 1
	warp_event 21,  2, GAME_CORNER, 3
	warp_event 24, 19, ROCKET_HIDEOUT_ELEVATOR, 1
	warp_event 21, 24, ROCKET_HIDEOUT_B2F, 4
	warp_event 25, 19, ROCKET_HIDEOUT_ELEVATOR, 2

	def_coord_events

	def_bg_events
	bg_event 21, 15, BGEVENT_ITEM, RocketHideoutB1F_HiddenPPUp

	def_object_events
	object_event 26,  8, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerRocketGrunt8, -1
	object_event 12,  6, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerRocketGrunt9, -1
	object_event 18, 17, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerRocketGrunt10, -1
	object_event 15, 25, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerRocketGrunt11, -1
	object_event 28, 18, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerRocketGrunt12, -1
	object_event 11, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB1F_EscapeRopeScript, EVENT_ROCKET_HIDEOUT_B1F_ESCAPE_ROPE
	object_event  9, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB1F_HyperPotionScript, EVENT_ROCKET_HIDEOUT_B1F_HYPER_POTION
