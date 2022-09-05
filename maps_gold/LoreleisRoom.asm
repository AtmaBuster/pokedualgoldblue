	object_const_def
	const LORELEISROOM_LORELEI

LoreleisRoom_MapScripts:
	def_scene_scripts
	scene_script .ForceUp ; SCENE_DEFAULT
	scene_script DummyScript ; SCENE_FINISHED

	def_callbacks
	callback MAPCALLBACK_TILES, .Doors

.ForceUp:
	sdefer .ForceUpScript
	end

.Doors:
	checkevent EVENT_LORELEIS_ROOM_EXIT_OPEN
	iffalse .KeepClosed
	changeblock 4, 0, $74 ; open door
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

LoreleisRoom_LoreleiScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_LORELEI_GEN1
	iftrue .FightDone
	writetext .IntroText
	waitbutton
	closetext
	winlosstext .WinText, 0
	loadtrainer LORELEI_GEN1, LORELEI1_GEN1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_LORELEI_GEN1
	opentext
.FightDone:
	writetext .AfterText
	waitbutton
	changeblock 4, 0, $74 ; open door
	reloadmappart
	setevent EVENT_LORELEIS_ROOM_EXIT_OPEN
	closetext
	end

.IntroText:
	text "Welcome to"
	line "#MON LEAGUE!"

	para "I am LORELEI of"
	line "the ELITE FOUR!"

	para "No one can best"
	line "me when it comes"
	cont "to icy #MON!"

	para "Freezing moves"
	line "are powerful!"

	para "Your #MON will"
	line "be at my mercy"
	cont "when they are"
	cont "frozen solid!"

	para "Hahaha!"
	line "Are you ready?"
	done

.WinText:
	text "How dare you!"
	done

.AfterText:
	text "You're better"
	line "than I thought!"
	cont "Go on ahead!"

	para "You only got a"
	line "taste of #MON"
	cont "LEAGUE power!"
	done

LoreleisRoom_ForceIntoRoomScript:
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

LoreleisRoom_MapEvents:
	def_warp_events
	warp_event  4, 11, INDIGO_PLATEAU_LOBBY, 3
	warp_event  5, 11, INDIGO_PLATEAU_LOBBY, 3
	warp_event  4,  0, BRUNOS_ROOM_KANTO, 1
	warp_event  5,  0, BRUNOS_ROOM_KANTO, 2

	def_coord_events
	coord_event  4, 10, SCENE_FINISHED, LoreleisRoom_ForceIntoRoomScript
	coord_event  5, 10, SCENE_FINISHED, LoreleisRoom_ForceIntoRoomScript

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_LORELEI, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LoreleisRoom_LoreleiScript, -1
