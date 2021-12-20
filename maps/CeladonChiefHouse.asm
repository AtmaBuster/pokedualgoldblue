	object_const_def
	const CELADONCHIEFHOUSE_KANTO_GRAMPS
	const CELADONCHIEFHOUSE_KANTO_ROCKET
	const CELADONCHIEFHOUSE_KANTO_SAILOR

CeladonChiefHouse_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonChiefHouse_OldManScript:
	jumptextfaceplayer .Text
.Text:
	text "Hehehe! The slots"
	line "just reel in the"
	cont "dough, big time!"
	done

CeladonChiefHouse_RocketScript:
	jumptextfaceplayer .Text
.Text:
	text "CHIEF!"

	para "We just shipped"
	line "2000 #MON as"
	cont "slot prizes!"
	done

CeladonChiefHouse_SailorScript:
	jumptextfaceplayer .Text
.Text:
	text "Don't touch the"
	line "poster at the"
	cont "GAME CORNER!"

	para "There's no secret"
	line "switch behind it!"
	done

CeladonChiefHouse_MapEvents:
	def_warp_events
	warp_event  2,  7, CELADON_CITY, 12
	warp_event  3,  7, CELADON_CITY, 12

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_KANTO_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonChiefHouse_OldManScript, -1
	object_event  1,  4, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonChiefHouse_RocketScript, -1
	object_event  5,  6, SPRITE_KANTO_SAILOR, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonChiefHouse_SailorScript, -1
