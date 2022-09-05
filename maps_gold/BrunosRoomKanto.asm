	object_const_def
	const BRUNOSROOMKANTO_BRUNO

BrunosRoomKanto_MapScripts:
	def_scene_scripts
	scene_script .ForceUp ; SCENE_DEFAULT
	scene_script DummyScript ; SCENE_FINISHED

	def_callbacks
	callback MAPCALLBACK_TILES, .Doors

.ForceUp:
	sdefer .ForceUpScript
	end

.Doors:
	checkevent EVENT_BRUNOS_ROOM_KANTO_EXIT_OPEN
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

BrunosRoomKanto_BrunoScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_BRUNO_GEN1
	iftrue .FightDone
	writetext .IntroText
	waitbutton
	closetext
	winlosstext .WinText, 0
	loadtrainer BRUNO_GEN1, BRUNO1_GEN1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BRUNO_GEN1
	opentext
.FightDone:
	writetext .AfterText
	waitbutton
	changeblock 4, 0, $74 ; open door
	reloadmappart
	setevent EVENT_BRUNOS_ROOM_KANTO_EXIT_OPEN
	closetext
	end

.IntroText:
	text "I am BRUNO of"
	line "the ELITE FOUR!"

	para "Through rigorous"
	line "training, people"
	cont "and #MON can"
	cont "become stronger!"

	para "I've weight"
	line "trained with"
	cont "my #MON!"

	para "<PLAYER>!"

	para "We will grind you"
	line "down with our"
	cont "superior power!"

	para "Hoo hah!"
	done

.WinText:
	text "Why? How could I"
	line "lose?"
	done

.AfterText:
	text "My job is done!"
	line "Go face your next"
	cont "challenge!"
	done

BrunosRoomKanto_ForceIntoRoomScript:
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

BrunosRoomKanto_MapEvents:
	def_warp_events
	warp_event  4, 11, LORELEIS_ROOM, 3
	warp_event  5, 11, LORELEIS_ROOM, 4
	warp_event  4,  0, AGATHAS_ROOM, 1
	warp_event  5,  0, AGATHAS_ROOM, 2

	def_coord_events
	coord_event  4, 10, SCENE_FINISHED, BrunosRoomKanto_ForceIntoRoomScript
	coord_event  5, 10, SCENE_FINISHED, BrunosRoomKanto_ForceIntoRoomScript

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_BRUNO, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, BrunosRoomKanto_BrunoScript, -1
