	object_const_def
	const ROCKETHIDEOUTB3F_KANTO_ROCKET1
	const ROCKETHIDEOUTB3F_KANTO_ROCKET2
	const ROCKETHIDEOUTB3F_POKE_BALL1
	const ROCKETHIDEOUTB3F_POKE_BALL2

RocketHideoutB3F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerRocketGrunt14:
	trainer ROCKET_GEN1, GRUNT14_GEN1, EVENT_BEAT_ROCKET_GRUNT14_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Stop meddling in"
	line "TEAM ROCKET's"
	cont "affairs!"
	done

.BeatenText:
	text "Oof! Taken down!"
	done

.AfterText:
	text "SILPH SCOPE?"
	line "The machine the"
	cont "BOSS stole. It's"
	cont "here somewhere."
	done

TrainerRocketGrunt15:
	trainer ROCKET_GEN1, GRUNT15_GEN1, EVENT_BEAT_ROCKET_GRUNT15_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "We got word from"
	line "upstairs that you"
	cont "were coming!"
	done

.BeatenText:
	text "What? I lost? No!"
	done

.AfterText:
	text "Go ahead and go!"
	line "But, you need the"
	cont "LIFT KEY to run"
	cont "the elevator!"
	done

RocketHideoutB3F_TMDoubleEdgeScript:
IF DEF(_GOLD)
	itemball TM_DYNAMICPUNCH
ELIF DEF(_BLUE)
	itemball TM_DOUBLE_EDGE
ENDC

RocketHideoutB3F_RareCandyScript:
	itemball RARE_CANDY

RocketHideoutB3F_HiddenNugget:
	hiddenitem NUGGET, EVENT_ROCKET_HIDEOUT_B3F_HIDDEN_NUGGET

RocketHideoutB3F_MapEvents:
	def_warp_events
	warp_event 25,  6, ROCKET_HIDEOUT_B2F, 2
	warp_event 19, 18, ROCKET_HIDEOUT_B4F, 1

	def_coord_events

	def_bg_events
	bg_event 27, 17, BGEVENT_ITEM, RocketHideoutB3F_HiddenNugget

	def_object_events
	object_event 10, 22, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerRocketGrunt14, -1
	object_event 26, 12, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerRocketGrunt15, -1
	object_event 26, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB3F_TMDoubleEdgeScript, EVENT_ROCKET_HIDEOUT_B3F_TM_DOUBLE_EDGE
	object_event 20, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB3F_RareCandyScript, EVENT_ROCKET_HIDEOUT_B3F_RARE_CANDY
