	object_const_def
	const CERULEANCAVEB1F_MONSTER
	const CERULEANCAVEB1F_POKE_BALL1
	const CERULEANCAVEB1F_POKE_BALL2

CeruleanCaveB1F_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanCaveB1F_MewtwoScript:
	opentext
	writetext .Text
	cry MEWTWO
	pause 15
	closetext
	loadwildmon MEWTWO, 70
	startbattle
	disappear CERULEANCAVEB1F_MONSTER
	reloadmapafterbattle
	end

.Text:
	text "Mew!"
	done

CeruleanCaveB1F_UltraBallScript:
	itemball ULTRA_BALL

CeruleanCaveB1F_MaxReviveScript:
	itemball MAX_REVIVE

CeruleanCaveB1F_HiddenUltraBall:
	hiddenitem ULTRA_BALL, EVENT_CERULEAN_CAVE_B1F_HIDDEN_ULTRA_BALL

CeruleanCaveB1F_MapEvents:
	def_warp_events
	warp_event  3,  6, CERULEAN_CAVE_1F, 9

	def_coord_events

	def_bg_events
	bg_event 27,  3, BGEVENT_ITEM, CeruleanCaveB1F_HiddenUltraBall

	def_object_events
	object_event 27, 13, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanCaveB1F_MewtwoScript, EVENT_CERULEAN_CAVE_B1F_MEWTWO
	object_event 16,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCaveB1F_UltraBallScript, EVENT_CERULEAN_CAVE_B1F_ULTRA_BALL
	object_event 18,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCaveB1F_MaxReviveScript, EVENT_CERULEAN_CAVE_B1F_MAX_REVIVE
