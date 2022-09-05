	object_const_def
	const HALLOFFAMEKANTO_OAK

HallOfFameKanto_MapScripts:
	def_scene_scripts
	scene_script .Enter ; SCENE_DEFAULT

	def_callbacks

.Enter:
	sdefer .EnterScript
	end

.EnterScript:
	applymovement PLAYER, .Approach
	turnobject PLAYER, RIGHT
	turnobject HALLOFFAMEKANTO_OAK, LEFT
	opentext
	writetext .Text
	waitbutton
	setevent EVENT_BEAT_CHAMPION_GEN1
	setevent EVENT_BEAT_LEAGUE
	setevent EVENT_CERULEAN_CITY_SUPER_NERD
	halloffame
	end

.Text:
	text "OAK: Er-hem!"
	line "Congratulations"
	cont "<PLAYER>!"

	para "This floor is the"
	line "#MON HALL OF"
	cont "FAME!"

	para "#MON LEAGUE"
	line "champions are"
	cont "honored for their"
	cont "exploits here!"

	para "Their #MON are"
	line "also recorded in"
	cont "the HALL OF FAME!"

	para "<PLAYER>! You have"
	line "endeavored hard"
	cont "to become the new"
	cont "LEAGUE champion!"

	para "Congratulations,"
	line "<PLAYER>, you and"
	cont "your #MON are"
	cont "HALL OF FAMERs!"
	done

.Approach:
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end

HallOfFameKanto_MapEvents:
	def_warp_events
	warp_event  4,  7, CHAMPIONS_ROOM, 3
	warp_event  5,  7, CHAMPIONS_ROOM, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_OAK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
