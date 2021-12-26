	object_const_def
	const FIGHTINGDOJO_HIKER1
	const FIGHTINGDOJO_HIKER2
	const FIGHTINGDOJO_HIKER3
	const FIGHTINGDOJO_HIKER4
	const FIGHTINGDOJO_HIKER5
	const FIGHTINGDOJO_POKE_BALL1
	const FIGHTINGDOJO_POKE_BALL2

FightingDojo_MapScripts:
	def_scene_scripts
	scene_script DummyScript ; SCENE_DEFAULT
	scene_script DummyScript ; SCENE_FINISHED

	def_callbacks

FightingDojo_KiyoScript:
	faceobject PLAYER, FIGHTINGDOJO_HIKER1
	faceobject FIGHTINGDOJO_HIKER1, PLAYER
	opentext
	checkevent EVENT_GOT_MON_FROM_FIGHTINIG_DOJO
	iftrue .After2
	checkevent EVENT_BEAT_BLACKBELT_KIYO_GEN1
	iftrue .After1
	writetext .IntroText
	waitbutton
	closetext
	winlosstext .WinText, 0
	loadtrainer BLACKBELT_GEN1, KIYO_GEN1
	startbattle
	reloadmapafterbattle
	opentext
	setevent EVENT_BEAT_BLACKBELT_KIYO_GEN1
	setevent EVENT_BEAT_BLACKBELT_MIKE_GEN1
	setevent EVENT_BEAT_BLACKBELT_HIDEKI_GEN1
	setevent EVENT_BEAT_BLACKBELT_AARON_GEN1
	setevent EVENT_BEAT_BLACKBELT_HITOSHI_GEN1
	setscene SCENE_FINISHED
.After1:
	writetext .After1Text
	waitbutton
	closetext
	end

.After2:
	writetext .After2Text
	waitbutton
	closetext
	end

.IntroText:
	text "Grunt!"

	para "I am the KARATE"
	line "MASTER! I am the"
	cont "LEADER here!"

	para "You wish to"
	line "challenge us?"
	cont "Expect no mercy!"

	para "Fwaaa!"
	done

.WinText:
	text "Hwa!"
	line "Arrgh! Beaten!"
	done

.After1Text:
	text "Indeed, I have"
	line "lost!"

	para "But, I beseech"
	line "you, do not take"
	cont "our emblem as"
	cont "your trophy!"

	para "In return, I will"
	line "give you a prized"
	cont "fighting #MON!"

	para "Choose whichever"
	line "one you like!"
	done

.After2Text:
	text "Ho!"

	para "Stay and train at"
	line "Karate with us!"
	done

FightingDojo_HitmonleeBallScript:
	checkevent EVENT_GOT_MON_FROM_FIGHTINIG_DOJO
	iftrue FightingDojo_DontGetGreedy
	refreshscreen
	pokepic HITMONLEE
	cry HITMONLEE
	waitbutton
	closepokepic
	opentext
	writetext .WantItText
	yesorno
	iffalse .Done
	disappear FIGHTINGDOJO_POKE_BALL1
	writetext .GotItText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke HITMONLEE, 30
	setevent EVENT_GOT_MON_FROM_FIGHTINIG_DOJO
.Done:
	closetext
	end

.WantItText:
	text "You want the"
	line "hard kicking"
	cont "HITMONLEE?"
	done

.GotItText:
	text "<PLAYER> got"
	line "HITMONLEE!"
	done

FightingDojo_HitmonchanBallScript:
	checkevent EVENT_GOT_MON_FROM_FIGHTINIG_DOJO
	iftrue FightingDojo_DontGetGreedy
	refreshscreen
	pokepic HITMONCHAN
	cry HITMONCHAN
	waitbutton
	closepokepic
	opentext
	writetext .WantItText
	yesorno
	iffalse .Done
	disappear FIGHTINGDOJO_POKE_BALL2
	writetext .GotItText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke HITMONCHAN, 30
	setevent EVENT_GOT_MON_FROM_FIGHTINIG_DOJO
.Done:
	closetext
	end

.WantItText:
	text "You want the"
	line "piston punching"
	cont "HITMONCHAN?"
	done

.GotItText:
	text "<PLAYER> got"
	line "HITMONCHAN!"
	done

FightingDojo_DontGetGreedy:
	opentext
	writetext .Text
	waitbutton
	closetext
	end

.Text:
	text "Better not get"
	line "greedy..."
	done

TrainerBlackbeltMike:
	trainer BLACKBELT_GEN1, MIKE_GEN1, EVENT_BEAT_BLACKBELT_MIKE_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Hoargh! Take your"
	line "shoes off!"
	done

.BeatenText:
	text "I give"
	line "up!"
	done

.AfterText:
	text "You wait 'til you"
	line "see our Master!"

	para "I'm a small fry"
	line "compared to him!"
	done

TrainerBlackbeltHideki:
	trainer BLACKBELT_GEN1, HIDEKI_GEN1, EVENT_BEAT_BLACKBELT_HIDEKI_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I hear you're"
	line "good! Show me!"
	done

.BeatenText:
	text "Judge!"
	line "1 point!"
	done

.AfterText:
	text "Our Master is a"
	line "pro fighter!"
	done

TrainerBlackbeltAaron:
	trainer BLACKBELT_GEN1, AARON_GEN1, EVENT_BEAT_BLACKBELT_AARON_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Nothing tough"
	line "frightens me!"

	para "I break boulders"
	line "for training!"
	done

.BeatenText:
	text "Yow!"
	line "Stubbed fingers!"
	done

.AfterText:
	text "The only thing"
	line "that frightens us"
	cont "is psychic power!"
	done

TrainerBlackbeltHitoshi:
	trainer BLACKBELT_GEN1, HITOSHI_GEN1, EVENT_BEAT_BLACKBELT_HITOSHI_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Hoohah!"

	para "You're trespassing"
	line "in our FIGHTING"
	cont "DOJO!"
	done

.BeatenText:
	text "Oof!"
	line "I give up!"
	done

.AfterText:
	text "The prime fighters"
	line "across the land"
	cont "train here."
	done

FightingDojo_StatueScript:
	jumptext .Text
.Text:
	text "FIGHTING DOJO"
	done

FightingDojo_Scroll1Script:
	jumptext .Text
.Text:
	text "Enemies on every"
	line "side!"
	done

FightingDojo_Scroll2Script:
	jumptext .Text
.Text:
	text "What goes around"
	line "comes around!"
	done

FightingDojo_MapEvents:
	def_warp_events
	warp_event  4, 11, SAFFRON_CITY, 2
	warp_event  5, 11, SAFFRON_CITY, 2

	def_coord_events
	coord_event  4,  3, SCENE_DEFAULT, FightingDojo_KiyoScript

	def_bg_events
	bg_event  3,  9, BGEVENT_UP, FightingDojo_StatueScript
	bg_event  6,  9, BGEVENT_UP, FightingDojo_StatueScript
	bg_event  4,  0, BGEVENT_UP, FightingDojo_Scroll1Script
	bg_event  5,  0, BGEVENT_UP, FightingDojo_Scroll2Script

	def_object_events
	object_event  5,  3, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, FightingDojo_KiyoScript, -1
	object_event  3,  4, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerBlackbeltMike, -1
	object_event  3,  6, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerBlackbeltHideki, -1
	object_event  5,  5, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerBlackbeltAaron, -1
	object_event  5,  7, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerBlackbeltHitoshi, -1
	object_event  4,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FightingDojo_HitmonleeBallScript, EVENT_FIGHTING_DOJO_BALL1
	object_event  5,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FightingDojo_HitmonchanBallScript, EVENT_FIGHTING_DOJO_BALL2
