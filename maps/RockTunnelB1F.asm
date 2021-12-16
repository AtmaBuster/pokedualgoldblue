	object_const_def
	const ROCKTUNNELB1F_COOLTRAINER_F1
	const ROCKTUNNELB1F_HIKER1
	const ROCKTUNNELB1F_KANTO_SUPER_NERD1
	const ROCKTUNNELB1F_KANTO_SUPER_NERD2
	const ROCKTUNNELB1F_HIKER2
	const ROCKTUNNELB1F_COOLTRAINER_F2
	const ROCKTUNNELB1F_HIKER3
	const ROCKTUNNELB1F_KANTO_SUPER_NERD3

RockTunnelB1F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerJrTrainerFSofia:
	trainer JR_TRAINER_F_GEN1, SOFIA_GEN1, EVENT_BEAT_JR_TRAINER_F_SOFIA_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Hikers leave twigs"
	line "as trail markers."
	done

.BeatenText:
	text "Ohhh!"
	line "I did my best!"
	done

.AfterText:
	text "I want to go "
	line "home!"
	done

TrainerHikerDudley:
	trainer HIKER_GEN1, DUDLEY_GEN1, EVENT_BEAT_HIKER_DUDLEY_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Hahaha! Can you"
	line "beat my power?"
	done

.BeatenText:
	text "Oops!"
	line "Out-muscled!"
	done

.AfterText:
	text "I go for power"
	line "because I hate"
	cont "thinking!"
	done

TrainerPokemaniacCooper:
	trainer POKEMANIAC_GEN1, COOPER_GEN1, EVENT_BEAT_POKEMANIAC_COOPER_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "You have a"
	line "#DEX?"
	cont "I want one too!"
	done

.BeatenText:
	text "Shoot!"
	line "I'm so jealous!"
	done

.AfterText:
	text "When you finish"
	line "your #DEX, can"
	cont "I have it?"
	done

TrainerPokemaniacSteve:
	trainer POKEMANIAC_GEN1, STEVE_GEN1, EVENT_BEAT_POKEMANIAC_STEVE_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Do you know about"
	line "costume players?"
	done

.BeatenText:
	text "Well,"
	line "that's that."
	done

.AfterText:
	text "Costume players"
	line "dress up as"
	cont "#MON for fun."
	done

TrainerHikerAllen:
	trainer HIKER_GEN1, ALLEN_GEN1, EVENT_BEAT_HIKER_ALLEN_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "My #MON"
	line "techniques will"
	cont "leave you crying!"
	done

.BeatenText:
	text "I give!"
	line "You're a better"
	cont "technician!"
	done

.AfterText:
	text "In mountains,"
	line "you'll often find"
	cont "rock-type #MON."
	done

TrainerJrTrainerFMartha:
	trainer JR_TRAINER_F_GEN1, MARTHA_GEN1, EVENT_BEAT_JR_TRAINER_F_MARTHA_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I don't often"
	line "come here, but I"
	cont "will fight you."
	done

.BeatenText:
	text "Oh!"
	line "I lost!"
	done

.AfterText:
	text "I like tiny"
	line "#MON, big ones"
	cont "are too scary!"
	done

TrainerHikerEric:
	trainer HIKER_GEN1, ERIC_GEN1, EVENT_BEAT_HIKER_ERIC_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Hit me with your"
	line "best shot!"
	done

.BeatenText:
	text "Fired"
	line "away!"
	done

.AfterText:
	text "I'll raise my"
	line "#MON to beat"
	cont "yours, kid!"
	done

TrainerPokemaniacWinston:
	trainer POKEMANIAC_GEN1, WINSTON_GEN1, EVENT_BEAT_POKEMANIAC_WINSTON_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I draw #MON"
	line "when I'm home."
	done

.BeatenText:
	text "Whew!"
	line "I'm exhausted!"
	done

.AfterText:
	text "I'm an artist,"
	line "not a fighter."
	done

RockTunnelB1F_MapEvents:
	def_warp_events
	warp_event 33, 25, ROCK_TUNNEL_1F, 5
	warp_event 27,  3, ROCK_TUNNEL_1F, 6
	warp_event 23, 11, ROCK_TUNNEL_1F, 7
	warp_event  3,  3, ROCK_TUNNEL_1F, 8

	def_coord_events

	def_bg_events

	def_object_events
	object_event 11, 13, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 4, TrainerJrTrainerFSofia, -1
	object_event  6, 10, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 3, TrainerHikerDudley, -1
	object_event  3,  5, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 3, TrainerPokemaniacCooper, -1
	object_event 20, 21, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 4, TrainerPokemaniacSteve, -1
	object_event 30, 10, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 3, TrainerHikerAllen, -1
	object_event 14, 28, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 4, TrainerJrTrainerFMartha, -1
	object_event 33,  5, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 3, TrainerHikerEric, -1
	object_event 26, 30, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 3, TrainerPokemaniacWinston, -1
