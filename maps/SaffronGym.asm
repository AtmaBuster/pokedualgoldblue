	object_const_def
	const SAFFRONGYM_GIRL
	const SAFFRONGYM_CHANNELER1
	const SAFFRONGYM_KANTO_YOUNGSTER1
	const SAFFRONGYM_CHANNELER2
	const SAFFRONGYM_KANTO_YOUNGSTER2
	const SAFFRONGYM_CHANNELER3
	const SAFFRONGYM_KANTO_YOUNGSTER3
	const SAFFRONGYM_KANTO_YOUNGSTER4
	const SAFFRONGYM_KANTO_GYM_GUIDE

SaffronGym_MapScripts:
	def_scene_scripts

	def_callbacks

SaffronGym_SabrinaScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_SABRINA_GEN1
	iftrue .FightDone
	writetext .IntroText
	waitbutton
	closetext
	winlosstext .WinText, 0
	loadtrainer SABRINA_GEN1, SABRINA1_GEN1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SABRINA_GEN1
	opentext
	writetext .GotBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_MARSHBADGE
.FightDone:
	checkevent EVENT_GOT_TM_PSYWAVE
	iftrue .SpeechAfterTM
	setevent EVENT_BEAT_CHANNELER_AMANDA_GEN1
	setevent EVENT_BEAT_PSYCHIC_JOHAN_GEN1
	setevent EVENT_BEAT_CHANNELER_STACY_GEN1
	setevent EVENT_BEAT_PSYCHIC_TYRON_GEN1
	setevent EVENT_BEAT_CHANNELER_TASHA_GEN1
	setevent EVENT_BEAT_PSYCHIC_CAMERON_GEN1
	setevent EVENT_BEAT_PSYCHIC_PRESTON_GEN1
	writetext .BadgeText
	promptbutton
IF DEF(_GOLD)
	verbosegiveitem TM_DYNAMICPUNCH
ELIF DEF(_BLUE)
	verbosegiveitem TM_PSYWAVE
ENDC
	iffalse .NoRoom
	setevent EVENT_GOT_TM_PSYWAVE
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
	text "I had a vision of"
	line "your arrival!"

	para "I have had psychic"
	line "powers since I"
	cont "was a child."

	para "I first learned"
	line "to bend spoons"
	cont "with my mind."

	para "I dislike fight-"
	line "ing, but if you"
	cont "wish, I will show"
	cont "you my powers!"
	done

.WinText:
	text "I'm"
	line "shocked!"
	cont "But, a loss is a"
	cont "loss."

	para "I admit I didn't"
	line "work hard enough"
	cont "to win!"

	para "You earned the"
	line "MARSHBADGE!"
	done

.GotBadgeText:
	text "<PLAYER> receieved"
	line "the MARSHBADGE!"
	done

.BadgeText:
	text "The MARSHBADGE"
	line "makes #MON up"
	cont "to L70 obey you!"

	para "Stronger #MON"
	line "will become wild,"
	cont "ignoring your"
	cont "orders in battle!"

	para "Just don't raise"
	line "your #MON too"
	cont "much!"

	para "Wait, please take"
	line "this TM with you!"
	done

.TMText:
	text "TM46 is PSYWAVE!"
	line "It uses powerful"
	cont "psychic waves to"
	cont "inflict damage!"
	done

.FightDoneText:
	text "Everyone has"
	line "psychic power!"
	cont "People just don't"
	cont "realize it!"
	done

SaffronGym_GymGuyScript:
	faceplayer
	opentext
	checkflag ENGINE_MARSHBADGE
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

	para "SABRINA's #MON"
	line "use psychic power"
	cont "instead of force!"

	para "Fighting #MON"
	line "are weak against"
	cont "psychic #MON!"

	para "They get creamed"
	line "before they can"
	cont "even aim a punch!"
	done

.DoneText:
	text "Psychic power,"
	line "huh?"

	para "If I had that,"
	line "I'd make a bundle"
	cont "at the slots!"
	done

TrainerChannelerAmanda:
	trainer CHANNELER_GEN1, AMANDA_GEN1, EVENT_BEAT_CHANNELER_AMANDA_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "SABRINA is younger"
	line "than I, but I"
	cont "respect her!"
	done

.BeatenText:
	text "Not"
	line "good enough!"
	done

.AfterText:
	text "In a battle of"
	line "equals, the one"
	cont "with the stronger"
	cont "will wins!"

	para "If you wish"
	line "to beat SABRINA,"
	cont "focus on winning!"
	done

TrainerPsychicJohan:
	trainer PSYCHIC_TR_GEN1, JOHAN_GEN1, EVENT_BEAT_PSYCHIC_JOHAN_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Does our unseen"
	line "power scare you?"
	done

.BeatenText:
	text "I never"
	line "foresaw this!"
	done

.AfterText:
	text "Psychic #MON"
	line "fear only ghosts"
	cont "and bugs!"
	done

TrainerChannelerStacy:
	trainer CHANNELER_GEN1, STACY_GEN1, EVENT_BEAT_CHANNELER_STACY_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "#MON take on"
	line "the appearance of"
	cont "their trainers."

	para "Your #MON must"
	line "be tough, then!"
	done

.BeatenText:
	text "I knew"
	line "it!"
	done

.AfterText:
	text "I must teach"
	line "better techniques"
	cont "to my #MON!"
	done

TrainerPsychicTyron:
	trainer PSYCHIC_TR_GEN1, TYRON_GEN1, EVENT_BEAT_PSYCHIC_TYRON_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "You know that"
	line "power alone isn't"
	cont "enough!"
	done

.BeatenText:
	text "I don't"
	line "believe this!"
	done

.AfterText:
	text "SABRINA just wiped"
	line "out the KARATE"
	cont "MASTER next door!"
	done

TrainerChannelerTasha:
	trainer CHANNELER_GEN1, TASHA_GEN1, EVENT_BEAT_CHANNELER_TASHA_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "You and I, our"
	line "#MON shall"
	cont "fight!"
	done

.BeatenText:
	text "I lost"
	line "after all!"
	done

.AfterText:
	text "I knew that this"
	line "was going to take"
	cont "place."
	done

TrainerPsychicCameron:
	trainer PSYCHIC_TR_GEN1, CAMERON_GEN1, EVENT_BEAT_PSYCHIC_CAMERON_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "SABRINA is young,"
	line "but she's also"
	cont "our LEADER!"

	para "You won't reach"
	line "her easily!"
	done

.BeatenText:
	text "I lost"
	line "my concentration!"
	done

.AfterText:
	text "There used to be"
	line "2 #MON GYMs in"
	cont "SAFFRON."

	para "The FIGHTING DOJO"
	line "next door lost"
	cont "its GYM status"
	cont "when we went and"
	cont "creamed them!"
	done

TrainerPsychicPreston:
	trainer PSYCHIC_TR_GEN1, PRESTON_GEN1, EVENT_BEAT_PSYCHIC_PRESTON_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "SAFFRON #MON"
	line "GYM is famous for"
	cont "its psychics!"

	para "You want to see"
	line "SABRINA!"
	cont "I can tell!"
	done

.BeatenText:
	text "Arrrgh!"
	done

.AfterText:
	text "That's right! I"
	line "used telepathy to"
	cont "read your mind!"
	done

SaffronGym_StatueScript:
	opentext
	writetext .Text1
	checkflag ENGINE_MARSHBADGE
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
	text "SAFFRON CITY"
	line "#MON GYM"
	cont "LEADER: SABRINA"
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

SaffronGym_MapEvents:
	def_warp_events
	warp_event  8, 17, SAFFRON_CITY, 3
	warp_event  9, 17, SAFFRON_CITY, 3
	warp_event  1,  3, SAFFRON_GYM, 23
	warp_event  5,  3, SAFFRON_GYM, 16
	warp_event  1,  5, SAFFRON_GYM, 19
	warp_event  5,  5, SAFFRON_GYM, 9
	warp_event  1,  9, SAFFRON_GYM, 28
	warp_event  5,  9, SAFFRON_GYM, 17
	warp_event  1, 11, SAFFRON_GYM, 6
	warp_event  5, 11, SAFFRON_GYM, 14
	warp_event  1, 15, SAFFRON_GYM, 24
	warp_event  5, 15, SAFFRON_GYM, 31
	warp_event  1, 17, SAFFRON_GYM, 18
	warp_event  5, 17, SAFFRON_GYM, 10
	warp_event  9,  3, SAFFRON_GYM, 27
	warp_event 11,  3, SAFFRON_GYM, 4
	warp_event  9,  5, SAFFRON_GYM, 8
	warp_event 11,  5, SAFFRON_GYM, 13
	warp_event 11, 11, SAFFRON_GYM, 5
	warp_event 11, 15, SAFFRON_GYM, 32
	warp_event 15,  3, SAFFRON_GYM, 25
	warp_event 19,  3, SAFFRON_GYM, 29
	warp_event 15,  5, SAFFRON_GYM, 3
	warp_event 19,  5, SAFFRON_GYM, 11
	warp_event 15,  9, SAFFRON_GYM, 21
	warp_event 19,  9, SAFFRON_GYM, 30
	warp_event 15, 11, SAFFRON_GYM, 15
	warp_event 19, 11, SAFFRON_GYM, 7
	warp_event 15, 15, SAFFRON_GYM, 22
	warp_event 19, 15, SAFFRON_GYM, 26
	warp_event 15, 17, SAFFRON_GYM, 12
	warp_event 19, 17, SAFFRON_GYM, 20

	def_coord_events

	def_bg_events
	bg_event  9, 15, BGEVENT_UP, SaffronGym_StatueScript

	def_object_events
	object_event  9,  8, SPRITE_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronGym_SabrinaScript, -1
	object_event 10,  1, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerChannelerAmanda, -1
	object_event 17,  1, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerPsychicJohan, -1
	object_event  3,  7, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerChannelerStacy, -1
	object_event 17,  7, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerPsychicTyron, -1
	object_event  3, 13, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerChannelerTasha, -1
	object_event 17, 13, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerPsychicCameron, -1
	object_event  3,  1, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerPsychicPreston, -1
	object_event 10, 15, SPRITE_KANTO_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronGym_GymGuyScript, -1
