	object_const_def
	const PALLETTOWN_OAK
	const PALLETTOWN_GIRL
	const PALLETTOWN_FISHER

PalletTown_MapScripts:
	def_scene_scripts
	scene_script DummyScript ; SCENE_DEFAULT
	scene_script DummyScript ; SCENE_FINISHED

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_PALLET
	endcallback

PalletTownOakMeetScriptRight:
	scall PalletTownOakMeetScriptStart
	applymovement PALLETTOWN_OAK, PalletTownOakMeetScript_OakApproachRight
	scall PalletTownOakMeetScriptCont
	applymovement PALLETTOWN_OAK, PalletTownOakMeetScript_AdjustOakAndPlayer
	applymovement PLAYER, PalletTownOakMeetScript_AdjustOakAndPlayer
	sjump PalletTownOakMeetScriptJoin

PalletTownOakMeetScriptLeft:
	scall PalletTownOakMeetScriptStart
	applymovement PALLETTOWN_OAK, PalletTownOakMeetScript_OakApproachLeft
	scall PalletTownOakMeetScriptCont
PalletTownOakMeetScriptJoin:
	follow PALLETTOWN_OAK, PLAYER
	applymovement PALLETTOWN_OAK, PalletTownOakMeetScript_OakFollowToLab
	disappear PALLETTOWN_OAK
	applymovement PLAYER, PalletTownOakMeetScript_PlayerEnterLab
	clearevent EVENT_OAKS_LAB_OAK2
	setevent EVENT_OAKS_LAB_GIRL
	setmapscene OAKS_LAB, SCENE_OAKS_LAB_INTRO_START
	special FadeOutPalettes
	playsound SFX_ENTER_DOOR
	waitsfx
	warpfacing UP, OAKS_LAB, 5, 11
	end

PalletTownOakMeetScriptStart:
	turnobject PLAYER, DOWN
	playmusic MUSIC_RBY_MEET_PROF_OAK
	opentext
	writetext PalletTownOakMeetScript_OakMeetText1
	pause 10
	showemote EMOTE_SHOCK, PLAYER, 60
	appear PALLETTOWN_OAK
	turnobject PALLETTOWN_OAK, UP
	closetext
	end

PalletTownOakMeetScriptCont:
	opentext
	writetext PalletTownOakMeetScript_OakMeetText2
	waitbutton
	closetext
	end

PalletTownOakMeetScript_OakApproachRight:
	step RIGHT
PalletTownOakMeetScript_OakApproachLeft:
	step UP
	step RIGHT
	step UP
	step RIGHT
	step UP
	step_end

PalletTownOakMeetScript_AdjustOakAndPlayer:
	step LEFT
	step_end

PalletTownOakMeetScript_OakFollowToLab:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
PalletTownOakMeetScript_PlayerEnterLab:
	step UP
	step_end

PalletTownOakMeetScript_OakMeetText1:
	text "OAK: Hey! Wait!"
	line "Don't go out!"
	done

PalletTownOakMeetScript_OakMeetText2:
	text "OAK: It's unsafe!"
	line "Wild #MON live"
	cont "in tall grass!"

	para "You need your own"
	line "#MON for your"
	cont "protection."
	cont "I know!"

	para "Here, come with"
	line "me!"
	done

PalletTown_GirlScript:
	jumptextfaceplayer .Text
.Text
	text "I'm raising"
	line "#MON too!"

	para "When they get"
	line "strong, they can"
	cont "protect me!"
	done

PalletTown_FatManScript:
	jumptextfaceplayer .Text
.Text
	text "Technology is"
	line "incredible!"

	para "You can now store"
	line "and recall items"
	cont "and #MON as"
	cont "data via PC!"
	done

PalletTown_OaksLabSignScript:
	jumptext .Text
.Text
	text "OAK #MON"
	line "RESEARCH LAB"
	done

PalletTown_NameSignScript:
	jumptext .Text
.Text
	text "PALLET TOWN"
	line "Shades of your"
	cont "journey await!"
	done

PalletTown_PlayersHouseSignScript:
	jumptext .Text
.Text
	text "<PLAYER>'s house"
	done

PalletTown_RivalsHouseSignScript:
	jumptext .Text
.Text
	text "<RIVAL>'s house"
	done

PalletTown_MapEvents:
	def_warp_events
	warp_event  5,  5, REDS_HOUSE_1F, 1
	warp_event 13,  5, BLUES_HOUSE, 1
	warp_event 12, 11, OAKS_LAB, 2

	def_coord_events
	coord_event 10,  1, SCENE_DEFAULT, PalletTownOakMeetScriptLeft
	coord_event 11,  1, SCENE_DEFAULT, PalletTownOakMeetScriptRight

	def_bg_events
	bg_event 13, 13, BGEVENT_READ, PalletTown_OaksLabSignScript
	bg_event  7,  9, BGEVENT_READ, PalletTown_NameSignScript
	bg_event  3,  5, BGEVENT_READ, PalletTown_PlayersHouseSignScript
	bg_event 11,  5, BGEVENT_READ, PalletTown_RivalsHouseSignScript

	def_object_events
	object_event  8,  5, SPRITE_OAK, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_PALLET_TOWN_PROF_OAK
	object_event  3,  8, SPRITE_GIRL, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PalletTown_GirlScript, -1
	object_event 11, 14, SPRITE_FISHER, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PalletTown_FatManScript, -1
