	object_const_def
	const CELADONGYM_KANTO_ERIKA
	const CELADONGYM_COOLTRAINER_F1
	const CELADONGYM_KANTO_BEAUTY1
	const CELADONGYM_COOLTRAINER_F2
	const CELADONGYM_KANTO_BEAUTY2
	const CELADONGYM_COOLTRAINER_F3
	const CELADONGYM_KANTO_BEAUTY3
	const CELADONGYM_COOLTRAINER_F4

CeladonGym_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonGym_ErikaScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_ERIKA_GEN1
	iftrue .FightDone
	writetext .IntroText
	waitbutton
	closetext
	winlosstext .WinText, 0
	loadtrainer ERIKA_GEN1, ERIKA1_GEN1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ERIKA_GEN1
	opentext
	writetext .GotBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_RAINBOWBADGE
.FightDone:
	checkevent EVENT_GOT_TM_MEGA_DRAIN
	iftrue .SpeechAfterTM
	setevent EVENT_BEAT_LASS_KAY_GEN1
	setevent EVENT_BEAT_BEAUTY_BRIDGET_GEN1
	setevent EVENT_BEAT_JR_TRAINER_F_TANYA_GEN1
	setevent EVENT_BEAT_BEAUTY_TAMIA_GEN1
	setevent EVENT_BEAT_LASS_LISA_GEN1
	setevent EVENT_BEAT_BEAUTY_LORI_GEN1
	setevent EVENT_BEAT_COOLTRAINER_F_MARY_GEN1
	writetext .BadgeText
	promptbutton
IF DEF(_GOLD)
	verbosegiveitem TM_DYNAMICPUNCH
ELIF DEF(_BLUE)
	verbosegiveitem TM_MEGA_DRAIN
ENDC
	iffalse .NoRoom
	setevent EVENT_GOT_TM_MEGA_DRAIN
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
	text "Hello. Lovely"
	line "weather isn't it?"
	cont "It's so pleasant."

	para "...Oh dear..."
	line "I must have dozed"
	cont "off. Welcome."

	para "My name is ERIKA."
	line "I am the LEADER"
	cont "of CELADON GYM."

	para "I teach the art of"
	line "flower arranging."
	cont "My #MON are of"
	cont "the grass-type."

	para "Oh, I'm sorry, I"
	line "had no idea that"
	cont "you wished to"
	cont "challenge me."

	para "Very well, but I"
	line "shall not lose."
	done

.WinText:
	text "Oh!"
	line "I concede defeat."

	para "You are remarkably"
	line "strong."

	para "I must confer you"
	line "the RAINBOWBADGE."
	done

.GotBadgeText:
	text "<PLAYER> received"
	line "the RAINBOWBADGE!"
	done

.BadgeText:
	text "The RAINBOWBADGE"
	line "will make #MON"
	cont "up to L50 obey."

	para "It also allows"
	line "#MON to use"
	cont "STRENGTH in and"
	cont "out of battle."

	para "Please also take"
	line "this with you."
	done

.TMText:
	text "TM21 contains"
	line "MEGA DRAIN."

	para "Half the damage"
	line "it inflicts is"
	cont "drained to heal"
	cont "your #MON!"
	done

.FightDoneText:
	text "You are cataloging"
	line "#MON? I must"
	cont "say I'm impressed."

	para "I would never"
	line "collect #MON"
	cont "if they were"
	cont "unattractive."
	done

TrainerLassKay:
	trainer LASS_GEN1, KAY_GEN1, EVENT_BEAT_LASS_KAY_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Hey!"

	para "You are not"
	line "allowed in here!"
	done

.BeatenText:
	text "You're"
	line "too rough!"
	done

.AfterText:
	text "Bleaah!"
	line "I hope ERIKA"
	cont "wipes you out!"
	done

TrainerBeautyBridget:
	trainer BEAUTY_GEN1, BRIDGET_GEN1, EVENT_BEAT_BEAUTY_BRIDGET_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I was getting"
	line "bored."
	done

.BeatenText:
	text "My"
	line "makeup!"
	done

.AfterText:
	text "Grass-type #MON"
	line "are tough against"
	cont "the water-type!"

	para "They also have an"
	line "edge on rock and"
	cont "ground #MON!"
	done

TrainerJrTrainerFTanya:
	trainer JR_TRAINER_F_GEN1, TANYA_GEN1, EVENT_BEAT_JR_TRAINER_F_TANYA_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Aren't you the"
	line "peeping Tom?"
	done

.BeatenText:
	text "I'm"
	line "in shock!"
	done

.AfterText:
	text "Oh, you weren't"
	line "peeping? We get a"
	cont "lot of gawkers!"
	done

TrainerBeautyTamia:
	trainer BEAUTY_GEN1, TAMIA_GEN1, EVENT_BEAT_BEAUTY_TAMIA_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Look at my grass"
	line "#MON!"

	para "They're so easy"
	line "to raise!"
	done

.BeatenText:
	text "No!"
	done

.AfterText:
	text "We only use grass-"
	line "type #MON at"
	cont "our GYM!"

	para "We also use them"
	line "for making flower"
	cont "arrangements!"
	done

TrainerLassLisa:
	trainer LASS_GEN1, LISA_GEN1, EVENT_BEAT_LASS_LISA_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Don't bring any"
	line "bugs or fire"
	cont "#MON in here!"
	done

.BeatenText:
	text "Oh!"
	line "You!"
	done

.AfterText:
	text "Our LEADER, ERIKA,"
	line "might be quiet,"
	cont "but she's also"
	cont "very skilled!"
	done

TrainerBeautyLori:
	trainer BEAUTY_GEN1, LORI_GEN1, EVENT_BEAT_BEAUTY_LORI_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Pleased to meet"
	line "you. My hobby is"
	cont "#MON training."
	done

.BeatenText:
	text "Oh!"
	line "Splendid!"
	done

.AfterText:
	text "I have a blind"
	line "date coming up."
	cont "I have to learn"
	cont "to be polite."
	done

TrainerCooltrainerFMary:
	trainer COOLTRAINER_F_GEN1, MARY_GEN1, EVENT_BEAT_COOLTRAINER_F_MARY_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Welcome to"
	line "CELADON GYM!"

	para "You better not"
	line "underestimate"
	cont "girl power!"
	done

.BeatenText:
	text "Oh!"
	line "Beaten!"
	done

.AfterText:
	text "I didn't bring my"
	line "best #MON!"

	para "Wait 'til next"
	line "time!"
	done

CeladonGym_StatueScript:
	opentext
	writetext .Text1
	checkflag ENGINE_RAINBOWBADGE
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
	text "CELADON CITY"
	line "#MON GYM"
	cont "LEADER: ERIKA"
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

CeladonGym_MapEvents:
	def_warp_events
	warp_event  4, 17, CELADON_CITY, 7
	warp_event  5, 17, CELADON_CITY, 7

	def_coord_events

	def_bg_events
	bg_event  3, 15, BGEVENT_UP, CeladonGym_StatueScript
	bg_event  6, 15, BGEVENT_UP, CeladonGym_StatueScript

	def_object_events
	object_event  4,  3, SPRITE_KANTO_ERIKA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonGym_ErikaScript, -1
	object_event  2, 11, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerLassKay, -1
	object_event  7, 10, SPRITE_KANTO_BEAUTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerBeautyBridget, -1
	object_event  9,  5, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerJrTrainerFTanya, -1
	object_event  1,  5, SPRITE_KANTO_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerBeautyTamia, -1
	object_event  6,  3, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerLassLisa, -1
	object_event  3,  3, SPRITE_KANTO_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerBeautyLori, -1
	object_event  5,  3, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerFMary, -1
