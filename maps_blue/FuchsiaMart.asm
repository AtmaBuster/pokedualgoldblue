	object_const_def
	const FUCHSIAMART_KANTO_CLERK
	const FUCHSIAMART_POKEFAN_M
	const FUCHSIAMART_COOLTRAINER_F

FuchsiaMart_MapScripts:
	def_scene_scripts

	def_callbacks

FuchsiaMart_ClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_FUCHSIA
	closetext
	end

FuchsiaMart_PokefanScript:
	jumptextfaceplayer .Text
.Text:
	text "Do you have a"
	line "SAFARI ZONE flag?"

	para "What about cards"
	line "or calendars?"
	done

FuchsiaMart_CooltrainerScript:
	jumptextfaceplayer .Text
.Text:
	text "Did you try X"
	line "SPEED? It speeds"
	cont "up a #MON in"
	cont "battle!"
	done

FuchsiaMart_MapEvents:
	def_warp_events
	warp_event  3,  7, FUCHSIA_CITY, 1
	warp_event  4,  7, FUCHSIA_CITY, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_KANTO_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaMart_ClerkScript, -1
	object_event  4,  2, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaMart_PokefanScript, -1
	object_event  6,  5, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaMart_CooltrainerScript, -1
