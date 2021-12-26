	object_const_def
	const VERMILIONGYM_KANTO_ROCKER
	const VERMILIONGYM_GENTLEMAN
	const VERMILIONGYM_KANTO_SUPER_NERD
	const VERMILIONGYM_KANTO_SAILOR
	const VERMILIONGYM_KANTO_GYM_GUIDE

VermilionGym_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .ResetCans
	callback MAPCALLBACK_TILES, .Door

.ResetCans:
	clearevent EVENT_VERMILION_GYM_FOUND_FIRST_CAN
	special ResetVermilionGymPuzzle
	endcallback

.Door:
	checkevent EVENT_VERMILION_GYM_LOCK_OPEN
	iftrue .KeepOpen
	changeblock 4, 4, $24 ; door
.KeepOpen:
	endcallback

VermilionGym_LtSurgeScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_LT_SURGE_GEN1
	iftrue .FightDone
	writetext .IntroText
	waitbutton
	closetext
	winlosstext .WinText, 0
	loadtrainer LT_SURGE_GEN1, LT_SURGE1_GEN1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_LT_SURGE_GEN1
	opentext
	writetext .GotBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_THUNDERBADGE
.FightDone:
	checkevent EVENT_GOT_TM_THUNDERBOLT
	iftrue .SpeechAfterTM
	setevent EVENT_BEAT_GENTLEMAN_TUCKER_GEN1
	setevent EVENT_BEAT_ROCKER_VINCENT_GEN1
	setevent EVENT_BEAT_SAILOR_DWAYNE_GEN1
	writetext .BadgeText
	promptbutton
IF DEF(_GOLD)
	verbosegiveitem TM_DYNAMICPUNCH
ELIF DEF(_BLUE)
	verbosegiveitem TM_THUNDERBOLT
ENDC
	iffalse .NoRoom
	setevent EVENT_GOT_TM_THUNDERBOLT
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
	text "Hey, kid! What do"
	line "you think you're"
	cont "doing here?"

	para "You won't live"
	line "long in combat!"
	cont "That's for sure!"

	para "I tell you kid,"
	line "electric #MON"
	cont "saved me during"
	cont "the war!"

	para "They zapped my"
	line "enemies into"
	cont "paralysis!"

	para "The same as I'll"
	line "do to you!"
	done

.WinText:
	text "Whoa!"

	para "You're the real"
	line "deal, kid!"

	para "Fine then, take"
	line "the THUNDERBADGE!"
	done

.GotBadgeText:
	text "<PLAYER> received"
	line "THUNDERBADGE!"
	done

.BadgeText:
	text "The THUNDERBADGE"
	line "cranks up your"
	cont "#MON's SPEED!"

	para "It also lets your"
	line "#MON FLY any"
	cont "time, kid!"

	para "You're special,"
	line "kid! Take this!"
	done

.TMText:
	text "TM24 contains"
	line "THUNDERBOLT!"

	para "Teach it to an"
	line "electric #MON!"
	done

.FightDoneText:
	text "A little word of"
	line "advice, kid!"

	para "Electricity is"
	line "sure powerful!"

	para "But, it's useless"
	line "against ground-"
	cont "type #MON!"
	done

TrainerGentlemanTucker:
	trainer GENTLEMAN_GEN1, TUCKER2_GEN1, EVENT_BEAT_GENTLEMAN_TUCKER_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "When I was in the"
	line "Army, LT.SURGE"
	cont "was my strict CO!"
	done

.BeatenText:
	text "Stop!"
	line "You're very good!"
	done

.AfterText:
	text "The door won't"
	line "open?"

	para "LT.SURGE always"
	line "was cautious!"
	done

TrainerRockerVincent:
	trainer ROCKER_GEN1, VINCENT1_GEN1, EVENT_BEAT_ROCKER_VINCENT_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I'm a lightweight,"
	line "but I'm good with"
	cont "electricity!"
	done

.BeatenText:
	text "Fried!"
	done

.AfterText:
	text "OK, I'll talk!"

	para "LT.SURGE said he"
	line "hid door switches"
	cont "inside something!"
	done

TrainerSailorDwayne:
	trainer SAILOR_GEN1, DWAYNE_GEN1, EVENT_BEAT_SAILOR_DWAYNE_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "This is no place"
	line "for kids!"
	done

.BeatenText:
	text "Wow!"
	line "Surprised me!"
	done

.AfterText:
	text "LT.SURGE set up"
	line "double locks!"
	cont "Here's a hint!"

	para "When you open the"
	line "1st lock, the 2nd"
	cont "lock is right"
	cont "next to it!"
	done

VermilionGym_GymGuyScript:
	faceplayer
	opentext
	checkflag ENGINE_THUNDERBADGE
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

	para "LT.SURGE has a"
	line "nickname. People"
	cont "refer to him as"
	cont "the Lightning"
	cont "American!"

	para "He's an expert on"
	line "electric #MON!"

	para "Birds and water"
	line "#MON are at"
	cont "risk! Beware of"
	cont "paralysis too!"

	para "LT.SURGE is very"
	line "cautious!"

	para "You'll have to"
	line "break a code to"
	cont "get to him!"
	done

.DoneText:
	text "Whew! That match"
	line "was electric!"
	done

VermilionGym_Can0Script:
	opentext
	checkevent EVENT_VERMILION_GYM_LOCK_OPEN
	iftrue VermilionGym_OnlyTrashHere
	checkevent EVENT_VERMILION_GYM_FOUND_FIRST_CAN
	iftrue .CheckSecond
	readmem wVermilionGymPuzzleCans
	ifequal 0, VermilionGym_OpenFirstLock
	sjump VermilionGym_OnlyTrashHere

.CheckSecond:
	readmem wVermilionGymPuzzleCans+1
	ifequal 0, VermilionGym_OpenSecondLock
	sjump VermilionGym_ResetLock

VermilionGym_Can1Script:
	opentext
	checkevent EVENT_VERMILION_GYM_LOCK_OPEN
	iftrue VermilionGym_OnlyTrashHere
	checkevent EVENT_VERMILION_GYM_FOUND_FIRST_CAN
	iftrue .CheckSecond
	readmem wVermilionGymPuzzleCans
	ifequal 1, VermilionGym_OpenFirstLock
	sjump VermilionGym_OnlyTrashHere

.CheckSecond:
	readmem wVermilionGymPuzzleCans+1
	ifequal 1, VermilionGym_OpenSecondLock
	sjump VermilionGym_ResetLock

VermilionGym_Can2Script:
	opentext
	checkevent EVENT_VERMILION_GYM_LOCK_OPEN
	iftrue VermilionGym_OnlyTrashHere
	checkevent EVENT_VERMILION_GYM_FOUND_FIRST_CAN
	iftrue .CheckSecond
	readmem wVermilionGymPuzzleCans
	ifequal 2, VermilionGym_OpenFirstLock
	sjump VermilionGym_OnlyTrashHere

.CheckSecond:
	readmem wVermilionGymPuzzleCans+1
	ifequal 2, VermilionGym_OpenSecondLock
	sjump VermilionGym_ResetLock

VermilionGym_Can3Script:
	opentext
	checkevent EVENT_VERMILION_GYM_LOCK_OPEN
	iftrue VermilionGym_OnlyTrashHere
	checkevent EVENT_VERMILION_GYM_FOUND_FIRST_CAN
	iftrue .CheckSecond
	readmem wVermilionGymPuzzleCans
	ifequal 3, VermilionGym_OpenFirstLock
	sjump VermilionGym_OnlyTrashHere

.CheckSecond:
	readmem wVermilionGymPuzzleCans+1
	ifequal 3, VermilionGym_OpenSecondLock
	sjump VermilionGym_ResetLock

VermilionGym_Can4Script:
	opentext
	checkevent EVENT_VERMILION_GYM_LOCK_OPEN
	iftrue VermilionGym_OnlyTrashHere
	checkevent EVENT_VERMILION_GYM_FOUND_FIRST_CAN
	iftrue .CheckSecond
	readmem wVermilionGymPuzzleCans
	ifequal 4, VermilionGym_OpenFirstLock
	sjump VermilionGym_OnlyTrashHere

.CheckSecond:
	readmem wVermilionGymPuzzleCans+1
	ifequal 4, VermilionGym_OpenSecondLock
	sjump VermilionGym_ResetLock

VermilionGym_Can5Script:
	opentext
	checkevent EVENT_VERMILION_GYM_LOCK_OPEN
	iftrue VermilionGym_OnlyTrashHere
	checkevent EVENT_VERMILION_GYM_FOUND_FIRST_CAN
	iftrue .CheckSecond
	readmem wVermilionGymPuzzleCans
	ifequal 5, VermilionGym_OpenFirstLock
	sjump VermilionGym_OnlyTrashHere

.CheckSecond:
	readmem wVermilionGymPuzzleCans+1
	ifequal 5, VermilionGym_OpenSecondLock
	sjump VermilionGym_ResetLock

VermilionGym_Can6Script:
	opentext
	checkevent EVENT_VERMILION_GYM_LOCK_OPEN
	iftrue VermilionGym_OnlyTrashHere
	checkevent EVENT_VERMILION_GYM_FOUND_FIRST_CAN
	iftrue .CheckSecond
	readmem wVermilionGymPuzzleCans
	ifequal 6, VermilionGym_OpenFirstLock
	sjump VermilionGym_OnlyTrashHere

.CheckSecond:
	readmem wVermilionGymPuzzleCans+1
	ifequal 6, VermilionGym_OpenSecondLock
	sjump VermilionGym_ResetLock

VermilionGym_Can7Script:
	opentext
	checkevent EVENT_VERMILION_GYM_LOCK_OPEN
	iftrue VermilionGym_OnlyTrashHere
	checkevent EVENT_VERMILION_GYM_FOUND_FIRST_CAN
	iftrue .CheckSecond
	readmem wVermilionGymPuzzleCans
	ifequal 7, VermilionGym_OpenFirstLock
	sjump VermilionGym_OnlyTrashHere

.CheckSecond:
	readmem wVermilionGymPuzzleCans+1
	ifequal 7, VermilionGym_OpenSecondLock
	sjump VermilionGym_ResetLock

VermilionGym_Can8Script:
	opentext
	checkevent EVENT_VERMILION_GYM_LOCK_OPEN
	iftrue VermilionGym_OnlyTrashHere
	checkevent EVENT_VERMILION_GYM_FOUND_FIRST_CAN
	iftrue .CheckSecond
	readmem wVermilionGymPuzzleCans
	ifequal 8, VermilionGym_OpenFirstLock
	sjump VermilionGym_OnlyTrashHere

.CheckSecond:
	readmem wVermilionGymPuzzleCans+1
	ifequal 8, VermilionGym_OpenSecondLock
	sjump VermilionGym_ResetLock

VermilionGym_Can9Script:
	opentext
	checkevent EVENT_VERMILION_GYM_LOCK_OPEN
	iftrue VermilionGym_OnlyTrashHere
	checkevent EVENT_VERMILION_GYM_FOUND_FIRST_CAN
	iftrue .CheckSecond
	readmem wVermilionGymPuzzleCans
	ifequal 9, VermilionGym_OpenFirstLock
	sjump VermilionGym_OnlyTrashHere

.CheckSecond:
	readmem wVermilionGymPuzzleCans+1
	ifequal 9, VermilionGym_OpenSecondLock
	sjump VermilionGym_ResetLock

VermilionGym_Can10Script:
	opentext
	checkevent EVENT_VERMILION_GYM_LOCK_OPEN
	iftrue VermilionGym_OnlyTrashHere
	checkevent EVENT_VERMILION_GYM_FOUND_FIRST_CAN
	iftrue .CheckSecond
	readmem wVermilionGymPuzzleCans
	ifequal 10, VermilionGym_OpenFirstLock
	sjump VermilionGym_OnlyTrashHere

.CheckSecond:
	readmem wVermilionGymPuzzleCans+1
	ifequal 10, VermilionGym_OpenSecondLock
	sjump VermilionGym_ResetLock

VermilionGym_Can11Script:
	opentext
	checkevent EVENT_VERMILION_GYM_LOCK_OPEN
	iftrue VermilionGym_OnlyTrashHere
	checkevent EVENT_VERMILION_GYM_FOUND_FIRST_CAN
	iftrue .CheckSecond
	readmem wVermilionGymPuzzleCans
	ifequal 11, VermilionGym_OpenFirstLock
	sjump VermilionGym_OnlyTrashHere

.CheckSecond:
	readmem wVermilionGymPuzzleCans+1
	ifequal 11, VermilionGym_OpenSecondLock
	sjump VermilionGym_ResetLock

VermilionGym_Can12Script:
	opentext
	checkevent EVENT_VERMILION_GYM_LOCK_OPEN
	iftrue VermilionGym_OnlyTrashHere
	checkevent EVENT_VERMILION_GYM_FOUND_FIRST_CAN
	iftrue .CheckSecond
	readmem wVermilionGymPuzzleCans
	ifequal 12, VermilionGym_OpenFirstLock
	sjump VermilionGym_OnlyTrashHere

.CheckSecond:
	readmem wVermilionGymPuzzleCans+1
	ifequal 12, VermilionGym_OpenSecondLock
	sjump VermilionGym_ResetLock

VermilionGym_Can13Script:
	opentext
	checkevent EVENT_VERMILION_GYM_LOCK_OPEN
	iftrue VermilionGym_OnlyTrashHere
	checkevent EVENT_VERMILION_GYM_FOUND_FIRST_CAN
	iftrue .CheckSecond
	readmem wVermilionGymPuzzleCans
	ifequal 13, VermilionGym_OpenFirstLock
	sjump VermilionGym_OnlyTrashHere

.CheckSecond:
	readmem wVermilionGymPuzzleCans+1
	ifequal 13, VermilionGym_OpenSecondLock
	sjump VermilionGym_ResetLock

VermilionGym_Can14Script:
	opentext
	checkevent EVENT_VERMILION_GYM_LOCK_OPEN
	iftrue VermilionGym_OnlyTrashHere
	checkevent EVENT_VERMILION_GYM_FOUND_FIRST_CAN
	iftrue .CheckSecond
	readmem wVermilionGymPuzzleCans
	ifequal 14, VermilionGym_OpenFirstLock
	sjump VermilionGym_OnlyTrashHere

.CheckSecond:
	readmem wVermilionGymPuzzleCans+1
	ifequal 14, VermilionGym_OpenSecondLock
	sjump VermilionGym_ResetLock

VermilionGym_SurgeCanScript:
	opentext
VermilionGym_OnlyTrashHere:
	writetext .Text
	waitbutton
	closetext
	end

.Text:
	text "Nope, there's"
	line "only trash here."
	done

VermilionGym_OpenFirstLock:
	writetext .Text
	waitbutton
	closetext
	setevent EVENT_VERMILION_GYM_FOUND_FIRST_CAN
	end

.Text:
	text "Hey! There's a"
	line "switch under the"
	cont "trash!"
	cont "Turn it on!"

	para "The 1st electric"
	line "lock opened!"
	done

VermilionGym_OpenSecondLock:
	writetext .Text
	waitbutton
	setevent EVENT_VERMILION_GYM_LOCK_OPEN
	changeblock 4, 4, $05 ; empty
	reloadmappart
	closetext
	end

.Text:
	text "The 2nd electric"
	line "lock opened!"

	para "The motorized door"
	line "opened!"
	done

VermilionGym_ResetLock:
	writetext .Text
	waitbutton
	closetext
	clearevent EVENT_VERMILION_GYM_FOUND_FIRST_CAN
	special ResetVermilionGymPuzzle
	end

.Text:
	text "Nope! There's"
	line "only trash here."
	cont "Hey! The electric"
	cont "locks were reset!"
	done

VermilionGym_StatueScript:
	opentext
	writetext .Text1
	checkflag ENGINE_THUNDERBADGE
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
	text "VERMILION CITY"
	line "#MON GYM"
	cont "LEADER: LT.SURGE"
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

VermilionGym_MapEvents:
	def_warp_events
	warp_event  4, 17, VERMILION_CITY, 4
	warp_event  5, 17, VERMILION_CITY, 4

	def_coord_events

	def_bg_events
	bg_event  3, 14, BGEVENT_UP, VermilionGym_StatueScript
	bg_event  6, 14, BGEVENT_UP, VermilionGym_StatueScript
	bg_event  6,  1, BGEVENT_READ, VermilionGym_SurgeCanScript
	bg_event  1,  7, BGEVENT_READ, VermilionGym_Can0Script
	bg_event  3,  7, BGEVENT_READ, VermilionGym_Can1Script
	bg_event  5,  7, BGEVENT_READ, VermilionGym_Can2Script
	bg_event  7,  7, BGEVENT_READ, VermilionGym_Can3Script
	bg_event  9,  7, BGEVENT_READ, VermilionGym_Can4Script
	bg_event  1,  9, BGEVENT_READ, VermilionGym_Can5Script
	bg_event  3,  9, BGEVENT_READ, VermilionGym_Can6Script
	bg_event  5,  9, BGEVENT_READ, VermilionGym_Can7Script
	bg_event  7,  9, BGEVENT_READ, VermilionGym_Can8Script
	bg_event  9,  9, BGEVENT_READ, VermilionGym_Can9Script
	bg_event  1, 11, BGEVENT_READ, VermilionGym_Can10Script
	bg_event  3, 11, BGEVENT_READ, VermilionGym_Can11Script
	bg_event  5, 11, BGEVENT_READ, VermilionGym_Can12Script
	bg_event  7, 11, BGEVENT_READ, VermilionGym_Can13Script
	bg_event  9, 11, BGEVENT_READ, VermilionGym_Can14Script

	def_object_events
	object_event  5,  1, SPRITE_KANTO_ROCKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionGym_LtSurgeScript, -1
	object_event  9,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGentlemanTucker, -1
	object_event  3,  8, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerRockerVincent, -1
	object_event  0, 10, SPRITE_KANTO_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerSailorDwayne, -1
	object_event  4, 14, SPRITE_KANTO_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionGym_GymGuyScript, -1
