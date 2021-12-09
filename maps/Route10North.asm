	object_const_def
	const ROUTE10NORTH_KANTO_SUPER_NERD
	const ROUTE10NORTH_COOLTRAINER_F

Route10North_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerPokemaniacMark:
	trainer POKEMANIAC_GEN1, MARK_GEN1, EVENT_BEAT_POKEMANIAC_MARK_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Wow, are you a"
	line "#MANIAC too?"
	cont "Want to see my"
	cont "collection?"
	done

.BeatenText:
	text "Humph."
	line "I'm not angry!"
	done

.AfterText:
	text "I have more rare"
	line "#MON at home!"
	done

TrainerJrTrainerFHeidi:
	trainer JR_TRAINER_F_GEN1, HEIDI_GEN1, EVENT_BEAT_JR_TRAINER_F_HEIDI_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I've been to a"
	line "#MON GYM a few"
	cont "times. But, I"
	cont "lost each time."
	done

.BeatenText:
	text "Ohh!"
	line "Blew it again!"
	done

.AfterText:
	text "I noticed some"
	line "#MANIACs"
	cont "prowling around."
	done

Route10North_RockTunnelSignScript:
	jumptext .Text
.Text:
	text "ROCK TUNNEL"
	done

Route10North_PMCSignScript:
	jumptext .Text
.Text:
	text "Heal your #MON!"
	line "#MON CENTER"
	done

Route10North_PowerPlantSignScript:
	jumptext .Text
.Text:
	text "POWER PLANT"
	done

Route10North_HiddenSuperPotion:
	hiddenitem SUPER_POTION, EVENT_ROUTE_10_NORTH_HIDDEN_SUPER_POTION

Route10North_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11, 19, ROCK_TUNNEL_POKECENTER, 1
	warp_event  8, 17, ROCK_TUNNEL_1F, 1
	warp_event  6, 39, POWER_PLANT, 1

	def_coord_events

	def_bg_events
	bg_event  7, 19, BGEVENT_READ, Route10North_RockTunnelSignScript
	bg_event 12, 19, BGEVENT_READ, Route10North_PMCSignScript
	bg_event  5, 41, BGEVENT_READ, Route10North_PowerPlantSignScript
	bg_event  9, 17, BGEVENT_ITEM, Route10North_HiddenSuperPotion

	def_object_events
	object_event 10, 44, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerPokemaniacMark, -1
	object_event  7, 25, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerJrTrainerFHeidi, -1
