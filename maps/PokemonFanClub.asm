	object_const_def
	const POKEMONFANCLUB_FISHER
	const POKEMONFANCLUB_GIRL
	const POKEMONFANCLUB_FAIRY
	const POKEMONFANCLUB_SEEL
	const POKEMONFANCLUB_GENTLEMAN
	const POKEMONFANCLUB_OLD_LINK_RECEPTIONIST

PokemonFanClub_MapScripts:
	def_scene_scripts

	def_callbacks

PokemonFanClub_PikachuFanScript:
	faceplayer
	opentext
	checkevent EVENT_PIKACHU_FAN_BOAST
	iftrue .MineIsBetter
	writetext .NormalText
	waitbutton
	setevent EVENT_SEEL_FAN_BOAST
	closetext
	end

.MineIsBetter:
	writetext .BetterText
	waitbutton
	clearevent EVENT_PIKACHU_FAN_BOAST
	closetext
	end

.NormalText:
	text "Won't you admire"
	line "my PIKACHU's"
	cont "adorable tail?"
	done

.BetterText:
	text "Humph! My PIKACHU"
	line "is twice as cute"
	cont "as that one!"
	done

PokemonFanClub_SeelFanScript:
	faceplayer
	opentext
	checkevent EVENT_SEEL_FAN_BOAST
	iftrue .MineIsBetter
	writetext .NormalText
	waitbutton
	setevent EVENT_PIKACHU_FAN_BOAST
	closetext
	end

.MineIsBetter:
	writetext .BetterText
	waitbutton
	clearevent EVENT_SEEL_FAN_BOAST
	closetext
	end

; dev note: this guy understands
.NormalText:
	text "I just love my"
	line "SEEL!"

	para "It squeals when I"
	line "hug it!"
	done

.BetterText:
	text "Oh dear!"

	para "My SEEL is far"
	line "more attractive!"
	done

PokemonFanClub_PikachuScript:
	faceplayer
	opentext
	writetext .Text
	cry PIKACHU
	waitsfx
	closetext
	end

.Text:
	text "PIKACHU: Chu!"
	line "Pikachu!"
	done

PokemonFanClub_SeelScript:
	faceplayer
	opentext
	writetext .Text
	cry SEEL
	waitsfx
	closetext
	end

.Text:
	text "SEEL: Kyuoo!"
	done

PokemonFanClub_PresidentScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_BIKE_VOUCHER
	iftrue .NothingLeft
	writetext .IntroText
	yesorno
	iffalse .NoThanks
	writetext .StoryText
	waitbutton
	verbosegiveitem BIKE_VOUCHER
	iffalse .BagFull
	setevent EVENT_GOT_BIKE_VOUCHER
	writetext .ExplainBikeText
	waitbutton
.BagFull:
	closetext
	end

.NothingLeft:
	writetext .NothingLeftText
	waitbutton
	closetext
	end

.NoThanks:
	writetext .NoThanksText
	waitbutton
	closetext
	end

.IntroText:
	text "I chair the"
	line "#MON Fan Club!"

	para "I have collected"
	line "over 100 #MON!"

	para "I'm very fussy"
	line "when it comes to"
	cont "#MON!"

	para "So..."

	para "Did you come"
	line "visit to hear"
	cont "about my #MON?"
	done

.StoryText:
	text "Good!"
	line "Then listen up!"

	para "My favorite"
	line "RAPIDASH..."

	para "It...cute..."
	line "lovely...smart..."
	cont "plus...amazing..."
	cont "you think so?..."
	cont "oh yes...it..."
	cont "stunning..."
	cont "kindly..."
	cont "love it!"

	para "Hug it...when..."
	cont "sleeping...warm"
	cont "and cuddly..."
	cont "spectacular..."
	cont "ravishing..."
	cont "...Oops! Look at"
	cont "the time! I kept"
	cont "you too long!"

	para "Thanks for hearing"
	line "me out! I want"
	cont "you to have this!"
	done

.ExplainBikeText:
	text "Exchange that for"
	line "a BICYCLE!"

	para "Don't worry, my"
	line "FEAROW will FLY"
	cont "me anywhere!"

	para "So, I don't need a"
	line "BICYCLE!"

	para "I hope you like"
	line "cycling!"
	done

.NoThanksText:
	text "Oh. Come back"
	line "when you want to"
	cont "hear my story!"
	done

.NothingLeftText:
	text "Hello, <PLAYER>!"

	para "Did you come see"
	line "me about my"
	cont "#MON again?"

	para "No? Too bad!"
	done

PokemonFanClub_WomanScript:
	jumptextfaceplayer .Text
.Text:
	text "Our Chairman is"
	line "very vocal about"
	cont "#MON."
	done

PokemonFanClub_Sign1Script:
	jumptext .Text
.Text:
	text "Let's all listen"
	line "politely to other"
	cont "trainers!"
	done

PokemonFanClub_Sign2Script:
	jumptext .Text
.Text:
	text "If someone brags,"
	line "brag right back!"
	done

PokemonFanClub_MapEvents:
	def_warp_events
	warp_event  2,  7, VERMILION_CITY, 2
	warp_event  3,  7, VERMILION_CITY, 2

	def_coord_events

	def_bg_events
	bg_event  1,  0, BGEVENT_READ, PokemonFanClub_Sign1Script
	bg_event  6,  0, BGEVENT_READ, PokemonFanClub_Sign2Script

	def_object_events
	object_event  6,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonFanClub_PikachuFanScript, -1
	object_event  1,  3, SPRITE_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonFanClub_SeelFanScript, -1
	object_event  6,  4, SPRITE_FAIRY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonFanClub_PikachuScript, -1
	object_event  1,  4, SPRITE_SEEL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonFanClub_SeelScript, -1
	object_event  3,  1, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonFanClub_PresidentScript, -1
	object_event  5,  1, SPRITE_OLD_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonFanClub_WomanScript, -1
