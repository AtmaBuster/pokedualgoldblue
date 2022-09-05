	object_const_def
	const CELADONMART5F_GENTLEMAN
	const CELADONMART5F_KANTO_SAILOR
	const CELADONMART5F_KANTO_CLERK1
	const CELADONMART5F_KANTO_CLERK2

CeladonMart5F_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonMart5F_ManScript:
	jumptextfaceplayer .Text
.Text:
	text "#MON ability"
	line "enhancers can be"
	cont "bought only here."

	para "Use CALCIUM to"
	line "increase SPECIAL"
	cont "abilities."

	para "Use CARBOS to"
	line "increase SPEED."
	done

CeladonMart5F_SailorScript:
	jumptextfaceplayer .Text
.Text:
	text "I'm here for"
	line "#MON ability"
	cont "enhancers."

	para "PROTEIN increases"
	line "ATTACK power."

	para "IRON increases"
	line "DEFENSE!"
	done

CeladonMart5F_Clerk1Script:
	opentext
	pokemart MARTTYPE_STANDARD, MART_CELADON_5F_1
	closetext
	end

CeladonMart5F_Clerk2Script:
	opentext
	pokemart MARTTYPE_STANDARD, MART_CELADON_5F_2
	closetext
	end

CeladonMart5F_SignScript:
	jumptext .Text
.Text:
	text "5F: DRUG STORE"
	done

CeladonMart5F_MapEvents:
	def_warp_events
	warp_event 12,  1, CELADON_MART_ROOF, 1
	warp_event 16,  1, CELADON_MART_4F, 2
	warp_event  1,  1, CELADON_MART_ELEVATOR, 1

	def_coord_events

	def_bg_events
	bg_event 14,  1, BGEVENT_READ, CeladonMart5F_SignScript

	def_object_events
	object_event 14,  5, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonMart5F_ManScript, -1
	object_event  2,  6, SPRITE_KANTO_SAILOR, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonMart5F_SailorScript, -1
	object_event  5,  3, SPRITE_KANTO_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonMart5F_Clerk1Script, -1
	object_event  6,  3, SPRITE_KANTO_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonMart5F_Clerk2Script, -1
