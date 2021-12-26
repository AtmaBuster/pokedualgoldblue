	object_const_def
	const SILPHCO11F_SILPH_PRESIDENT
	const SILPHCO11F_KANTO_BEAUTY
	const SILPHCO11F_GIOVANNI
	const SILPHCO11F_KANTO_ROCKET1
	const SILPHCO11F_KANTO_ROCKET2

SilphCo11F_MapScripts:
	def_scene_scripts
	scene_script DummyScript ; SCENE_DEFAULT
	scene_script DummyScript ; SCENE_FINISHED

	def_callbacks
	callback MAPCALLBACK_TILES, .Doors

.Doors:
	checkevent EVENT_SILPH_CO_11F_DOOR_1
	iftrue .SkipDoor1
	changeblock 6, 12, $20
.SkipDoor1:
	endcallback

SilphCo11F_Door1:
	cardkeydoor 3, 6, $03, EVENT_SILPH_CO_11F_DOOR_1

SilphCo11F_PCScript:
	jumpstd PCScript

TrainerRocketGrunt39:
	trainer ROCKET_GEN1, GRUNT39_GEN1, EVENT_BEAT_ROCKET_GRUNT39_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Stop right there!"
	line "Don't you move!"
	done

.BeatenText:
	text "Don't..."
	line "Please!"
	done

.AfterText:
	text "So, you want to"
	line "see my BOSS?"
	done

TrainerRocketGrunt40:
	trainer ROCKET_GEN1, GRUNT40_GEN1, EVENT_BEAT_ROCKET_GRUNT40_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Halt! Do you have"
	line "an appointment"
	cont "with my BOSS?"
	done

.BeatenText:
	text "Gaah!"
	line "Demolished!"
	done

.AfterText:
	text "Watch your step,"
	line "my BOSS likes his"
	cont "#MON tough!"
	done

SilphCo11F_GiovanniScript:
	opentext
	writetext .IntroText
	waitbutton
	closetext
	applymovement SILPHCO11F_GIOVANNI, .Approach
	faceobject SILPHCO11F_GIOVANNI, PLAYER
	faceobject PLAYER, SILPHCO11F_GIOVANNI
	winlosstext .WinText, 0
	loadtrainer GIOVANNI_GEN1, GIOVANNI2_GEN1
	startbattle
	reloadmapafterbattle
	opentext
	writetext .AfterText
	waitbutton
	closetext
	special FadeBlackQuickly
	pause 3
	setevent EVENT_BEAT_GIOVANNI2_GEN1
	setevent EVENT_SAFFRON_CITY_ROCKET_GROUP1
	clearevent EVENT_SAFFRON_CITY_ROCKET_GROUP2
	disappear SILPHCO11F_GIOVANNI
	disappear SILPHCO11F_KANTO_ROCKET1
	disappear SILPHCO11F_KANTO_ROCKET2
	special FadeInQuickly
	setscene SCENE_FINISHED
	end

.IntroText:
	text "Ah <PLAYER>!"
	line "So we meet again!"

	para "The PRESIDENT and"
	line "I are discussing"
	cont "a vital business"
	cont "proposition."

	para "Keep your nose"
	line "out of grown-up"
	cont "matters..."

	para "Or, experience a"
	line "world of pain!"
	done

.WinText:
	text "Arrgh!!"
	line "I lost again!?"
	done

.AfterText:
	text "Blast it all!"
	line "You ruined our"
	cont "plans for SILPH!"

	para "But, TEAM ROCKET"
	line "will never fall!"

	para "<PLAYER>! Never"
	line "forget that all"
	cont "#MON exist"
	cont "for TEAM ROCKET!"

	para "I must go, but I"
	line "shall return!"
	done

.Approach:
	step DOWN
	step DOWN
	step DOWN
	step_end

SilphCo11F_PresidentScript:
	faceplayer
	opentext
	checkevent EVENT_SILPH_CO_11F_GOT_MASTER_BALL
	iftrue .After
	writetext .Text1
	waitbutton
	verbosegiveitem MASTER_BALL
	iffalse .BagFull
	setevent EVENT_SILPH_CO_11F_GOT_MASTER_BALL
.BagFull:
	closetext
	end

.After:
	writetext .Text2
	waitbutton
	closetext
	end

.Text1:
	text "PRESIDENT: Thank"
	line "you for saving"
	cont "SILPH!"

	para "I will never"
	line "forget you saved"
	cont "us in our moment"
	cont "of peril!"

	para "I have to thank"
	line "you in some way!"

	para "Because I am rich,"
	line "I can give you"
	cont "anything!"

	para "Here, maybe this"
	line "will do!"
	done

.Text2:
	text "PRESIDENT: You"
	line "can't buy that"
	cont "anywhere!"

	para "It's our secret"
	line "prototype MASTER"
	cont "BALL!"

	para "It will catch any"
	line "#MON without"
	cont "fail!"

	para "You should be"
	line "quiet about using"
	cont "it, though."
	done

SilphCo11F_SecretaryScript:
	jumptextfaceplayer .Text
.Text:
	text "SECRETARY: Thank"
	line "you for rescuing"
	cont "all of us!"

	para "We admire your"
	line "courage."
	done


SilphCo11F_MapEvents:
	def_warp_events
	warp_event  9,  0, SILPH_CO_10F, 2
	warp_event 13,  0, SILPH_CO_ELEVATOR, 1
	warp_event  5,  5, SILPH_CO_11F, 10 ; LAST_MAP?
	warp_event  3,  2, SILPH_CO_7F, 4

	def_coord_events
	coord_event  6, 13, SCENE_DEFAULT, SilphCo11F_GiovanniScript
	coord_event  7, 12, SCENE_DEFAULT, SilphCo11F_GiovanniScript

	def_bg_events
	bg_event 10, 12, BGEVENT_UP, SilphCo11F_PCScript
	bg_event  6, 13, BGEVENT_KEYDOOR, SilphCo11F_Door1
	bg_event  7, 13, BGEVENT_KEYDOOR, SilphCo11F_Door1

	def_object_events
	object_event  7,  5, SPRITE_SILPH_PRESIDENT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo11F_PresidentScript, -1
	object_event 10,  5, SPRITE_KANTO_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo11F_SecretaryScript, -1
	object_event  6,  9, SPRITE_GIOVANNI, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_SAFFRON_CITY_ROCKET_GROUP1
	object_event  3, 16, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerRocketGrunt39, EVENT_SAFFRON_CITY_ROCKET_GROUP1
	object_event 15,  9, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerRocketGrunt40, EVENT_SAFFRON_CITY_ROCKET_GROUP1
