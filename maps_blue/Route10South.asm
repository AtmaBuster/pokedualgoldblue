	object_const_def
	const ROUTE10SOUTH_HIKER1
	const ROUTE10SOUTH_KANTO_SUPER_NERD
	const ROUTE10SOUTH_HIKER2
	const ROUTE10SOUTH_COOLTRAINER_F

Route10South_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerHikerClark:
	trainer HIKER_GEN1, CLARK_GEN1, EVENT_BEAT_HIKER_CLARK_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Ha-hahah-ah-ha!"
	done

.BeatenText:
	text "Ha-haha!"
	line "Not laughing!"
	cont "Ha-hay fever!"
	cont "Haha-ha-choo!"
	done

.AfterText:
	text "Haha-ha-choo!"
	line "Ha-choo!"
	cont "Snort! Snivel!"
	done

TrainerPokemaniacHerman:
	trainer POKEMANIAC_GEN1, HERMAN_GEN1, EVENT_BEAT_POKEMANIAC_HERMAN_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Hi kid, want to"
	line "see my #MON?"
	done

.BeatenText:
	text "Oh no! My #MON!"
	done

.AfterText:
	text "I don't like you"
	line "for beating me!"
	done

TrainerHikerTrent:
	trainer HIKER_GEN1, TRENT_GEN1, EVENT_BEAT_HIKER_TRENT_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Ah! This mountain"
	line "air is delicious!"
	done

.BeatenText:
	text "That cleared my"
	line "head!"
	done

.AfterText:
	text "I feel bloated on"
	line "mountain air!"
	done

TrainerJrTrainerFCarol:
	trainer JR_TRAINER_F_GEN1, CAROL_GEN1, EVENT_BEAT_JR_TRAINER_F_CAROL_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I'm feeling a bit"
	line "faint from this"
	cont "tough hike."
	done
	
.BeatenText:
	text "I'm not up to it!"
	done

.AfterText:
	text "The #MON here"
	line "are so chunky!"
	cont "There should be a"
	cont "pink one with a"
	cont "floral pattern!"
	done

Route10South_RockTunnelSignScript:
	jumptext .Text
.Text:
	text "ROCK TUNNEL"
	done

Route10South_HiddenMaxEther:
	hiddenitem MAX_ETHER, EVENT_ROUTE_10_SOUTH_HIDDEN_MAX_ETHER

Route10South_MapEvents:
	def_warp_events
	warp_event  8,  3, ROCK_TUNNEL_1F, 3

	def_coord_events

	def_bg_events
	bg_event  9,  5, BGEVENT_READ, Route10South_RockTunnelSignScript
	bg_event 16,  3, BGEVENT_ITEM, Route10South_HiddenMaxEther

	def_object_events
	object_event  3,  7, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerHikerClark, -1
	object_event 14, 14, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerPokemaniacHerman, -1
	object_event  3, 11, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerHikerTrent, -1
	object_event  7,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerJrTrainerFCarol, -1
