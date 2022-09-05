	object_const_def
	const CERULEANGYM_BRUNETTE_GIRL
	const CERULEANGYM_COOLTRAINER_F
	const CERULEANGYM_SWIMMER_GUY
	const CERULEANGYM_KANTO_GYM_GUIDE

CeruleanGym_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanGym_MistyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MISTY_GEN1
	iftrue .FightDone
	writetext .IntroText
	waitbutton
	closetext
	winlosstext .WinText, 0
	loadtrainer MISTY_GEN1, MISTY1_GEN1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MISTY_GEN1
	opentext
	writetext .GotBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_CASCADEBADGE
.FightDone:
	checkevent EVENT_GOT_TM_BUBBLEBEAM
	iftrue .SpeechAfterTM
	setevent EVENT_BEAT_JR_TRAINER_F_DIANA_GEN1
	setevent EVENT_BEAT_SWIMMER_LUIS_GEN1

	writetext .BadgeText
	promptbutton
IF DEF(_GOLD)
	verbosegiveitem TM_DYNAMICPUNCH ; temp
ELIF DEF(_BLUE)
	verbosegiveitem TM_BUBBLEBEAM
ENDC
	iffalse .NoRoom
	setevent EVENT_GOT_TM_BUBBLEBEAM
	closetext
	end

.SpeechAfterTM:
	writetext .FightDoneText
	waitbutton
.NoRoom:
	closetext
	end

.IntroText:
	text "Hi, you're a new"
	line "face!"

	para "Trainers who want"
	line "to turn pro have"
	cont "to have a policy"
	cont "about #MON!"

	para "What is your"
	line "approach when you"
	cont "catch #MON?"

	para "My policy is an"
	line "all-out offensive"
	cont "with water-type"
	cont "#MON!"
	done

.WinText:
	text "Wow! You're too"
	line "much!"

	para "All right!"

	para "You can have the"
	line "CASCADEBADGE to"
	cont "show you beat me!"
	done

.GotBadgeText:
	text "<PLAYER> received"
	line "the CASCADEBADGE!"
	done

.BadgeText:
	text "The CASCADEBADGE"
	line "makes all #MON"
	cont "up to L30 obey!"

	para "That includes"
	line "even outsiders!"

	para "There's more, you"
	line "can now use CUT"
	cont "any time!"

	para "You can CUT down"
	line "small bushes to"
	cont "open new paths!"

	para "You can also have"
	line "my favorite TM!"
	done

.FightDoneText:
	text "TM11 teaches"
	line "BUBBLEBEAM!"

	para "Use it on an"
	line "aquatic #MON!"
	done

TrainerJrTrainerFDiana:
	trainer JR_TRAINER_F_GEN1, DIANA_GEN1, EVENT_BEAT_JR_TRAINER_F_DIANA_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I'm more than good"
	line "enough for you!"

	para "MISTY can wait!"
	done

.BeatenText:
	text "You overwhelmed"
	line "me!"
	done

.AfterText:
	text "You have to face"
	line "other trainers to"
	cont "find out how good"
	cont "you really are."
	done

TrainerSwimmerLuis:
	trainer SWIMMER_GEN1, LUIS_GEN1, EVENT_BEAT_SWIMMER_LUIS_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Splash!"

	para "I'm first up!"
	line "Let's do it!"
	done

.BeatenText:
	text "That can't be!"
	done

.AfterText:
	text "MISTY is going to"
	line "keep improving!"

	para "She won't lose to"
	line "someone like you!"
	done

CeruleanGym_GymGuyScript:
	faceplayer
	opentext
	checkflag ENGINE_CASCADEBADGE
	iftrue .HaveBadge
	writetext .AdviceText
	waitbutton
	closetext
	end

.HaveBadge:
	writetext .DoneText
	waitbutton
	closetext
	end

.AdviceText:
	text "Yo! Champ in"
	line "making!"

	para "Here's my advice!"

	para "The LEADER, MISTY,"
	line "is a pro who uses"
	cont "water #MON!"

	para "You can drain all"
	line "their water with"
	cont "plant #MON!"

	para "Or, zap them with"
	line "electricity!"
	done

.DoneText:
	text "You beat MISTY!"
	line "What'd I tell ya?"

	para "You and me kid,"
	line "we make a pretty"
	cont "darn good team!"
	done

CeruleanGym_StatueScript:
	opentext
	writetext .Text1
	checkflag ENGINE_CASCADEBADGE
	iftrue .HaveBadge
	writetext .Text2_NoBadge
	waitbutton
	closetext
	end

.HaveBadge:
	writetext .Text2_Badge
	waitbutton
	closetext
	end

.Text1:
	text "CERULEAN CITY"
	line "#MON GYM"
	cont "LEADER: MISTY"
	prompt

.Text2_NoBadge:
	text "WINNING TRAINERS:"
	line "<RIVAL>"
	done

.Text2_Badge:
	text "WINNING TRAINERS:"
	line "<RIVAL>"
	cont "<PLAYER>"
	done

CeruleanGym_MapEvents:
	def_warp_events
	warp_event  4, 13, CERULEAN_CITY, 4
	warp_event  5, 13, CERULEAN_CITY, 4

	def_coord_events

	def_bg_events
	bg_event  3, 11, BGEVENT_UP, CeruleanGym_StatueScript
	bg_event  6, 11, BGEVENT_UP, CeruleanGym_StatueScript

	def_object_events
	object_event  4,  2, SPRITE_BRUNETTE_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanGym_MistyScript, -1
	object_event  2,  3, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerJrTrainerFDiana, -1
	object_event  8,  7, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerSwimmerLuis, -1
	object_event  7, 10, SPRITE_KANTO_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanGym_GymGuyScript, -1
