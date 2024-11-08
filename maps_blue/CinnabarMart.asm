	object_const_def
	const CINNABARMART_KANTO_CLERK
	const CINNABARMART_KANTO_ERIKA
	const CINNABARMART_KANTO_SCIENTIST

CinnabarMart_MapScripts:
	def_scene_scripts

	def_callbacks

CinnabarMart_ClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_CINNABAR
	closetext
	end

CinnabarMart_WomanScript:
	jumptextfaceplayer .Text
.Text:
	text "Don't they have X"
	line "ATTACK? It's good"
	cont "for battles!"
	done

CinnabarMart_ScientistScript:
	jumptextfaceplayer .Text
.Text:
	text "It never hurts to"
	line "have extra items!"
	done

CinnabarMart_MapEvents:
	def_warp_events
	warp_event  3,  7, CINNABAR_ISLAND, 5
	warp_event  4,  7, CINNABAR_ISLAND, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_KANTO_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarMart_ClerkScript, -1
	object_event  6,  2, SPRITE_KANTO_ERIKA, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarMart_WomanScript, -1
	object_event  3,  4, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarMart_ScientistScript, -1
