	object_const_def
	const FUCHSIAGYM_KANTO_KOGA
	const FUCHSIAGYM_KANTO_ROCKER1
	const FUCHSIAGYM_KANTO_ROCKER2
	const FUCHSIAGYM_KANTO_ROCKER3
	const FUCHSIAGYM_KANTO_ROCKER4
	const FUCHSIAGYM_KANTO_ROCKER5
	const FUCHSIAGYM_KANTO_ROCKER6
	const FUCHSIAGYM_KANTO_GYM_GUIDE

FuchsiaGym_MapScripts:
	def_scene_scripts

	def_callbacks

FuchsiaGym_KogaScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_KOGA_GEN1
	iftrue .FightDone
	writetext .IntroText
	waitbutton
	closetext
	winlosstext .WinText, 0
	loadtrainer KOGA_GEN1, KOGA1_GEN1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_KOGA_GEN1
	opentext
	writetext .GotBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_SOULBADGE
.FightDone:
	checkevent EVENT_GOT_TM_TOXIC
	iftrue .SpeechAfterTM
	setevent EVENT_BEAT_JUGGLER_KAYDEN_GEN1
	setevent EVENT_BEAT_JUGGLER_KIRK_GEN1
	setevent EVENT_BEAT_JUGGLER_NATE_GEN1
	setevent EVENT_BEAT_TAMER_PHIL_GEN1
	setevent EVENT_BEAT_TAMER_EDGAR_GEN1
	setevent EVENT_BEAT_JUGGLER_SHAWN_GEN1
	writetext .BadgeText
	promptbutton
IF DEF(_GOLD)
	verbosegiveitem TM_DYNAMICPUNCH
ELIF DEF(_BLUE)
	verbosegiveitem TM_TOXIC
ENDC
	iffalse .NoRoom
	setevent EVENT_GOT_TM_TOXIC
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
	text "KOGA: Fwahahaha!"

	para "A mere child like"
	line "you dares to"
	cont "challenge me?"

	para "Very well, I"
	line "shall show you"
	cont "true terror as a"
	cont "ninja master!"

	para "You shall feel"
	line "the despair of"
	cont "poison and sleep"
	cont "techniques!"
	done

.WinText:
	text "Humph! You have"
	line "proven your worth!"

	para "Here! Take the"
	line "SOULBADGE!"
	done

.GotBadgeText:
	text "<PLAYER> received"
	line "SOULBADGE!"
	done

.BadgeText:
	text "Now that you have"
	line "the SOULBADGE,"
	cont "the DEFENSE of"
	cont "your #MON"
	cont "increases!"

	para "It also lets you"
	line "SURF outside of"
	cont "battle!"

	para "Ah! Take this"
	line "too!"
	done

.TMText:
	text "TM06 contains"
	line "TOXIC!"

	para "It is a secret"
	line "technique over"
	cont "400 years old!"
	done

.FightDoneText:
	text "When afflicted by"
	line "TOXIC, #MON"
	cont "suffer more and"
	cont "more as battle"
	cont "progresses!"

	para "It will surely"
	line "terrorize foes!"
	done

FuchsiaGym_GymGuyScript:
	faceplayer
	opentext
	checkflag ENGINE_SOULBADGE
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

	para "FUCHSIA GYM is"
	line "riddled with"
	cont "invisible walls!"

	para "KOGA might appear"
	line "close, but he's"
	cont "blocked off!"

	para "You have to find"
	line "gaps in the walls"
	cont "to reach him!"
	done

.DoneText:
	text "It's amazing how"
	line "ninja can terrify"
	cont "even now!"
	done

FuchsiaGym_StatueScript:
	opentext
	writetext .Text1
	checkflag ENGINE_SOULBADGE
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
	text "FUCHSIA CITY"
	line "#MON GYM"
	cont "LEADER: KOGA"
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

TrainerJugglerKayden:
	trainer JUGGLER_GEN1, KAYDEN_GEN1, EVENT_BEAT_JUGGLER_KAYDEN_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Strength isn't"
	line "the key for"
	cont "#MON!"

	para "It's strategy!"

	para "I'll show you how"
	line "strategy can beat"
	cont "brute strength!"
	done

.BeatenText:
	text "What?"
	line "Extraordinary!"
	done

.AfterText:
	text "So, you mix brawn"
	line "with brains?"
	cont "Good strategy!"
	done

TrainerJugglerKirk:
	trainer JUGGLER_GEN1, KIRK_GEN1, EVENT_BEAT_JUGGLER_KIRK_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I wanted to become"
	line "a ninja, so I"
	cont "joined this GYM!"
	done

.BeatenText:
	text "I'm done for!"
	done

.AfterText:
	text "I will keep on"
	line "training under"
	cont "KOGA, my ninja"
	cont "master!"
	done

TrainerJugglerNate:
	trainer JUGGLER_GEN1, NATE_GEN1, EVENT_BEAT_JUGGLER_NATE_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Let's see you"
	line "beat my special"
	cont "techniques!"
	done

.BeatenText:
	text "You had me fooled!"
	done

.AfterText:
	text "I like poison and"
	line "sleep techniques,"
	cont "as they linger"
	cont "after battle!"
	done

TrainerTamerPhil:
	trainer TAMER_GEN1, PHIL_GEN1, EVENT_BEAT_TAMER_PHIL_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Stop right there!"

	para "Our invisible"
	line "walls have you"
	cont "frustrated?"
	done

.BeatenText:
	text "Whoa! He's got it!"
	done

.AfterText:
	text "You impressed me!"
	line "Here's a hint!"

	para "Look very closely"
	line "for gaps in the"
	cont "invisible walls!"
	done

TrainerTamerEdgar:
	trainer TAMER_GEN1, EDGAR_GEN1, EVENT_BEAT_TAMER_EDGAR_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I also study the"
	line "way of the ninja"
	cont "with master KOGA!"

	para "Ninja have a long"
	line "history of using"
	cont "animals!"
	done

.BeatenText:
	text "Awoo!"
	done

.AfterText:
	text "I still have much"
	line "to learn!"
	done

TrainerJugglerShawn:
	trainer JUGGLER_GEN1, SHAWN_GEN1, EVENT_BEAT_JUGGLER_SHAWN_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Master KOGA comes"
	line "from a long line"
	cont "of ninjas!"

	para "What did you"
	line "descend from?"
	done

.BeatenText:
	text "Dropped my balls!"
	done

.AfterText:
	text "Where there is"
	line "light, there is"
	cont "shadow!"

	para "Light and shadow!"
	line "Which do you"
	cont "choose?"
	done

FuchsiaGym_MapEvents:
	def_warp_events
	warp_event  4, 17, FUCHSIA_CITY, 6
	warp_event  5, 17, FUCHSIA_CITY, 6

	def_coord_events

	def_bg_events
	bg_event  3, 15, BGEVENT_UP, FuchsiaGym_StatueScript
	bg_event  6, 15, BGEVENT_UP, FuchsiaGym_StatueScript

	def_object_events
	object_event  4, 10, SPRITE_KANTO_KOGA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaGym_KogaScript, -1
	object_event  8, 13, SPRITE_KANTO_ROCKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerJugglerKayden, -1
	object_event  7,  8, SPRITE_KANTO_ROCKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerJugglerKirk, -1
	object_event  1, 12, SPRITE_KANTO_ROCKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerJugglerNate, -1
	object_event  3,  5, SPRITE_KANTO_ROCKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerTamerPhil, -1
	object_event  8,  2, SPRITE_KANTO_ROCKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerTamerEdgar, -1
	object_event  2,  7, SPRITE_KANTO_ROCKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerJugglerShawn, -1
	object_event  7, 15, SPRITE_KANTO_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaGym_GymGuyScript, -1
