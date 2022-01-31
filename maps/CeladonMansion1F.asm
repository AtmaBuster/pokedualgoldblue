	object_const_def
	const CELADONMANSION1F_MONSTER1
	const CELADONMANSION1F_KANTO_GRANNY
	const CELADONMANSION1F_FAIRY
	const CELADONMANSION1F_MONSTER2

CeladonMansion1F_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonMansion1F_MeowthScript:
	faceplayer
	opentext
	writetext .Text
	cry MEOWTH
	waitsfx
	closetext
	end

.Text:
	text "MEOWTH: Meow!"
	done

CeladonMansion1F_WomanScript:
	checkevent EVENT_GOT_TEA
	iftrue .GotTea
	faceplayer
	opentext
	writetext .TryThisDrinkInstead
	waitbutton
	verbosegiveitem TEA
	iffalse .BagFull
	setevent EVENT_GOT_TEA
	writetext .NothingBeatsThirstLikeTea
	waitbutton
.BagFull:
	closetext
	end

.GotTea
	jumptextfaceplayer .MyDearMonsKeepMeCompany

.MyDearMonsKeepMeCompany:
	text "My dear #MON"
	line "keep me company."

	para "MEOWTH even brings"
	line "money home!"
	done

.TryThisDrinkInstead:
	text "You shouldn't"
	line "spend all your"
	cont "money on drinks."

	para "Try this instead."
	done

.NothingBeatsThirstLikeTea:
	text "Nothing beats"
	line "thirst like some"
	cont "hot TEA."

	para "It really is the"
	line "best."
	done

CeladonMansion1F_ClefairyScript:
	faceplayer
	opentext
	writetext .Text
	cry CLEFAIRY
	waitsfx
	closetext
	end

.Text:
	text "CLEFAIRY: Pi"
	line "pippippi!"
	done
	
CeladonMansion1F_NidoranScript:
	faceplayer
	opentext
	writetext .Text
	cry NIDORAN_F
	waitsfx
	closetext
	end

.Text:
	text "NIDORAN: Kya"
	line "kyaoo!"
	done

CeladonMansion1F_SignScript:
	jumptext .Text
.Text:
	text "CELADON MANSION"
	line "Manager's Suite"
	done

CeladonMansion1F_MapEvents:
	def_warp_events
	warp_event  4, 11, CELADON_CITY, 3
	warp_event  5, 11, CELADON_CITY, 3
	warp_event  4,  0, CELADON_CITY, 5
	warp_event  7,  1, CELADON_MANSION_2F, 2
	warp_event  2,  1, CELADON_MANSION_2F, 3

	def_coord_events

	def_bg_events
	bg_event  4,  9, BGEVENT_READ, CeladonMansion1F_SignScript

	def_object_events
	object_event  0,  5, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonMansion1F_MeowthScript, -1
	object_event  1,  5, SPRITE_KANTO_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonMansion1F_WomanScript, -1
	object_event  1,  8, SPRITE_FAIRY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonMansion1F_ClefairyScript, -1
	object_event  4,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonMansion1F_NidoranScript, -1
