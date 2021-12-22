	object_const_def
	const CINNABARISLAND_GIRL
	const CINNABARISLAND_GAMBLER

CinnabarIsland_MapScripts:
	def_scene_scripts
	scene_script DummyScript ; SCENE_DEFAULT

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_CINNABAR
	clearevent EVENT_CINNABAR_LAB_IN_FOSSIL_ROOM
	endcallback

CinnabarIsland_GirlScript:
	jumptextfaceplayer .Text
.Text:
	text "CINNABAR GYM's"
	line "BLAINE is an odd"
	cont "man who has lived"
	cont "here for decades."
	done

CinnabarIsland_ManScript:
	jumptextfaceplayer .Text
.Text:
	text "Scientists conduct"
	line "experiments in"
	cont "the burned out"
	cont "building."
	done

CinnabarIsland_NameSignScript:
	jumptext .Text
.Text:
	text "CINNABAR ISLAND"
	line "The Fiery Town of"
	cont "Burning Desire"
	done

CinnabarIsland_MartSignScript:
	jumptext .Text
.Text:
	text "All your item"
	line "needs fulfilled!"
	cont "#MON MART"
	done

CinnabarIsland_PMCSignScript:
	jumptext .Text
.Text:
	text "Heal your #MON!"
	line "#MON CENTER"
	done

CinnabarIsland_LabSignScript:
	jumptext .Text
.Text:
	text "#MON LAB"
	done

CinnabarIsland_GymSignScript:
	jumptext .Text
.Text:
	text "CINNABAR ISLAND"
	line "#MON GYM"
	cont "LEADER: BLAINE"

	para "The Hot-Headed"
	line "Quiz Master!"
	done

CinnabarIsland_DoorLockScript:
	checkitem SECRET_KEY
	iftrue DummyScript
	opentext
	writetext .DoorLockedText
	waitbutton
	closetext
	applymovement PLAYER, .MoveDown
	end

.DoorLockedText:
	text "The door is"
	line "locked..."
	done

.MoveDown:
	step DOWN
	step_end

CinnabarIsland_MapEvents:
	def_warp_events
	warp_event  6,  3, POKEMON_MANSION_1F, 2
	warp_event 18,  3, CINNABAR_GYM, 1
	warp_event  6,  9, CINNABAR_LAB, 1
	warp_event 11, 11, CINNABAR_POKECENTER, 1
	warp_event 15, 11, CINNABAR_MART, 1

	def_coord_events
	coord_event 18,  4, SCENE_DEFAULT, CinnabarIsland_DoorLockScript

	def_bg_events
	bg_event  9,  5, BGEVENT_READ, CinnabarIsland_NameSignScript
	bg_event 16, 11, BGEVENT_READ, CinnabarIsland_MartSignScript
	bg_event 12, 11, BGEVENT_READ, CinnabarIsland_PMCSignScript
	bg_event  9, 11, BGEVENT_READ, CinnabarIsland_LabSignScript
	bg_event 13,  3, BGEVENT_READ, CinnabarIsland_GymSignScript

	def_object_events
	object_event 12,  5, SPRITE_GIRL, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarIsland_GirlScript, -1
	object_event 14,  6, SPRITE_GAMBLER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarIsland_ManScript, -1
