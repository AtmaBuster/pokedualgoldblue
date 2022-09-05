	object_const_def
	const PEWTERGYM_KANTO_SUPER_NERD
	const PEWTERGYM_COOLTRAINER_M
	const PEWTERGYM_KANTO_GYM_GUIDE

PewterGym_MapScripts:
	def_scene_scripts

	def_callbacks

PewterGym_BrockScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_BROCK_GEN1
	iftrue .FightDone
	writetext .IntroText
	waitbutton
	closetext
	winlosstext .WinText, 0
	loadtrainer BROCK_GEN1, BROCK1_GEN1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BROCK_GEN1
	opentext
	writetext .GotBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_BOULDERBADGE
.FightDone:
	checkevent EVENT_GOT_TM34_BIDE
	iftrue .SpeechAfterTM
	setevent EVENT_BEAT_JR_TRAINER_M_JERRY_GEN1
	setmapscene PEWTER_CITY, SCENE_FINISHED
	setevent EVENT_PEWTER_CITY_YOUNGSTER
	writetext .BadgeText
	promptbutton
IF DEF(_GOLD)
	verbosegiveitem TM_DYNAMICPUNCH ; temp
ELIF DEF(_BLUE)
	verbosegiveitem TM_BIDE
ENDC
	iffalse .NoRoom
	setevent EVENT_GOT_TM34_BIDE
	writetext .TMText
	waitbutton
	closetext
	end

.SpeechAfterTM:
	writetext .FightDoneText
	waitbutton
.NoRoom:
	closetext
	end

.IntroText:
	text "I'm BROCK!"
	line "I'm PEWTER's GYM"
	cont "LEADER!"

	para "I believe in rock"
	line "hard defense and"
	cont "determination!"

	para "That's why my"
	line "#MON are all"
	cont "the rock-type!"

	para "Do you still want"
	line "to challenge me?"
	cont "Fine then! Show"
	cont "me your best!"
	done

.WinText:
	text "I took you for"
	line "granted."

	para "As proof of your"
	line "victory, here's"
	cont "the BOULDERBADGE!"
	done

.GotBadgeText:
	text "<PLAYER> received"
	line "the BOULDERBADGE!"
	done

.BadgeText:
	text "That's an official"
	line "#MON LEAGUE"
	cont "BADGE!"

	para "Its bearer's"
	line "#MON become"
	cont "more powerful!"

	para "The technique"
	line "FLASH can now be"
	cont "used any time!"

	para "Wait! Take this"
	line "with you!"
	done
	done

.TMText:
	text "A TM contains a"
	line "technique that"
	cont "can be taught to"
	cont "#MON!"

	para "A TM is good only"
	line "once! So when you"
	cont "use one to teach"
	cont "a new technique,"
	cont "pick the #MON"
	cont "carefully!"

	para "TM34 contains"
	line "BIDE!"

	para "Your #MON will"
	line "absorb damage in"
	cont "battle then pay"
	cont "it back double!"
	done

.FightDoneText:
	text "There are all"
	line "kinds of trainers"
	cont "in the world!"

	para "You appear to be"
	line "very gifted as a"
	cont "#MON trainer!"

	para "Go to the GYM in"
	line "CERULEAN and test"
	cont "your abilities!"
	done

PewterGym_GymGuyScript:
	faceplayer
	opentext
	checkflag ENGINE_BOULDERBADGE
	iftrue .HaveBadge
	writetext .LetMeTakeYouText
	yesorno
	iftrue .AllRight
	writetext .FreeServiceText
	sjump .Join

.AllRight:
	writetext .AllRightText
.Join:
	writetext .FirstMonText
	waitbutton
	closetext
	end

.HaveBadge:
	writetext .ChampMaterialText
	waitbutton
	closetext
	end

.LetMeTakeYouText:
	text "Hiya! I can tell"
	line "you have what it"
	cont "takes to become a"
	cont "#MON champ!"

	para "I'm no trainer,"
	line "but I can tell"
	cont "you how to win!"

	para "Let me take you"
	line "to the top!"
	done

.FreeServiceText:
	text "It's a free"
	line "service! Let's"
	cont "get happening!"
	prompt

.AllRightText:
	text "All right! Let's"
	line "get happening!"
	prompt

.FirstMonText:
	text "The 1st #MON"
	line "out in a match is"
	cont "at the top of the"
	cont "#MON LIST!"

	para "By changing the"
	line "order of #MON,"
	cont "matches could be"
	cont "made easier!"
	done

.ChampMaterialText:
	text "Just as I thought!"
	line "You're #MON"
	cont "champ material!"
	done

TrainerJrTrainerMJerry:
	trainer JR_TRAINER_M_GEN1, JERRY_GEN1, EVENT_BEAT_JR_TRAINER_M_JERRY_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Stop right there,"
	line "kid!"

	para "You're still light"
	line "years from facing"
	cont "BROCK!"
	done

.BeatenText:
	text "Darn!"

	para "Light years isn't"
	line "time! It measures"
	cont "distance!"
	done

.AfterText:
	text "You're pretty hot,"
	line "but not as hot"
	cont "as BROCK!"
	done

PewterGym_StatueScript:
	opentext
	writetext .Text1
	checkflag ENGINE_BOULDERBADGE
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
	text "PEWTER CITY"
	line "#MON GYM"
	cont "LEADER: BROCK"
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

PewterGym_MapEvents:
	def_warp_events
	warp_event  4, 13, PEWTER_CITY, 3
	warp_event  5, 13, PEWTER_CITY, 3

	def_coord_events

	def_bg_events
	bg_event  3, 10, BGEVENT_UP, PewterGym_StatueScript
	bg_event  6, 10, BGEVENT_UP, PewterGym_StatueScript

	def_object_events
	object_event  4,  1, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterGym_BrockScript, -1
	object_event  3,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 5, TrainerJrTrainerMJerry, -1
	object_event  7, 10, SPRITE_KANTO_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterGym_GymGuyScript, -1
