	object_const_def
	const SAFFRONMART_KANTO_CLERK
	const SAFFRONMART_KANTO_SUPER_NERD
	const SAFFRONMART_COOLTRAINER_F

SaffronMart_MapScripts:
	def_scene_scripts

	def_callbacks

SaffronMart_ClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_SAFFRON
	closetext
	end

SaffronMart_NerdScript:
	jumptextfaceplayer .Text
.Text:
	text "MAX REPEL lasts"
	line "longer than SUPER"
	cont "REPEL for keeping"
	cont "weaker #MON"
	cont "away!"
	done

SaffronMart_GirlScript:
	jumptextfaceplayer .Text
.Text:
	text "REVIVE is costly,"
	line "but it revives"
	cont "fainted #MON!"
	done

SaffronMart_MapEvents:
	def_warp_events
	warp_event  3,  7, SAFFRON_CITY, 5
	warp_event  4,  7, SAFFRON_CITY, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_KANTO_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronMart_ClerkScript, -1
	object_event  4,  2, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronMart_NerdScript, -1
	object_event  6,  5, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronMart_GirlScript, -1
