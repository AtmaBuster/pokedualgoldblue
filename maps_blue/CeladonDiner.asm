	object_const_def
	const CELADONDINER_COOK
	const CELADONDINER_MIDDLE_AGED_WOMAN
	const CELADONDINER_POKEFAN_M
	const CELADONDINER_FISHER
	const CELADONDINER_KANTO_GYM_GUIDE

CeladonDiner_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonDiner_CookScript:
	jumptextfaceplayer .Text
.Text:
	text "Hi!"

	para "We're taking a"
	line "break now."
	done

CeladonDiner_WomanScript:
	jumptextfaceplayer .Text
.Text:
	text "My #MON are"
	line "weak, so I often"
	cont "have to go to the"
	cont "DRUG STORE."
	done

CeladonDiner_ManScript:
	jumptextfaceplayer .Text
.Text:
	text "Psst! There's a"
	line "basement under"
	cont "the GAME CORNER."
	done

CeladonDiner_FisherScript:
	jumptextfaceplayer .Text
.Text:
	text "Munch..."

	para "The man at that"
	line "table lost it all"
	cont "at the slots."
	done

CeladonDiner_CoinCaseGuyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_COIN_CASE
	iftrue .After
	writetext .Text1
	waitbutton
	verbosegiveitem COIN_CASE
	iffalse .BagFull
	setevent EVENT_GOT_COIN_CASE
.BagFull:
	closetext
	end

.After:
	writetext .Text2
	waitbutton
	closetext
	end

.Text1:
	text "Go ahead! Laugh!"

	para "I'm flat out"
	line "busted!"

	para "No more slots for"
	line "me! I'm going"
	cont "straight!"

	para "Here! I won't be"
	line "needing this any-"
	cont "more!"
	done

.Text2:
	text "I always thought"
	line "I was going to"
	cont "win it back..."
	done

CeladonDiner_MapEvents:
	def_warp_events
	warp_event  3,  7, CELADON_CITY, 11
	warp_event  4,  7, CELADON_CITY, 11

	def_coord_events

	def_bg_events

	def_object_events
	object_event  8,  5, SPRITE_COOK, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonDiner_CookScript, -1
	object_event  7,  2, SPRITE_POKEFAN_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonDiner_WomanScript, -1
	object_event  1,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonDiner_ManScript, -1
	object_event  5,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonDiner_FisherScript, -1
	object_event  0,  1, SPRITE_KANTO_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonDiner_CoinCaseGuyScript, -1
