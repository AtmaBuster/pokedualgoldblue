	object_const_def
	const AGATHASROOM_AGATHA

AgathasRoom_MapScripts:
	def_scene_scripts
	scene_script .ForceUp ; SCENE_DEFAULT
	scene_script DummyScript ; SCENE_FINISHED

	def_callbacks
	callback MAPCALLBACK_TILES, .Doors

.ForceUp:
	sdefer .ForceUpScript
	end

.Doors:
	checkevent EVENT_AGATHAS_ROOM_EXIT_OPEN
	iffalse .KeepClosed
	changeblock 4, 0, $6b ; open door
.KeepClosed:
	endcallback

.ForceUpScript:
	applymovement PLAYER, .UpMove
	setscene SCENE_FINISHED
	end

.UpMove:
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end

AgathasRoom_AgathaScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_AGATHA_GEN1
	iftrue .FightDone
	writetext .IntroText
	waitbutton
	closetext
	winlosstext .WinText, 0
	loadtrainer AGATHA_GEN1, AGATHA1_GEN1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_AGATHA_GEN1
	opentext
.FightDone:
	writetext .AfterText
	waitbutton
	changeblock 4, 0, $6b ; open door
	reloadmappart
	setevent EVENT_AGATHAS_ROOM_EXIT_OPEN
	closetext
	end

.IntroText:
	text "I am AGATHA of"
	line "the ELITE FOUR!"

	para "OAK's taken a lot"
	line "of interest in"
	cont "you, child!"

	para "That old duff was"
	line "once tough and"
	cont "handsome! That"
	cont "was decades ago!"

	para "Now he just wants"
	line "to fiddle with"
	cont "his #DEX! He's"
	cont "wrong! #MON"
	cont "are for fighting!"

	para "<PLAYER>! I'll show"
	line "you how a real"
	cont "trainer fights!"
	done

.WinText:
	text "Oh ho! You're"
	line "something special,"
	cont "child!"
	done

.AfterText:
	text "You win! I see"
	line "what the old duff"
	cont "sees in you now!"

	para "I have nothing"
	line "else to say! Run"
	cont "along now, child!"
	done

AgathasRoom_ForceIntoRoomScript:
	opentext
	writetext .Text
	waitbutton
	closetext
	applymovement PLAYER, .MoveUp
	end

.Text:
	text "Someone's voice:"
	line "Don't run away!"
	done

.MoveUp:
	step UP
	step_end

AgathasRoom_MapEvents:
	def_warp_events
	warp_event  4, 11, BRUNOS_ROOM_KANTO, 3
	warp_event  5, 11, BRUNOS_ROOM_KANTO, 4
	warp_event  4,  0, LANCES_ROOM_KANTO, 1
	warp_event  5,  0, LANCES_ROOM_KANTO, 1

	def_coord_events
	coord_event  4, 10, SCENE_FINISHED, AgathasRoom_ForceIntoRoomScript
	coord_event  5, 10, SCENE_FINISHED, AgathasRoom_ForceIntoRoomScript

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_AGATHA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, AgathasRoom_AgathaScript, -1
