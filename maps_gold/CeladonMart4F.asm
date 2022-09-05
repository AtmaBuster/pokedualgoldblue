	object_const_def
	const CELADONMART4F_KANTO_CLERK
	const CELADONMART4F_KANTO_SUPER_NERD
	const CELADONMART4F_KANTO_YOUNGSTER

CeladonMart4F_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonMart4F_ClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_CELADON_4F
	closetext
	end

CeladonMart4F_NerdScript:
	jumptextfaceplayer .Text
.Text:
	text "I'm getting a"
	line "# DOLL for my"
	cont "girl friend!"
	done

CeladonMart4F_KidScript:
	jumptextfaceplayer .Text
.Text:
	text "I heard something"
	line "useful."

	para "You can run from"
	line "wild #MON by"
	cont "distracting them"
	cont "with a # DOLL!"
	done

CeladonMart4F_SignScript:
	jumptext .Text
.Text:
	text "Express yourself"
	line "with gifts!"

	para "4F: WISEMAN GIFTS"

	para "Evolution Special!"
	line "Element STONEs on"
	cont "sale now!"
	done

CeladonMart4F_MapEvents:
	def_warp_events
	warp_event 12,  1, CELADON_MART_3F, 1
	warp_event 16,  1, CELADON_MART_5F, 2
	warp_event  1,  1, CELADON_MART_ELEVATOR, 1

	def_coord_events

	def_bg_events
	bg_event 14,  1, BGEVENT_READ, CeladonMart4F_SignScript

	def_object_events
	object_event  5,  7, SPRITE_KANTO_CLERK, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonMart4F_ClerkScript, -1
	object_event 15,  5, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonMart4F_NerdScript, -1
	object_event  5,  2, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonMart4F_KidScript, -1
