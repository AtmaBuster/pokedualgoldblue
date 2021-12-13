	object_const_def
	const ROUTE22_KANTO_BLUE1
	const ROUTE22_KANTO_BLUE2

Route22_MapScripts:
	def_scene_scripts
	scene_script DummyScript ; SCENE_DEFAULT
	scene_script DummyScript ; SCENE_ROUTE_22_RIVAL_1
	scene_script DummyScript ; SCENE_ROUTE_22_RIVAL_2

	def_callbacks

Route22_Rival1UpScript:
	playmusic MUSIC_RBY_MEET_RIVAL
	applymovement ROUTE22_KANTO_BLUE1, Route22_RivalEnter1Movement
	turnobject PLAYER, DOWN
	scall Route22_Rival1Script
	playmusic MUSIC_RBY_MEET_RIVAL
	applymovement ROUTE22_KANTO_BLUE1, Route22_RivalExit1Movement
	playmusic MUSIC_RBY_ROUTES3
	setscene SCENE_DEFAULT
	disappear ROUTE22_KANTO_BLUE1
	end

Route22_Rival1DownScript:
	playmusic MUSIC_RBY_MEET_RIVAL
	applymovement ROUTE22_KANTO_BLUE1, Route22_RivalEnter2Movement
	scall Route22_Rival1Script
	playmusic MUSIC_RBY_MEET_RIVAL
	applymovement ROUTE22_KANTO_BLUE1, Route22_RivalExit2Movement
	playmusic MUSIC_RBY_ROUTES3
	setscene SCENE_DEFAULT
	disappear ROUTE22_KANTO_BLUE1
	end

Route22_Rival2UpScript:
	playmusic MUSIC_RBY_MEET_RIVAL
	applymovement ROUTE22_KANTO_BLUE2, Route22_RivalEnter1Movement
	turnobject PLAYER, DOWN
	scall Route22_Rival2Script
	playmusic MUSIC_RBY_MEET_RIVAL
	applymovement ROUTE22_KANTO_BLUE2, Route22_RivalExit1Movement
	playmusic MUSIC_RBY_ROUTES3
	setscene SCENE_DEFAULT
	disappear ROUTE22_KANTO_BLUE2
	end

Route22_Rival2DownScript:
	playmusic MUSIC_RBY_MEET_RIVAL
	applymovement ROUTE22_KANTO_BLUE2, Route22_RivalEnter2Movement
	scall Route22_Rival2Script
	playmusic MUSIC_RBY_MEET_RIVAL
	applymovement ROUTE22_KANTO_BLUE2, Route22_RivalExit2Movement
	playmusic MUSIC_RBY_ROUTES3
	setscene SCENE_DEFAULT
	disappear ROUTE22_KANTO_BLUE2
	end

Route22_Rival1Script:
	opentext
	writetext .Text
	waitbutton
	closetext
	checkevent EVENT_GOT_CHARMANDER
	iftrue .VsSquirtle
	checkevent EVENT_GOT_SQUIRTLE
	iftrue .VsBulbasaur
; VsCharmander
	winlosstext .WinText, .LossText
	loadtrainer RIVAL1_GEN1, RIVAL1_2_CHARMANDER_GEN1
	startbattle
	reloadmapafterbattle
	sjump .After

.VsSquirtle:
	winlosstext .WinText, .LossText
	loadtrainer RIVAL1_GEN1, RIVAL1_2_SQUIRTLE_GEN1
	startbattle
	reloadmapafterbattle
	sjump .After

.VsBulbasaur:
	winlosstext .WinText, .LossText
	loadtrainer RIVAL1_GEN1, RIVAL1_2_BULBASAUR_GEN1
	startbattle
	reloadmapafterbattle
.After:
	opentext
	writetext .AfterText
	waitbutton
	closetext
	setevent EVENT_BEAT_ROUTE22_RIVAL_1ST_BATTLE
	end

.Text:
	text "<RIVAL>: Hey!"
	line "<PLAYER>!"

	para "You're going to"
	line "#MON LEAGUE?"

	para "Forget it! You"
	line "probably don't"
	cont "have any BADGEs!"

	para "The guard won't"
	line "let you through!"

	para "By the way, did"
	line "your #MON"
	cont "get any stronger?"
	done

.AfterText:
	text "I heard #MON"
	line "LEAGUE has many"
	cont "tough trainers!"

	para "I have to figure"
	line "out how to get"
	cont "past them!"

	para "You should quit"
	line "dawdling and get"
	cont "a move on!"
	done

.WinText:
	text "Awww!"
	line "You just lucked"
	cont "out!"
	done

.LossText:
	text "<RIVAL>: What?"
	line "Why do I have 2"
	cont "#MON?"

	para "You should catch"
	cont "some more too!"
	done

Route22_Rival2Script:
	opentext
	writetext .Text
	waitbutton
	closetext
	checkevent EVENT_GOT_CHARMANDER
	iftrue .VsSquirtle
	checkevent EVENT_GOT_SQUIRTLE
	iftrue .VsBulbasaur
; VsCharmander
	winlosstext .WinText, .LossText
	loadtrainer RIVAL2_GEN1, RIVAL2_4_CHARMANDER_GEN1
	startbattle
	reloadmapafterbattle
	sjump .After

.VsSquirtle:
	winlosstext .WinText, .LossText
	loadtrainer RIVAL2_GEN1, RIVAL2_4_SQUIRTLE_GEN1
	startbattle
	reloadmapafterbattle
	sjump .After

.VsBulbasaur:
	winlosstext .WinText, .LossText
	loadtrainer RIVAL2_GEN1, RIVAL2_4_BULBASAUR_GEN1
	startbattle
	reloadmapafterbattle
.After:
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.Text:
	text "<RIVAL>: What?"
	line "<PLAYER>! What a"
	cont "surprise to see"
	cont "you here!"

	para "So you're going to"
	line "#MON LEAGUE?"

	para "You collected all"
	line "the BADGEs too?"
	cont "That's cool!"

	para "Then I'll whip you"
	line "<PLAYER> as a"
	cont "warm up for"
	cont "#MON LEAGUE!"

	para "Come on!"
	done

.AfterText:
	text "That loosened me"
	line "up! I'm ready for"
	cont "#MON LEAGUE!"

	para "<PLAYER>, you need"
	line "more practice!"

	para "But hey, you know"
	line "that! I'm out of"
	cont "here. Smell ya!"
	done

.WinText:
	text "What!?"

	para "I was just"
	line "careless!"
	done

.LossText:
	text "<RIVAL>: Hahaha!"
	line "<PLAYER>! That's"
	cont "your best? You're"
	cont "nowhere near as"
	cont "good as me, pal!"

	para "Go train some"
	line "more! You loser!"
	done

Route22_RivalEnter1Movement:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

Route22_RivalEnter2Movement:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

Route22_RivalExit1Movement:
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

Route22_RivalExit2Movement:
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

Route22_GateSignScript:
	jumptext .Text
.Text:
	text "#MON LEAGUE"
	line "Front Gate"
	done

Route22_MapEvents:
	def_warp_events
IF DEF(_GOLD)
	warp_event  8,  5, VICTORY_ROAD_GATE, 1
ELIF DEF(_BLUE)
	warp_event  8,  5, ROUTE_22_GATE, 1
ENDC

	def_coord_events
	coord_event 29,  4, SCENE_ROUTE_22_RIVAL_1, Route22_Rival1UpScript
	coord_event 29,  5, SCENE_ROUTE_22_RIVAL_1, Route22_Rival1DownScript
	coord_event 29,  4, SCENE_ROUTE_22_RIVAL_2, Route22_Rival2UpScript
	coord_event 29,  5, SCENE_ROUTE_22_RIVAL_2, Route22_Rival2DownScript

	def_bg_events
	bg_event  7, 11, BGEVENT_READ, Route22_GateSignScript

	def_object_events
	object_event 24,  5, SPRITE_KANTO_BLUE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ROUTE_22_RIVAL_1
	object_event 24,  5, SPRITE_KANTO_BLUE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ROUTE_22_RIVAL_2
