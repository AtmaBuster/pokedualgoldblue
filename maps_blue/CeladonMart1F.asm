	object_const_def
	const CELADONMART1F_OLD_LINK_RECEPTIONIST

CeladonMart1F_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonMart1F_ReceptionistScript:
	jumptextfaceplayer .Text
.Text:
	text "Hello! Welcome to"
	line "CELADON DEPT."
	cont "STORE."

	para "The board on the"
	line "right describes"
	cont "the store layout."
	done

CeladonMart1F_FloorGuideScript:
	jumptext .Text
.Text:
	text "1F: SERVICE"
	line "    COUNTER"

	para "2F: TRAINER'S"
	line "    MARKET"

	para "3F: TV GAME SHOP"

	para "4F: WISEMAN GIFTS"

	para "5F: DRUG STORE"

	para "ROOFTOP SQUARE:"
	line "VENDING MACHINES"
	done

CeladonMart1F_SignScript:
	jumptext .Text
.Text:
	text "1F: SERVICE"
	line "    COUNTER"
	done

CeladonMart1F_MapEvents:
	def_warp_events
	warp_event  2,  7, CELADON_CITY, 1
	warp_event  3,  7, CELADON_CITY, 1
	warp_event 16,  7, CELADON_CITY, 2
	warp_event 17,  7, CELADON_CITY, 2
	warp_event 12,  1, CELADON_MART_2F, 1
	warp_event  1,  1, CELADON_MART_ELEVATOR, 1

	def_coord_events

	def_bg_events
	bg_event 11,  4, BGEVENT_READ, CeladonMart1F_FloorGuideScript
	bg_event 14,  1, BGEVENT_READ, CeladonMart1F_SignScript

	def_object_events
	object_event  8,  3, SPRITE_OLD_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonMart1F_ReceptionistScript, -1
