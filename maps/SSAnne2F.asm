	object_const_def
	const SSANNE2F_WAITER
	const SSANNE2F_KANTO_BLUE

SSAnne2F_MapScripts:
	def_scene_scripts
	scene_script DummyScript ; SCENE_DEFAULT
	scene_script DummyScript ; SCENE_FINISHED

	def_callbacks

SSAnne2F_RivalScriptL:
	appear SSANNE2F_KANTO_BLUE
	playmusic MUSIC_RBY_MEET_RIVAL
	applymovement SSANNE2F_KANTO_BLUE, .Approach
	scall SSAnne2F_RivalScript
	applymovement SSANNE2F_KANTO_BLUE, .Leave
	disappear SSANNE2F_KANTO_BLUE
	special RestartMapMusic
	end

.Approach:
	step DOWN
	step DOWN
	step DOWN
	step_end

.Leave:
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

SSAnne2F_RivalScriptR:
	appear SSANNE2F_KANTO_BLUE
	playmusic MUSIC_RBY_MEET_RIVAL
	applymovement SSANNE2F_KANTO_BLUE, .Approach
	turnobject PLAYER, LEFT
	scall SSAnne2F_RivalScript
	applymovement SSANNE2F_KANTO_BLUE, .Leave
	disappear SSANNE2F_KANTO_BLUE
	special RestartMapMusic
	end

.Approach:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	turn_head RIGHT
	step_end

.Leave:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

SSAnne2F_RivalScript:
	opentext
	writetext .IntroText
	waitbutton
	closetext
	checkevent EVENT_GOT_CHARMANDER
	iftrue .VsSquirtle
	checkevent EVENT_GOT_SQUIRTLE
	iftrue .VsBulbasaur
; VsCharmander
	winlosstext .WinText, .LossText
	loadtrainer RIVAL2_GEN1, RIVAL2_1_CHARMANDER_GEN1
	startbattle
	reloadmapafterbattle
	sjump .After

.VsSquirtle:
	winlosstext .WinText, .LossText
	loadtrainer RIVAL2_GEN1, RIVAL2_1_SQUIRTLE_GEN1
	startbattle
	reloadmapafterbattle
	sjump .After

.VsBulbasaur:
	winlosstext .WinText, .LossText
	loadtrainer RIVAL2_GEN1, RIVAL2_1_BULBASAUR_GEN1
	startbattle
	reloadmapafterbattle
.After:
	opentext
	writetext .AfterText
	waitbutton
	closetext
	setscene SCENE_FINISHED
	playmusic MUSIC_RBY_MEET_RIVAL
	end

.IntroText:
	text "<RIVAL>: Bonjour!"
	line "<PLAYER>!"

	para "Imagine seeing"
	line "you here!"

	para "<PLAYER>, were you"
	line "really invited?"

	para "So how's your"
	line "#DEX coming?"

	para "I already caught"
	line "40 kinds, pal!"

	para "Different kinds"
	line "are everywhere!"

	para "Crawl around in"
	line "grassy areas!"
	done

.WinText:
	text "Humph!"

	para "At least you're"
	line "raising your"
	cont "#MON!"
	done

.LossText:
	text "<PLAYER>! What are"
	line "you, seasick?"

	para "You should shape"
	line "up, pal!"
	done

.AfterText:
	text "<RIVAL>: I heard"
	line "there was a CUT"
	cont "master on board."

	para "But, he was just a"
	line "seasick, old man!"

	para "But, CUT itself is"
	line "really useful!"

	para "You should go see"
	line "him! Smell ya!"
	done

SSAnne2F_WaiterScript:
	jumptextfaceplayer .Text
.Text:
	text "This ship, she is"
	line "a luxury liner"
	cont "for trainers!"

	para "At every port, we"
	line "hold parties with"
	cont "invited trainers!"
	done

SSAnne2F_MapEvents:
	def_warp_events
	warp_event  9, 11, SS_ANNE_2F_ROOMS, 1
	warp_event 13, 11, SS_ANNE_2F_ROOMS, 3
	warp_event 17, 11, SS_ANNE_2F_ROOMS, 5
	warp_event 21, 11, SS_ANNE_2F_ROOMS, 7
	warp_event 25, 11, SS_ANNE_2F_ROOMS, 9
	warp_event 29, 11, SS_ANNE_2F_ROOMS, 11
	warp_event  2,  4, SS_ANNE_1F, 9
	warp_event  2, 12, SS_ANNE_3F, 2
	warp_event 36,  4, SS_ANNE_CAPTAINS_ROOM, 1

	def_coord_events
	coord_event 36,  8, SCENE_DEFAULT, SSAnne2F_RivalScriptL
	coord_event 37,  8, SCENE_DEFAULT, SSAnne2F_RivalScriptR

	def_bg_events

	def_object_events
	object_event  3,  7, SPRITE_WAITER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnne2F_WaiterScript, -1
	object_event 36,  4, SPRITE_KANTO_BLUE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, EVENT_SS_ANNE_2F_RIVAL
