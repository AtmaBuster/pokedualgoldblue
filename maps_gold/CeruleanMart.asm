	object_const_def
	const CERULEANMART_KANTO_CLERK
	const CERULEANMART_COOLTRAINER_M
	const CERULEANMART_COOLTRAINER_F

CeruleanMart_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanMart_ClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_CERULEAN
	closetext
	end

CeruleanMart_RepelGuyScript:
	jumptextfaceplayer .Text
.Text:
	text "Use REPEL to keep"
	line "bugs and weak"
	cont "#MON away."

	para "Put your strongest"
	line "#MON at the"
	cont "top of the list"
	cont "for best results!"
	done

CeruleanMart_RareCandyGirlScript:
	jumptextfaceplayer .Text
.Text:
	text "Have you seen any"
	line "RARE CANDY?"

	para "It's supposed to"
	line "make #MON go"
	cont "up one level!"
	done

CeruleanMart_MapEvents:
	def_warp_events
	warp_event  3,  7, CERULEAN_CITY, 6
	warp_event  4,  7, CERULEAN_CITY, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_KANTO_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanMart_ClerkScript, -1
	object_event  3,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanMart_RepelGuyScript, -1
	object_event  6,  2, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanMart_RareCandyGirlScript, -1
