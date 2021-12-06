	object_const_def
	const VIRIDIANGYM_GIOVANNI
	const VIRIDIANGYM_COOLTRAINER_M1
	const VIRIDIANGYM_HIKER1
	const VIRIDIANGYM_KANTO_ROCKER1
	const VIRIDIANGYM_HIKER2
	const VIRIDIANGYM_COOLTRAINER_M2
	const VIRIDIANGYM_HIKER3
	const VIRIDIANGYM_KANTO_ROCKER2
	const VIRIDIANGYM_COOLTRAINER_M3
	const VIRIDIANGYM_KANTO_GYM_GUIDE
	const VIRIDIANGYM_POKE_BALL

ViridianGym_MapScripts:
	def_scene_scripts

	def_callbacks

ViridianGym_GiovanniScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_GIOVANNI3_GEN1
	iftrue .FightDone
	writetext .IntroText
	waitbutton
	closetext
	winlosstext .WinText, 0
	loadtrainer GIOVANNI_GEN1, GIOVANNI3_GEN1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_GIOVANNI3_GEN1
	opentext
	writetext .GotBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_EARTHBADGE
.FightDone:
	checkevent EVENT_GOT_TM27_FISSURE
	iftrue .SpeechAfterTM
	setevent EVENT_BEAT_COOLTRAINER_M_YUJI_GEN1
	setevent EVENT_BEAT_BLACKBELT_ATSUSHI_GEN1
	setevent EVENT_BEAT_TAMER_JASON_GEN1
	setevent EVENT_BEAT_BLACKBELT_KIYO_GEN1
	setevent EVENT_BEAT_COOLTRAINER_M_WREN_GEN1
	setevent EVENT_BEAT_BLACKBELT_TAKASHI_GEN1
	setevent EVENT_BEAT_TAMER_COLE_GEN1
	setevent EVENT_BEAT_COOLTRAINER_M_SAUL_GEN1
	setmapscene ROUTE_22, SCENE_ROUTE_22_RIVAL_2
	clearevent EVENT_ROUTE_22_RIVAL_2
	writetext .BadgeText
	promptbutton
IF DEF(_GOLD)
	verbosegiveitem TM_DYNAMICPUNCH
ELIF DEF(_BLUE)
	verbosegiveitem TM_FISSURE
ENDC
	iffalse .NoRoom
	setevent EVENT_GOT_TM27_FISSURE
	writetext .TMText
	waitbutton
.NoRoom:
	closetext
	end

.SpeechAfterTM:
	writetext .FightDoneText
	waitbutton
	special FadeBlackQuickly
	pause 3
	disappear VIRIDIANGYM_GIOVANNI
	special FadeInQuickly
	closetext
	end

.IntroText:
	text "Fwahahaha! This is"
	line "my hideout!"

	para "I planned to"
	line "resurrect TEAM"
	cont "ROCKET here!"

	para "But, you have"
	line "caught me again!"
	cont "So be it! This"
	cont "time, I'm not"
	cont "holding back!"

	para "Once more, you"
	line "shall face"
	cont "GIOVANNI, the"
	cont "greatest trainer!"
	done

.WinText:
	text "Ha!"
	line "That was a truly"
	cont "intense fight!"
	cont "You have won!"
	cont "As proof, here is"
	cont "the EARTHBADGE!"
	done

.GotBadgeText:
	text "<PLAYER> received"
	line "the EARTHBADGE!"
	done

.BadgeText:
	text "The EARTHBADGE"
	line "makes #MON of"
	cont "any level obey!"

	para "It is evidence of"
	line "your mastery as a"
	cont "#MON trainer!"

	para "With it, you can"
	line "enter the #MON"
	cont "LEAGUE!"

	para "It is my gift for"
	line "your #MON"
	cont "LEAGUE challenge!"
	done

.TMText:
	text "TM27 is FISSURE!"
	line "It will take out"
	cont "#MON with just"
	cont "one hit!"

	para "I made it when I"
	line "ran the GYM here,"
	cont "too long ago..."
	done

.FightDoneText:
	text "Having lost, I"
	line "cannot face my"
	cont "underlings!"
	cont "TEAM ROCKET is"
	cont "finished forever!"

	para "I will dedicate my"
	line "life to the study"
	cont "of #MON!"

	para "Let us meet again"
	line "some day!"
	cont "Farewell!"
	done

ViridianGym_GymGuyScript:
	faceplayer
	opentext
	checkflag ENGINE_EARTHBADGE
	iftrue .HaveBadge
	writetext .Text1
	waitbutton
	closetext
	end

.HaveBadge:
	writetext .Text2
	waitbutton
	closetext
	end

.Text1:
	text "Yo! Champ in"
	line "making!"

	para "Even I don't know"
	line "VIRIDIAN LEADER's"
	cont "identity!"

	para "This will be the"
	line "toughest of all"
	cont "the GYM LEADERs!"

	para "I heard that the"
	line "trainers here"
	cont "like ground-type"
	cont "#MON!"
	done

.Text2:
	text "Blow me away!"
	line "GIOVANNI was the"
	cont "GYM LEADER here?"
	done

ViridianGym_StatueScript:
	opentext
	writetext .Text1
	checkflag ENGINE_EARTHBADGE
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
	text "VIRIDIAN CITY"
	line "#MON GYM"
	cont "LEADER: GIOVANNI"
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

ViridianGym_ReviveScript:
	itemball REVIVE

TrainerCooltrainerMYuji:
	trainer COOLTRAINER_M_GEN1, YUJI_GEN1, EVENT_BEAT_COOLTRAINER_M_YUJI_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Heh! You must be"
	line "running out of"
	cont "steam by now!"
	done

.BeatenText:
	text "I"
	line "ran out of gas!"
	done

.AfterText:
	text "You need power to"
	line "keep up with our"
	cont "GYM LEADER!"
	done

TrainerBlackbeltAtsushi:
	trainer BLACKBELT_GEN1, ATSUSHI_GEN1, EVENT_BEAT_BLACKBELT_ATSUSHI_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Rrrroar! I'm"
	line "working myself"
	cont "into a rage!"
	done

.BeatenText:
	text "Wargh!"
	done

.AfterText:
	text "I'm still not"
	line "worthy!"
	done

TrainerTamerJason:
	trainer TAMER_GEN1, JASON_GEN1, EVENT_BEAT_TAMER_JASON_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "#MON and I, we"
	line "make wonderful"
	cont "music together!"
	done

.BeatenText:
	text "You are in"
	line "perfect harmony!"
	done

.AfterText:
	text "Do you know the"
	line "identity of our"
	cont "GYM LEADER?"
	done

TrainerBlackbeltKiyo:
	trainer BLACKBELT_GEN1, KIYO_GEN1, EVENT_BEAT_BLACKBELT_KIYO_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Karate is the"
	line "ultimate form of"
	cont "martial arts!"
	done

.BeatenText:
	text "Atcho!"
	done

.AfterText:
	text "If my #MON"
	line "were as good at"
	cont "Karate as I..."
	done

TrainerCooltrainerMWren:
	trainer COOLTRAINER_M_GEN1, WREN_GEN1, EVENT_BEAT_COOLTRAINER_M_WREN_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "The truly talented"
	line "win with style!"
	done

.BeatenText:
	text "I"
	line "lost my grip!"
	done

.AfterText:
	text "The LEADER will"
	line "scold me!"
	done


TrainerBlackbeltTakashi:
	trainer BLACKBELT_GEN1, TAKASHI_GEN1, EVENT_BEAT_BLACKBELT_TAKASHI_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I'm the KARATE"
	line "KING! Your fate"
	cont "rests with me!"
	done

.BeatenText:
	text "Ayah!"
	done

.AfterText:
	text "#MON LEAGUE?"
	line "You? Don't get"
	cont "cocky!"
	done

TrainerTamerCole:
	trainer TAMER_GEN1, COLE_GEN1, EVENT_BEAT_TAMER_COLE_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Your #MON will"
	line "cower at the"
	cont "crack of my whip!"
	done

.BeatenText:
	text "Yowch!"
	line "Whiplash!"
	done

.AfterText:
	text "Wait! I was just"
	line "careless!"
	done

TrainerCooltrainerMSaul:
	trainer COOLTRAINER_M_GEN1, SAUL_GEN1, EVENT_BEAT_COOLTRAINER_M_SAUL_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "VIRIDIAN GYM was"
	line "closed for a long"
	cont "time, but now our"
	cont "LEADER is back!"
	done

.BeatenText:
	text "I"
	line "was beaten?"
	done

.AfterText:
	text "You can go onto"
	line "#MON LEAGUE"
	cont "only by defeating"
	cont "our GYM LEADER!"
	done

ViridianGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 16, 17, VIRIDIAN_CITY, 5
	warp_event 17, 17, VIRIDIAN_CITY, 5

	def_coord_events

	def_bg_events
	bg_event 15, 15, BGEVENT_UP, ViridianGym_StatueScript
	bg_event 18, 15, BGEVENT_UP, ViridianGym_StatueScript

	def_object_events
	object_event  2,  1, SPRITE_GIOVANNI, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ViridianGym_GiovanniScript, EVENT_VIRIDIAN_GYM_GIOVANNI
	object_event 12,  7, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerCooltrainerMYuji, -1
	object_event 11, 11, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerBlackbeltAtsushi, -1
	object_event 10,  7, SPRITE_KANTO_ROCKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerTamerJason, -1
	object_event  3,  7, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerBlackbeltKiyo, -1
	object_event 13,  5, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerMWren, -1
	object_event 10,  1, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerBlackbeltTakashi, -1
	object_event  2, 16, SPRITE_KANTO_ROCKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerTamerCole, -1
	object_event  6,  5, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 4, TrainerCooltrainerMSaul, -1
	object_event 16, 15, SPRITE_KANTO_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianGym_GymGuyScript, -1
	object_event 16,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianGym_ReviveScript, EVENT_VIRIDIAN_GYM_REVIVE
