	object_const_def
	const ROCKETHIDEOUTB4F_GIOVANNI
	const ROCKETHIDEOUTB4F_KANTO_ROCKET1
	const ROCKETHIDEOUTB4F_KANTO_ROCKET2
	const ROCKETHIDEOUTB4F_KANTO_ROCKET3
	const ROCKETHIDEOUTB4F_POKE_BALL1
	const ROCKETHIDEOUTB4F_POKE_BALL2
	const ROCKETHIDEOUTB4F_POKE_BALL3
	const ROCKETHIDEOUTB4F_POKE_BALL4
	const ROCKETHIDEOUTB4F_POKE_BALL5

RocketHideoutB4F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, .Door

.Door:
	checkevent EVENT_BEAT_ROCKET_GRUNT16_GEN1
	iffalse .Close
	checkevent EVENT_BEAT_ROCKET_GRUNT17_GEN1
	iftrue .KeepOpen
.Close:
	changeblock $18, $0a, $2d ; door
.KeepOpen:
	endcallback

RocketHideoutB4F_GiovanniScript:
	faceplayer
	opentext
	writetext .IntroText
	waitbutton
	closetext
	winlosstext .WinText, 0
	loadtrainer BOSS_GIOVANNI_GEN1, GIOVANNI1_GEN1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_GIOVANNI1_GEN1
	opentext
	writetext .AfterText
	waitbutton
	special FadeBlackQuickly
	pause 3
	disappear ROCKETHIDEOUTB4F_GIOVANNI
	appear ROCKETHIDEOUTB4F_POKE_BALL4
	special FadeInQuickly
	closetext
	end

.IntroText:
	text "So! I must say, I"
	line "am impressed you"
	cont "got here!"
	done

.WinText:
	text "WHAT! This cannot"
	line "be!"
	done

.AfterText:
	text "I see that you"
	line "raise #MON"
	cont "with utmost care."

	para "A child like you"
	line "would never"
	cont "understand what I"
	cont "hope to achieve."

	para "I shall step"
	line "aside this time!"

	para "I hope we meet"
	line "again..."
	done

TrainerRocketGrunt16:
	trainer ROCKET_GEN1, GRUNT16_GEN1, EVENT_BEAT_ROCKET_GRUNT16_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	scall RocketHideoutB4F_TryOpenDoor
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I know you! You"
	line "ruined our plans"
	cont "at MT.MOON!"
	done

.BeatenText:
	text "Burned again!"
	done

.AfterText:
	text "Do you have"
	line "something against"
	cont "TEAM ROCKET?"
	done

TrainerRocketGrunt17:
	trainer ROCKET_GEN1, GRUNT17_GEN1, EVENT_BEAT_ROCKET_GRUNT17_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	scall RocketHideoutB4F_TryOpenDoor
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "How can you not"
	line "see the beauty of"
	cont "our evil?"
	done

.BeatenText:
	text "Ayaya!"
	done

.AfterText:
	text "BOSS! I'm sorry I"
	line "failed you!"
	done

TrainerRocketGrunt18:
	trainer ROCKET_GEN1, GRUNT18_GEN1, EVENT_BEAT_ROCKET_GRUNT18_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	checkevent EVENT_ROCKET_HIDEOUT_B4F_DROPPED_KEY
	iftrue DummyScript
	appear ROCKETHIDEOUTB4F_POKE_BALL5
	setevent EVENT_ROCKET_HIDEOUT_B4F_DROPPED_KEY
	end

.SeenText:
	text "The elevator"
	line "doesn't work? Who"
	cont "has the LIFT KEY?"
	done

.BeatenText:
	text "No!"
	done

.AfterText:
	text "Oh no! I dropped"
	line "the LIFT KEY!"
	done

RocketHideoutB4F_TryOpenDoor:
	checkjustbattled
	iffalse DummyScript
	checkevent EVENT_BEAT_ROCKET_GRUNT16_GEN1
	iffalse DummyScript
	checkevent EVENT_BEAT_ROCKET_GRUNT17_GEN1
	iffalse DummyScript
	changeblock $18, $0a, $0e ; empty
	reloadmappart
	closetext
	end

RocketHideoutB4F_HPUpScript:
	itemball HP_UP

RocketHideoutB4F_TMRazorWindScript:
IF DEF(_GOLD)
	itemball TM_DYNAMICPUNCH
ELIF DEF(_BLUE)
	itemball TM_RAZOR_WIND
ENDC
RocketHideoutB4F_IronScript:
	itemball IRON

RocketHideoutB4F_SilphScopeScript:
	itemball SILPH_SCOPE

RocketHideoutB4F_LiftKeyScript:
	itemball LIFT_KEY

RocketHideoutB4F_HiddenSuperPotion:
	hiddenitem SUPER_POTION, EVENT_ROCKET_HIDEOUT_B4F_HIDDEN_SUPER_POTION

RocketHideoutB4F_MapEvents:
	def_warp_events
	warp_event 19, 10, ROCKET_HIDEOUT_B3F, 2
	warp_event 24, 15, ROCKET_HIDEOUT_ELEVATOR, 1
	warp_event 25, 15, ROCKET_HIDEOUT_ELEVATOR, 2

	def_coord_events

	def_bg_events
	bg_event 25,  1, BGEVENT_ITEM, RocketHideoutB4F_HiddenSuperPotion

	def_object_events
	object_event 25,  3, SPRITE_GIOVANNI, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RocketHideoutB4F_GiovanniScript, EVENT_ROCKET_HIDEOUT_B4F_GIOVANNI
	object_event 23, 12, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerRocketGrunt16, -1
	object_event 26, 12, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerRocketGrunt17, -1
	object_event 11,  2, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerRocketGrunt18, -1
	object_event 10, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB4F_HPUpScript, EVENT_ROCKET_HIDEOUT_B4F_HP_UP
	object_event  9,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB4F_TMRazorWindScript, EVENT_ROCKET_HIDEOUT_B4F_TM_RAZOR_WIND
	object_event 12, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB4F_IronScript, EVENT_ROCKET_HIDEOUT_B4F_IRON
	object_event 25,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB4F_SilphScopeScript, EVENT_ROCKET_HIDEOUT_B4F_SILPH_SCOPE
	object_event 10,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB4F_LiftKeyScript, EVENT_ROCKET_HIDEOUT_B4F_LIFT_KEY
