	object_const_def
	const CINNABARLABTRADEROOM_KANTO_SUPER_NERD
	const CINNABARLABTRADEROOM_KANTO_GRAMPS
	const CINNABARLABTRADEROOM_KANTO_BEAUTY

CinnabarLabTradeRoom_MapScripts:
	def_scene_scripts

	def_callbacks

CinnabarLabTradeRoom_FossilGuyScript:
	jumptextfaceplayer .Text
.Text:
	text "I found this very"
	line "strange fossil in"
	cont "MT.MOON!"

	para "I think it's a"
	line "rare, prehistoric"
	cont "#MON!"
	done

CinnabarLabTradeRoom_CliftonScript:
	faceplayer
	opentext
	trade NPC_TRADE_CLIFTON
	waitbutton
	closetext
	end

CinnabarLabTradeRoom_NormaScript:
	faceplayer
	opentext
	trade NPC_TRADE_NORMA
	waitbutton
	closetext
	end

CinnabarLabTradeRoom_MapEvents:
	def_warp_events
	warp_event  2,  7, CINNABAR_LAB, 3
	warp_event  3,  7, CINNABAR_LAB, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  2, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarLabTradeRoom_FossilGuyScript, -1
	object_event  1,  4, SPRITE_KANTO_GRAMPS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarLabTradeRoom_CliftonScript, -1
	object_event  5,  5, SPRITE_KANTO_BEAUTY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarLabTradeRoom_NormaScript, -1
