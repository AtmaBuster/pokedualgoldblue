	object_const_def
	const MRFUJISHOUSE_KANTO_SUPER_NERD
	const MRFUJISHOUSE_LITTLE_GIRL
	const MRFUJISHOUSE_MONSTER1
	const MRFUJISHOUSE_MONSTER2
	const MRFUJISHOUSE_ELDER
	const MRFUJISHOUSE_POKEDEX

MrFujisHouse_MapScripts:
	def_scene_scripts

	def_callbacks

MrFujisHouse_SuperNerdScript:
	faceplayer
	opentext
	checkevent EVENT_RESCUED_MR_FUJI
	iftrue .After
	writetext .Text1
	waitbutton
	closetext
	end

.After:
	writetext .Text2
	waitbutton
	closetext
	end

.Text1:
	text "That's odd, MR.FUJI"
	line "isn't here."
	cont "Where'd he go?"
	done

.Text2:
	text "MR.FUJI had been"
	line "praying alone for"
	cont "CUBONE's mother."
	done

MrFujisHouse_GirlScript:
	faceplayer
	opentext
	checkevent EVENT_RESCUED_MR_FUJI
	iftrue .After
	writetext .Text1
	waitbutton
	closetext
	end

.After:
	writetext .Text2
	waitbutton
	closetext
	end

.Text1:
	text "This is really"
	line "MR.FUJI's house."

	para "He's really kind!"

	para "He looks after"
	line "abandoned and"
	cont "orphaned #MON!"
	done

.Text2:
	text "It's so warm!"
	line "#MON are so"
	cont "nice to hug!"
	done

MrFujisHouse_PsyduckScript:
	faceplayer
	opentext
	writetext .Text
	cry PSYDUCK
	waitsfx
	closetext
	end

.Text:
	text "PSYDUCK: Gwappa!"
	done

MrFujisHouse_NidorinoScript:
	faceplayer
	opentext
	writetext .Text
	cry NIDORINO
	waitsfx
	closetext
	end

.Text:
	text "NIDORINO: Gaoo!"
	done

MrFujisHouse_MrFujiScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_POKEFLUTE
	iftrue .After
	writetext .Text1
	waitbutton
	verbosegiveitem POKE_FLUTE
	iffalse .BagFull
	setevent EVENT_GOT_POKEFLUTE
	writetext .Text2
	waitbutton
.BagFull:
	closetext
	end

.After:
	writetext .Text3
	waitbutton
	closetext
	end

.Text1:
	text "MR.FUJI: <PLAYER>."

	para "Your #DEX quest"
	line "may fail without"
	cont "love for your"
	cont "#MON."

	para "I think this may"
	line "help your quest."
	done

.Text2:
	text "Upon hearing #"
	line "FLUTE, sleeping"
	cont "#MON will"
	cont "spring awake."

	para "It works on all"
	line "sleeping #MON."
	done

.Text3:
	text "MR.FUJI: Has my"
	line "FLUTE helped you?"
	done

MrFujisHouse_PokemonMonthlyScript:
	jumptext .Text
.Text:
	text "#MON Monthly"
	line "Grand Prize"
	cont "Drawing!"

	para "The application"
	line "form is..."

	para "Gone! It's been"
	line "clipped out!"
	done

MrFujisHouse_MagazineScript:
	jumptext .Text
.Text:
	text "#MON magazines!"

	para "#MON notebooks!"

	para "#MON graphs!"
	done

MrFujisHouse_MapEvents:
	def_warp_events
	warp_event  2,  7, LAVENDER_TOWN, 3
	warp_event  3,  7, LAVENDER_TOWN, 3

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_DOWN, MrFujisHouse_MagazineScript
	bg_event  1,  1, BGEVENT_DOWN, MrFujisHouse_MagazineScript
	bg_event  7,  1, BGEVENT_DOWN, MrFujisHouse_MagazineScript

	def_object_events
	object_event  3,  5, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MrFujisHouse_SuperNerdScript, -1
	object_event  6,  3, SPRITE_LITTLE_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MrFujisHouse_GirlScript, -1
	object_event  6,  4, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MrFujisHouse_PsyduckScript, -1
	object_event  1,  3, SPRITE_MONSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MrFujisHouse_NidorinoScript, -1
	object_event  3,  1, SPRITE_ELDER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MrFujisHouse_MrFujiScript, EVENT_MR_FUJIS_HOUSE_MR_FUJI
	object_event  3,  3, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MrFujisHouse_PokemonMonthlyScript, -1
