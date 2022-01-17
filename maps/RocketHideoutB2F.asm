	object_const_def
	const ROCKETHIDEOUTB2F_KANTO_ROCKET
	const ROCKETHIDEOUTB2F_POKE_BALL1
	const ROCKETHIDEOUTB2F_POKE_BALL2
	const ROCKETHIDEOUTB2F_POKE_BALL3
	const ROCKETHIDEOUTB2F_POKE_BALL4

RocketHideoutB2F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerRocketGrunt13:
	trainer ROCKET_GEN1, GRUNT13_GEN1, EVENT_BEAT_ROCKET_GRUNT13_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "BOSS said you can"
	line "see GHOSTs with"
	cont "the SILPH SCOPE!"
	done

.BeatenText:
	text "I surrender!"
	done

.AfterText:
	text "The TEAM ROCKET"
	line "HQ has 4 basement"
	cont "floors. Can you"
	cont "reach the BOSS?"
	done

RocketHideoutB2F_MoonStoneScript:
	itemball MOON_STONE

RocketHideoutB2F_NuggetScript:
	itemball NUGGET

RocketHideoutB2F_TMHornDrillScript:
IF DEF(_GOLD)
	itemball TM_DYNAMICPUNCH
ELIF DEF(_BLUE)
	itemball TM_HORN_DRILL
ENDC

RocketHideoutB2F_SuperPotionScript:
	itemball SUPER_POTION

RocketHideoutB2F_MapEvents:
	def_warp_events
	warp_event 27,  8, ROCKET_HIDEOUT_B1F, 1
	warp_event 21,  8, ROCKET_HIDEOUT_B3F, 1
	warp_event 24, 19, ROCKET_HIDEOUT_ELEVATOR, 1
	warp_event 21, 22, ROCKET_HIDEOUT_B1F, 4
	warp_event 25, 19, ROCKET_HIDEOUT_ELEVATOR, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event 20, 12, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerRocketGrunt13, -1
	object_event  1, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB2F_MoonStoneScript, EVENT_ROCKET_HIDEOUT_B2F_MOON_STONE
	object_event 16,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB2F_NuggetScript, EVENT_ROCKET_HIDEOUT_B2F_NUGGET
	object_event  6, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB2F_TMHornDrillScript, EVENT_ROCKET_HIDEOUT_B2F_TM_HORN_DRILL
	object_event  3, 21, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB2F_SuperPotionScript, EVENT_ROCKET_HIDEOUT_B2F_SUPER_POTION
