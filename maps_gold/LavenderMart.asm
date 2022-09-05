	object_const_def
	const LAVENDERMART_KANTO_CLERK
	const LAVENDERMART_BALDING_GUY
	const LAVENDERMART_COOLTRAINER_M

LavenderMart_MapScripts:
	def_scene_scripts

	def_callbacks

LavenderMart_ClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_LAVENDER
	closetext
	end

LavenderMart_XItemGuyScript:
	jumptextfaceplayer .Text
.Text:
	text "I'm searching for"
	line "items that raise"
	cont "the abilities of"
	cont "#MON during a"
	cont "single battle."

	para "X ATTACK, X"
	line "DEFEND, X SPEED"
	cont "and X SPECIAL are"
	cont "what I'm after."

	para "Do you know where"
	line "I can get them?"
	done

LavenderMart_CooltrainerScript:
	faceplayer
	opentext
	checkevent EVENT_RESCUED_MR_FUJI
	iftrue .Nugget
	writetext .Text1
	waitbutton
	closetext
	end

.Nugget:
	writetext .Text2
	waitbutton
	closetext
	end

.Text1:
	text "You know REVIVE?"
	line "It revives any"
	cont "fainted #MON!"
	done

.Text2:
	text "I found a NUGGET"
	line "in the mountains."

	para "I thought it was"
	line "useless, but it"
	cont "sold for ¥5000!"
	done

LavenderMart_MapEvents:
	def_warp_events
	warp_event  3,  7, LAVENDER_TOWN, 4
	warp_event  4,  7, LAVENDER_TOWN, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_KANTO_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavenderMart_ClerkScript, -1
	object_event  3,  4, SPRITE_BALDING_GUY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavenderMart_XItemGuyScript, -1
	object_event  7,  2, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavenderMart_CooltrainerScript, -1
