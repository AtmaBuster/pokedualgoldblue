	object_const_def
	const CINNABARGYM_POKEFAN_M
	const CINNABARGYM_KANTO_SUPER_NERD1
	const CINNABARGYM_KANTO_SUPER_NERD2
	const CINNABARGYM_KANTO_SUPER_NERD3
	const CINNABARGYM_KANTO_SUPER_NERD4
	const CINNABARGYM_KANTO_SUPER_NERD5
	const CINNABARGYM_KANTO_SUPER_NERD6
	const CINNABARGYM_KANTO_SUPER_NERD7
	const CINNABARGYM_KANTO_GYM_GUIDE

CinnabarGym_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, .Doors

.Doors:
	checkevent EVENT_CINNABAR_GYM_DOOR1
	iftrue .SkipDoor1
	changeblock 18, 6, $54
.SkipDoor1:
	checkevent EVENT_CINNABAR_GYM_DOOR2
	iftrue .SkipDoor2
	changeblock 12, 6, $54
.SkipDoor2:
	checkevent EVENT_CINNABAR_GYM_DOOR3
	iftrue .SkipDoor3
	changeblock 12, 12, $54
.SkipDoor3:
	checkevent EVENT_CINNABAR_GYM_DOOR4
	iftrue .SkipDoor4
	changeblock 6, 16, $5f
.SkipDoor4:
	checkevent EVENT_CINNABAR_GYM_DOOR5
	iftrue .SkipDoor5
	changeblock 4, 12, $54
.SkipDoor5:
	checkevent EVENT_CINNABAR_GYM_DOOR6
	iftrue .SkipDoor6
	changeblock 4, 6, $54
.SkipDoor6:
	endcallback

CinnabarGym_BlaineScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_BLAINE_GEN1
	iftrue .FightDone
	writetext .IntroText
	waitbutton
	closetext
	winlosstext .WinText, 0
	loadtrainer BLAINE_GEN1, BLAINE1_GEN1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BLAINE_GEN1
	opentext
	writetext .GotBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_VOLCANOBADGE
.FightDone:
	checkevent EVENT_GOT_TM_FIRE_BLAST
	iftrue .SpeechAfterTM
	setevent EVENT_BEAT_SUPER_NERD_ERIK_GEN1
	setevent EVENT_BEAT_BURGLAR_QUINN_GEN1
	setevent EVENT_BEAT_SUPER_NERD_AVERY_GEN1
	setevent EVENT_BEAT_BURGLAR_RAMON_GEN1
	setevent EVENT_BEAT_SUPER_NERD_DEREK_GEN1
	setevent EVENT_BEAT_BURGLAR_DUSTY_GEN1
	setevent EVENT_BEAT_SUPER_NERD_ZAC_GEN1
	writetext .BadgeText
	promptbutton
IF DEF(_GOLD)
	verbosegiveitem TM_DYNAMICPUNCH
ELIF DEF(_BLUE)
	verbosegiveitem TM_FIRE_BLAST
ENDC
	iffalse .NoRoom
	setevent EVENT_GOT_TM_FIRE_BLAST
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
	text "Hah!"

	para "I am BLAINE! I"
	line "am the LEADER of"
	cont "CINNABAR GYM!"

	para "My fiery #MON"
	line "will incinerate"
	cont "all challengers!"

	para "Hah! You better"
	line "have BURN HEAL!"
	done

.WinText:
	text "I have"
	line "burnt out!"

	para "You have earned"
	line "the VOLCANOBADGE!"
	done

.GotBadgeText:
	text "<PLAYER> received"
	line "VOLCANOBADGE!"
	done

.BadgeText:
	text "Hah!"

	para "The VOLCANOBADGE"
	line "heightens the"
	cont "SPECIAL abilities"
	cont "of your #MON!"

	para "Here, you can"
	line "have this too!"
	done

.TMText:
	text "TM38 contains"
	line "FIRE BLAST!"

	para "Teach it to fire-"
	line "type #MON!"

	para "CHARMELEON or"
	line "PONYTA would be"
	cont "good bets!"
	done

.FightDoneText:
	text "FIRE BLAST is the"
	line "ultimate fire"
	cont "technique!"

	para "Don't waste it on"
	line "water #MON!"
	done

CinnabarGym_GymGuyScript:
	faceplayer
	opentext
	checkflag ENGINE_VOLCANOBADGE
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

	para "The hot-headed"
	line "BLAINE is a fire"
	cont "#MON pro!"

	para "Douse his spirits"
	line "with water!"

	para "You better take"
	line "some BURN HEALs!"
	done

.DoneText:
	text "<PLAYER>! You beat"
	line "that fire brand!"
	done

CinnabarGym_StatueScript:
	opentext
	writetext .Text1
	checkflag ENGINE_VOLCANOBADGE
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
	text "CINNABAR CITY"
	line "#MON GYM"
	cont "LEADER: BLAINE"
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

TrainerSuperNerdErik:
	trainer SUPER_NERD_GEN1, ERIK_GEN1, EVENT_BEAT_SUPER_NERD_ERIK_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Do you know how"
	line "hot #MON fire"
	cont "breath can get?"
	done

.BeatenText:
	text "Yow!"
	line "Hot, hot, hot!"
	done

.AfterText:
	text "Fire, or to be"
	line "more precise,"
	cont "combustion..."

	para "Blah, blah, blah,"
	line "blah..."
	done

TrainerBurglarQuinn:
	loadmem wRunningTrainerBattleScript, 0
	faceplayer
	checkevent EVENT_BEAT_BURGLAR_QUINN_GEN1
	iftrue .Script
	opentext
	writetext .SeenText
	waitbutton
	closetext
	winlosstext .BeatenText, 0
	loadtrainer BURGLAR_GEN1, QUINN_GEN1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BURGLAR_QUINN_GEN1
	loadmem wRunningTrainerBattleScript, -1
.Script:
	refreshscreen $85
	changeblock 18, 6, $0e ; floor
	reloadmappart
	closetext
	setevent EVENT_CINNABAR_GYM_DOOR1
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I was a thief, but"
	line "I became straight"
	cont "as a trainer!"
	done

.BeatenText:
	text "I"
	line "surrender!"
	done

.AfterText:
	text "I can't help"
	line "stealing other"
	cont "people's #MON!"
	done

TrainerSuperNerdAvery:
	loadmem wRunningTrainerBattleScript, 0
	faceplayer
	checkevent EVENT_BEAT_SUPER_NERD_AVERY_GEN1
	iftrue .Script
	opentext
	writetext .SeenText
	waitbutton
	closetext
	winlosstext .BeatenText, 0
	loadtrainer SUPER_NERD_GEN1, AVERY_GEN1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SUPER_NERD_AVERY_GEN1
	loadmem wRunningTrainerBattleScript, -1
.Script:
	refreshscreen $85
	changeblock 12, 6, $0e ; floor
	reloadmappart
	closetext
	setevent EVENT_CINNABAR_GYM_DOOR2
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "You can't win!"
	line "I have studied"
	cont "#MON totally!"
	done

.BeatenText:
	text "Waah!"
	line "My studies!"
	done

.AfterText:
	text "My theories are"
	line "too complicated"
	cont "for you!"
	done

TrainerBurglarRamon:
	loadmem wRunningTrainerBattleScript, 0
	faceplayer
	checkevent EVENT_BEAT_BURGLAR_RAMON_GEN1
	iftrue .Script
	opentext
	writetext .SeenText
	waitbutton
	closetext
	winlosstext .BeatenText, 0
	loadtrainer BURGLAR_GEN1, RAMON_GEN1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BURGLAR_RAMON_GEN1
	loadmem wRunningTrainerBattleScript, -1
.Script:
	refreshscreen $85
	changeblock 12, 12, $0e ; floor
	reloadmappart
	closetext
	setevent EVENT_CINNABAR_GYM_DOOR3
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I just like using"
	line "fire #MON!"
	done

.BeatenText:
	text "Too hot"
	line "to handle!"
	done

.AfterText:
	text "I wish there was"
	line "a thief #MON!"
	cont "I'd use that!"
	done

TrainerSuperNerdDerek:
	loadmem wRunningTrainerBattleScript, 0
	faceplayer
	checkevent EVENT_BEAT_SUPER_NERD_DEREK_GEN1
	iftrue .Script
	opentext
	writetext .SeenText
	waitbutton
	closetext
	winlosstext .BeatenText, 0
	loadtrainer SUPER_NERD_GEN1, DEREK_GEN1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SUPER_NERD_DEREK_GEN1
	loadmem wRunningTrainerBattleScript, -1
.Script:
	refreshscreen $85
	changeblock 6, 16, $0e ; floor
	reloadmappart
	closetext
	setevent EVENT_CINNABAR_GYM_DOOR4
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I know why BLAINE"
	line "became a trainer!"
	done

.BeatenText:
	text "Ow!"
	done

.AfterText:
	text "BLAINE was lost"
	line "in the mountains"
	cont "when a fiery bird"
	cont "#MON appeared."

	para "Its light enabled"
	line "BLAINE to find"
	cont "his way down!"
	done

TrainerBurglarDusty:
	loadmem wRunningTrainerBattleScript, 0
	faceplayer
	checkevent EVENT_BEAT_BURGLAR_DUSTY_GEN1
	iftrue .Script
	opentext
	writetext .SeenText
	waitbutton
	closetext
	winlosstext .BeatenText, 0
	loadtrainer BURGLAR_GEN1, DUSTY_GEN1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BURGLAR_DUSTY_GEN1
	loadmem wRunningTrainerBattleScript, -1
.Script:
	refreshscreen $85
	changeblock 4, 12, $0e ; floor
	reloadmappart
	closetext
	setevent EVENT_CINNABAR_GYM_DOOR5
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I've been to many"
	line "GYMs, but this is"
	cont "my favorite!"
	done

.BeatenText:
	text "Yowza!"
	line "Too hot!"
	done

.AfterText:
	text "Us fire #MON"
	line "fans like PONYTA"
	cont "and NINETALES!"
	done

TrainerSuperNerdZac:
	loadmem wRunningTrainerBattleScript, 0
	faceplayer
	checkevent EVENT_BEAT_SUPER_NERD_ZAC_GEN1
	iftrue .Script
	opentext
	writetext .SeenText
	waitbutton
	closetext
	winlosstext .BeatenText, 0
	loadtrainer SUPER_NERD_GEN1, ZAC_GEN1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SUPER_NERD_ZAC_GEN1
	loadmem wRunningTrainerBattleScript, -1
.Script:
	refreshscreen $85
	changeblock 4, 6, $0e ; floor
	reloadmappart
	closetext
	setevent EVENT_CINNABAR_GYM_DOOR6
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Fire is weak"
	line "against H2O!"
	done

.BeatenText:
	text "Oh!"
	line "Snuffed out!"
	done

.AfterText:
	text "Water beats fire!"
	line "But, fire melts"
	cont "ice #MON!"
	done

CinnabarGym_Quiz1Script:
	scall CinnabarGym_QuizScriptPart1
	writetext .Text
	yesorno
	iftrue .Right
	writetext CinnabarGym_QuizWrongText
	waitbutton
	closetext
	checkevent EVENT_BEAT_BURGLAR_QUINN_GEN1
	iftrue DummyScript
	applymovement CINNABARGYM_KANTO_SUPER_NERD2, CinnabarGym_TrainerApproach2Movement
	sjump TrainerBurglarQuinn

.Right:
	writetext CinnabarGym_QuizRightText
	waitbutton
	changeblock 18, 6, $0e ; floor
	reloadmappart
	closetext
	setevent EVENT_CINNABAR_GYM_DOOR1
	end

.Text:
	text "CATERPIE evolves"
	line "into BUTTERFREE?"
	done

CinnabarGym_Quiz2Script:
	scall CinnabarGym_QuizScriptPart1
	writetext .Text
	yesorno
	iffalse .Right
	writetext CinnabarGym_QuizWrongText
	waitbutton
	closetext
	checkevent EVENT_BEAT_SUPER_NERD_AVERY_GEN1
	iftrue DummyScript
	applymovement CINNABARGYM_KANTO_SUPER_NERD3, CinnabarGym_TrainerApproach1Movement
	sjump TrainerSuperNerdAvery

.Right:
	writetext CinnabarGym_QuizRightText
	waitbutton
	changeblock 12, 6, $0e ; floor
	reloadmappart
	closetext
	setevent EVENT_CINNABAR_GYM_DOOR2
	end

.Text:
	text "There are 9"
	line "certified #MON"
	cont "LEAGUE BADGEs?"
	done

CinnabarGym_Quiz3Script:
	scall CinnabarGym_QuizScriptPart1
	writetext .Text
	yesorno
	iffalse .Right
	writetext CinnabarGym_QuizWrongText
	waitbutton
	closetext
	checkevent EVENT_BEAT_BURGLAR_RAMON_GEN1
	iftrue DummyScript
	applymovement CINNABARGYM_KANTO_SUPER_NERD4, CinnabarGym_TrainerApproach2Movement
	sjump TrainerBurglarRamon

.Right:
	writetext CinnabarGym_QuizRightText
	waitbutton
	changeblock 12, 12, $0e ; floor
	reloadmappart
	closetext
	setevent EVENT_CINNABAR_GYM_DOOR3
	end

.Text:
	text "POLIWAG evolves 3"
	line "times?"
	done

CinnabarGym_Quiz4Script:
	scall CinnabarGym_QuizScriptPart1
	writetext .Text
	yesorno
	iffalse .Right
	writetext CinnabarGym_QuizWrongText
	waitbutton
	closetext
	checkevent EVENT_BEAT_SUPER_NERD_DEREK_GEN1
	iftrue DummyScript
	applymovement CINNABARGYM_KANTO_SUPER_NERD5, CinnabarGym_TrainerApproach2Movement
	sjump TrainerSuperNerdDerek

.Right:
	writetext CinnabarGym_QuizRightText
	waitbutton
	changeblock 6, 16, $0e ; floor
	reloadmappart
	closetext
	setevent EVENT_CINNABAR_GYM_DOOR4
	end

.Text:
	text "Are thunder moves"
	line "effective against"
	cont "ground element-"
	cont "type #MON?"
	done

CinnabarGym_Quiz5Script:
	scall CinnabarGym_QuizScriptPart1
	writetext .Text
	yesorno
	iftrue .Right
	writetext CinnabarGym_QuizWrongText
	waitbutton
	closetext
	checkevent EVENT_BEAT_BURGLAR_DUSTY_GEN1
	iftrue DummyScript
	applymovement CINNABARGYM_KANTO_SUPER_NERD6, CinnabarGym_TrainerApproach2Movement
	sjump TrainerBurglarDusty

.Right:
	writetext CinnabarGym_QuizRightText
	waitbutton
	changeblock 4, 12, $0e ; floor
	reloadmappart
	closetext
	setevent EVENT_CINNABAR_GYM_DOOR5
	end

.Text:
	text "#MON of the"
	line "same kind and"
	cont "level are not"
	cont "identical?"
	done

CinnabarGym_Quiz6Script:
	scall CinnabarGym_QuizScriptPart1
	writetext .Text
	yesorno
	iffalse .Right
	writetext CinnabarGym_QuizWrongText
	waitbutton
	closetext
	checkevent EVENT_BEAT_SUPER_NERD_ZAC_GEN1
	iftrue DummyScript
	applymovement CINNABARGYM_KANTO_SUPER_NERD7, CinnabarGym_TrainerApproach2Movement
	sjump TrainerSuperNerdZac

.Right:
	writetext CinnabarGym_QuizRightText
	waitbutton
	changeblock 4, 6, $0e ; floor
	reloadmappart
	closetext
	setevent EVENT_CINNABAR_GYM_DOOR6
	end

.Text:
	text "TM28 contains"
	line "TOMBSTONER?"
	done

CinnabarGym_QuizScriptPart1:
	opentext
	writetext .Text
	end

.Text:
	text "#MON Quiz!"

	para "Get it right and"
	line "the door opens to"
	cont "the next room!"

	para "Get it wrong and"
	line "face a trainer!"

	para "If you want to"
	line "conserve your"
	cont "#MON for the"
	cont "GYM LEADER..."

	para "Then get it right!"
	line "Here we go!"
	prompt

CinnabarGym_QuizRightText:
	text "You're absolutely"
	line "correct!"

	para "Go on through!"
	done

CinnabarGym_QuizWrongText:
	text "Sorry! Bad call!"
	done

CinnabarGym_TrainerApproach1Movement:
	step LEFT
	step UP
	step_end

CinnabarGym_TrainerApproach2Movement:
	step LEFT
	step_end

CinnabarGym_MapEvents:
	def_warp_events
	warp_event 16, 17, CINNABAR_ISLAND, 2
	warp_event 17, 17, CINNABAR_ISLAND, 2

	def_coord_events

	def_bg_events
	bg_event 17, 13, BGEVENT_UP, CinnabarGym_StatueScript
	bg_event 15,  7, BGEVENT_UP, CinnabarGym_Quiz1Script
	bg_event 10,  1, BGEVENT_UP, CinnabarGym_Quiz2Script
	bg_event  9,  7, BGEVENT_UP, CinnabarGym_Quiz3Script
	bg_event  9, 13, BGEVENT_UP, CinnabarGym_Quiz4Script
	bg_event  1, 13, BGEVENT_UP, CinnabarGym_Quiz5Script
	bg_event  1,  7, BGEVENT_UP, CinnabarGym_Quiz6Script

	def_object_events
	object_event  3,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarGym_BlaineScript, -1
	object_event 17,  2, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerSuperNerdErik, -1
	object_event 17,  8, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrainerBurglarQuinn, -1
	object_event 11,  4, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrainerSuperNerdAvery, -1
	object_event 11,  8, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrainerBurglarRamon, -1
	object_event 11, 14, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrainerSuperNerdDerek, -1
	object_event  3, 14, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrainerBurglarDusty, -1
	object_event  3,  8, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrainerSuperNerdZac, -1
	object_event 16, 13, SPRITE_KANTO_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarGym_GymGuyScript, -1
