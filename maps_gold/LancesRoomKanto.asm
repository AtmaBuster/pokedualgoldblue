	object_const_def
	const LANCESROOMKANTO_LANCE

LancesRoomKanto_MapScripts:
	def_scene_scripts
	scene_script .ForceUp ; SCENE_DEFAULT
	scene_script DummyScript ; SCENE_FINISHED
	scene_script DummyScript ; SCENE_FIGHT_LANCE

	def_callbacks
	callback MAPCALLBACK_TILES, .Doors

.ForceUp:
	sdefer .ForceUpScript
	end

.Doors:
	checkevent EVENT_LANCES_ROOM_KANTO_ENTRANCE_CLOSED
	iffalse .KeepClosed
	changeblock 4, 12, $72 ; closed door
	changeblock 6, 12, $73 ; closed door
.KeepClosed:
	endcallback

.ForceUpScript:
	applymovement PLAYER, .UpMove
	refreshscreen $85
	playsound SFX_ENTER_DOOR
	changeblock 4, 12, $72 ; closed door
	changeblock 6, 12, $73 ; closed door
	reloadmappart
	waitsfx
	closetext
	setscene SCENE_FIGHT_LANCE
	end

.UpMove:
REPT 6
	step LEFT
ENDR
REPT 7
	step DOWN
ENDR
REPT 12
	step LEFT
ENDR
REPT 12
	step UP
ENDR
	step_end

LancesRoomKanto_LanceScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_LANCE_GEN1
	iftrue .FightDone
	writetext .IntroText
	waitbutton
	closetext
	winlosstext .WinText, 0
	loadtrainer LANCE_GEN1, LANCE1_GEN1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_LANCE_GEN1
	opentext
.FightDone:
	writetext .AfterText
	waitbutton
	setscene SCENE_FINISHED
	closetext
	end

.IntroText:
	text "Ah! I heard about"
	line "you <PLAYER>!"

	para "I lead the ELITE"
	line "FOUR! You can"
	cont "call me LANCE the"
	cont "dragon trainer!"

	para "You know that"
	line "dragons are"
	cont "mythical #MON!"

	para "They're hard to"
	line "catch and raise,"
	cont "but their powers"
	cont "are superior!"

	para "They're virtually"
	line "indestructible!"

	para "Well, are you"
	line "ready to lose?"

	para "Your LEAGUE"
	line "challenge ends"
	cont "with me, <PLAYER>!"
	done

.WinText:
	text "That's it!"

	para "I hate to admit"
	line "it, but you are a"
	cont "#MON master!"
	done

.AfterText:
	text "I still can't"
	line "believe my"
	cont "dragons lost to"
	cont "you, <PLAYER>!"

	para "You are now the"
	line "#MON LEAGUE"
	cont "champion!"

	para "...Or, you would"
	line "have been, but"
	cont "you have one more"
	cont "challenge ahead."

	para "You have to face"
	line "another trainer!"
	cont "His name is..."

	para "<RIVAL>!"
	line "He beat the ELITE"
	cont "FOUR before you!"

	para "He is the real"
	line "#MON LEAGUE"
	cont "champion!"
	done

LancesRoomKanto_MapEvents:
	def_warp_events
	warp_event 24, 16, AGATHAS_ROOM, 3
	warp_event  5,  0, CHAMPIONS_ROOM, 1
	warp_event  6,  0, CHAMPIONS_ROOM, 1

	def_coord_events
	coord_event  5,  1, SCENE_FIGHT_LANCE, LancesRoomKanto_LanceScript
	coord_event  6,  2, SCENE_FIGHT_LANCE, LancesRoomKanto_LanceScript

	def_bg_events

	def_object_events
	object_event  6,  1, SPRITE_LANCE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, LancesRoomKanto_LanceScript, -1
