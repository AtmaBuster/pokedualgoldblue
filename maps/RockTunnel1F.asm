	object_const_def
	const ROCKTUNNEL1F_HIKER1
	const ROCKTUNNEL1F_HIKER2
	const ROCKTUNNEL1F_HIKER3
	const ROCKTUNNEL1F_KANTO_SUPER_NERD
	const ROCKTUNNEL1F_COOLTRAINER_F1
	const ROCKTUNNEL1F_COOLTRAINER_F2
	const ROCKTUNNEL1F_COOLTRAINER_F3

RockTunnel1F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerHikerLenny:
	trainer HIKER_GEN1, LENNY_GEN1, EVENT_BEAT_HIKER_LENNY_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "This tunnel goes"
	line "a long way, kid!"
	done

.BeatenText:
	text "Doh! You win!"
	done

.AfterText:
	text "Watch for ONIX!"
	line "It can put the"
	cont "squeeze on you!"
	done

TrainerHikerOliver:
	trainer HIKER_GEN1, OLIVER_GEN1, EVENT_BEAT_HIKER_OLIVER_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Hmm. Maybe I'm"
	line "lost in here..."
	done

.BeatenText:
	text "Ease up! What am"
	line "I doing? Which"
	cont "way is out?"
	done

.AfterText:
	text "That sleeping"
	line "#MON on ROUTE"
	cont "12 forced me to"
	cont "take this detour."
	done

TrainerHikerLucas:
	trainer HIKER_GEN1, LUCAS_GEN1, EVENT_BEAT_HIKER_LUCAS_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Outsiders like"
	line "you need to show"
	cont "me some respect!"
	done

.BeatenText:
	text "I give!"
	done

.AfterText:
	text "You're talented"
	line "enough to hike!"
	done

TrainerPokemaniacAshton:
	trainer POKEMANIAC_GEN1, ASHTON_GEN1, EVENT_BEAT_POKEMANIAC_ASHTON_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "#MON fight!"
	line "Ready, go!"
	done

.BeatenText:
	text "Game over!"
	done

.AfterText:
	text "Oh well, I'll get"
	line "a ZUBAT as I go!"
	done

TrainerJrTrainerFLeah:
	trainer JR_TRAINER_F_GEN1, LEAH_GEN1, EVENT_BEAT_JR_TRAINER_F_LEAH_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Eek! Don't try"
	line "anything funny in"
	cont "the dark!"
	done

.BeatenText:
	text "It was too dark!"
	done

.AfterText:
	text "I saw a MACHOP"
	line "in this tunnel!"
	done

TrainerJrTrainerFDana:
	trainer JR_TRAINER_F_GEN1, DANA_GEN1, EVENT_BEAT_JR_TRAINER_F_DANA_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I came this far"
	line "for #MON!"
	done

.BeatenText:
	text "I'm out of"
	line "#MON!"
	done

.AfterText:
	text "You looked cute"
	line "and harmless!"
	done

TrainerJrTrainerFAriana:
	trainer JR_TRAINER_F_GEN1, ARIANA_GEN1, EVENT_BEAT_JR_TRAINER_F_ARIANA_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "You have #MON!"
	line "Let's start!"
	done

.BeatenText:
	text "You play hard!"
	done

.AfterText:
	text "Whew! I'm all"
	line "sweaty now!"
	done

RockTunnel1F_SignScript:
	jumptext .Text
.Text:
	text "ROCK TUNNEL"
	line "CERULEAN CITY -"
	cont "LAVENDER TOWN"
	done

RockTunnel1F_MapEvents:
	def_warp_events
	warp_event 15,  3, ROUTE_10_NORTH, 2
	warp_event 15,  0, ROUTE_10_NORTH, 2
	warp_event 15, 33, ROUTE_10_SOUTH, 1
	warp_event 15, 35, ROUTE_10_SOUTH, 1
	warp_event 37,  3, ROCK_TUNNEL_B1F, 1
	warp_event  5,  3, ROCK_TUNNEL_B1F, 2
	warp_event 17, 11, ROCK_TUNNEL_B1F, 3
	warp_event 37, 17, ROCK_TUNNEL_B1F, 4

	def_coord_events

	def_bg_events
	bg_event 11, 29, BGEVENT_READ, RockTunnel1F_SignScript

	def_object_events
	object_event  7,  5, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerHikerLenny, -1
	object_event  5, 16, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerHikerOliver, -1
	object_event 17, 15, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerHikerLucas, -1
	object_event 23,  8, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerPokemaniacAshton, -1
	object_event 37, 21, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerJrTrainerFLeah, -1
	object_event 22, 24, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerJrTrainerFDana, -1
	object_event 32, 24, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerJrTrainerFAriana, -1
