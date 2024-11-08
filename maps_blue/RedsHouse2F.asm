	object_const_def

RedsHouse2F_MapScripts:
	def_scene_scripts
	scene_script .FaceUp     ; SCENE_DEFAULT
	scene_script DummyScript ; SCENE_FINISHED

	def_callbacks

.FaceUp
	turnobject PLAYER, UP
	setscene SCENE_FINISHED
	end

RedsHouse2FPCScript:
	opentext
	special PlayersHousePC
	iftrue .Warp
	closetext
	end
.Warp:
	warp NONE, 0, 0
	end

RedsHouse2FSNESScript:
	jumptext .Text
.Text
	text "<PLAYER> is"
	line "playing the SNES!"
	cont "...Okay!"
	cont "It's time to go!"
	done

RedsHouse2F_MapEvents:
	def_warp_events
	warp_event  7,  1, REDS_HOUSE_1F, 3

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, RedsHouse2FPCScript
	bg_event  3,  5, BGEVENT_READ, RedsHouse2FSNESScript

	def_object_events
