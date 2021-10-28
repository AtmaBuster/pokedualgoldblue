	object_const_def
	const PEWTERMART_KANTO_CLERK
	const PEWTERMART_KANTO_YOUNGSTER
	const PEWTERMART_KANTO_SUPER_NERD

PewterMart_MapScripts:
	def_scene_scripts

	def_callbacks

PewterMart_ClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_PEWTER
	closetext
	end

PewterMart_KidScript:
	jumptextfaceplayer .Text
.Text:
	text "A shady, old man"
	line "got me to buy"
	cont "this really weird"
	cont "fish #MON!"

	para "It's totally weak"
	line "and it cost ¥500!"
	done

PewterMart_NerdScript:
	jumptextfaceplayer .Text
.Text:
	text "Good things can"
	line "happen if you"
	cont "raise #MON"
	cont "diligently, even"
	cont "the weak ones!"
	done

PewterMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, PEWTER_CITY, 5
	warp_event  4,  7, PEWTER_CITY, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_KANTO_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterMart_ClerkScript, -1
	object_event  3,  3, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterMart_KidScript, -1
	object_event  5,  5, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterMart_NerdScript, -1
