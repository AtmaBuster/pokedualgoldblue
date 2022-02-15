	object_const_def
	const INDIGOPLATEAULOBBY_KANTO_NURSE
	const INDIGOPLATEAULOBBY_KANTO_GYM_GUIDE
	const INDIGOPLATEAULOBBY_COOLTRAINER_F
	const INDIGOPLATEAULOBBY_KANTO_CLERK
	const INDIGOPLATEAULOBBY_OLD_LINK_RECEPTIONIST

IndigoPlateauLobby_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .SetUpElite4

.SetUpElite4:
	setmapscene LORELEIS_ROOM, SCENE_DEFAULT
	setmapscene BRUNOS_ROOM_KANTO, SCENE_DEFAULT
	setmapscene AGATHAS_ROOM, SCENE_DEFAULT
	setmapscene LANCES_ROOM_KANTO, SCENE_DEFAULT
	setmapscene CHAMPIONS_ROOM, SCENE_DEFAULT
	setmapscene HALL_OF_FAME_KANTO, SCENE_DEFAULT
	clearevent EVENT_LORELEIS_ROOM_EXIT_OPEN
	clearevent EVENT_BRUNOS_ROOM_KANTO_EXIT_OPEN
	clearevent EVENT_AGATHAS_ROOM_EXIT_OPEN
	clearevent EVENT_LANCES_ROOM_KANTO_ENTRANCE_CLOSED
	clearevent EVENT_BEAT_LORELEI_GEN1
	clearevent EVENT_BEAT_BRUNO_GEN1
	clearevent EVENT_BEAT_AGATHA_GEN1
	clearevent EVENT_BEAT_LANCE_GEN1
	clearevent EVENT_BEAT_CHAMPION_GEN1
	setevent EVENT_CHAMPIONS_ROOM_PROF_OAK
	endcallback

IndigoPlateauLobby_NurseScript:
	jumpstd PokecenterKantoNurseScript

IndigoPlateauLobby_GymGuyScript:
	jumptextfaceplayer .Text
.Text:
	text "Yo! Champ in"
	line "making!"

	para "At #MON LEAGUE,"
	line "you have to face"
	cont "the ELITE FOUR in"
	cont "succession."

	para "If you lose, you"
	line "have to start all"
	cont "over again! This"
	cont "is it! Go for it!"
	done

IndigoPlateauLobby_CooltrainerScript:
	jumptextfaceplayer .Text
.Text:
	text "From here on, you"
	line "face the ELITE"
	cont "FOUR one by one!"

	para "If you win, a"
	line "door opens to the"
	cont "next trainer!"
	cont "Good luck!"
	done

IndigoPlateauLobby_ClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_KANTO_INDIGO
	closetext
	end

IndigoPlateauLobby_ReceptionistScript:
	jumpstd KantoPokecenterLinkReceptionist

IndigoPlateauLobby_MapEvents:
	def_warp_events
	warp_event  7, 11, INDIGO_PLATEAU, 1
	warp_event  8, 11, INDIGO_PLATEAU, 2
	warp_event  8,  0, LORELEIS_ROOM, 1
	warp_event 12,  4, TRADE_CENTER, 1
	warp_event 14,  4, COLOSSEUM, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  7,  5, SPRITE_KANTO_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IndigoPlateauLobby_NurseScript, -1
	object_event  4,  9, SPRITE_KANTO_GYM_GUIDE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IndigoPlateauLobby_GymGuyScript, -1
	object_event  5,  1, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IndigoPlateauLobby_CooltrainerScript, -1
	object_event  0,  5, SPRITE_KANTO_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IndigoPlateauLobby_ClerkScript, -1
	object_event 13,  6, SPRITE_OLD_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IndigoPlateauLobby_ReceptionistScript, -1
