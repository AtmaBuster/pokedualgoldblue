	object_const_def
	const ROUTE13_COOLTRAINER_M1
	const ROUTE13_COOLTRAINER_F1
	const ROUTE13_COOLTRAINER_F2
	const ROUTE13_COOLTRAINER_F3
	const ROUTE13_COOLTRAINER_F4
	const ROUTE13_COOLTRAINER_M2
	const ROUTE13_KANTO_BEAUTY1
	const ROUTE13_KANTO_BEAUTY2
	const ROUTE13_BIKER
	const ROUTE13_COOLTRAINER_M3

Route13_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerBirdKeeperBret:
	trainer BIRD_KEEPER_GEN1, BRET_GEN1, EVENT_BEAT_BIRD_KEEPER_BRET_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "My bird #MON"
	line "want to scrap!"
	done

.BeatenText:
	text "My"
	line "bird combo lost?"
	done

.AfterText:
	text "My #MON look"
	line "happy even though"
	cont "they lost."
	done

TrainerJrTrainerFSusie:
	trainer JR_TRAINER_F_GEN1, SUSIE_GEN1, EVENT_BEAT_JR_TRAINER_F_SUSIE_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I'm told I'm good"
	line "for a kid!"
	done

.BeatenText:
	text "Ohh!"
	line "I lost!"
	done

.AfterText:
	text "I want to become"
	line "a good trainer."
	cont "I'll train hard."
	done

TrainerJrTrainerFGinger:
	trainer JR_TRAINER_F_GEN1, GINGER_GEN1, EVENT_BEAT_JR_TRAINER_F_GINGER_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Wow! Your BADGEs"
	line "are too cool!"
	done

.BeatenText:
	text "Not"
	line "enough!"
	done

.AfterText:
	text "You got those"
	line "BADGEs from GYM"
	cont "LEADERs. I know!"
	done

TrainerJrTrainerFGwen:
	trainer JR_TRAINER_F_GEN1, GWEN_GEN1, EVENT_BEAT_JR_TRAINER_F_GWEN_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "My cute #MON"
	line "wish to make your"
	cont "acquaintance."
	done

.BeatenText:
	text "Wow!"
	line "You totally won!"
	done

.AfterText:
	text "You have to make"
	line "#MON fight to"
	cont "toughen them up!"
	done

TrainerJrTrainerFAlma:
	trainer JR_TRAINER_F_GEN1, ALMA_GEN1, EVENT_BEAT_JR_TRAINER_F_ALMA_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I found CARBOS in"
	line "a cave once."
	done

.BeatenText:
	text "Just"
	line "messed up!"
	done

.AfterText:
	text "CARBOS boosted"
	line "the SPEED of my"
	cont "#MON."
	done

TrainerBirdKeeperPerry:
	trainer BIRD_KEEPER_GEN1, PERRY_GEN1, EVENT_BEAT_BIRD_KEEPER_PERRY_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "The wind's blowing"
	line "my way!"
	done

.BeatenText:
	text "The"
	line "wind turned!"
	done

.AfterText:
	text "I'm beat. I guess"
	line "I'll FLY home."
	done

TrainerBeautyLola:
	trainer BEAUTY_GEN1, LOLA_GEN1, EVENT_BEAT_BEAUTY_LOLA_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Sure, I'll play"
	line "with you!"
	done

.BeatenText:
	text "Oh!"
	line "You little brute!"
	done

.AfterText:
	text "I wonder which is"
	line "stronger, male or"
	cont "female #MON?"
	done

TrainerBeautySheila:
	trainer BEAUTY_GEN1, SHEILA_GEN1, EVENT_BEAT_BEAUTY_SHEILA_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Do you want to"
	line "#MON with me?"
	done

.BeatenText:
	text "It's over"
	line "already?"
	done

.AfterText:
	text "I don't know"
	line "anything about"
	cont "#MON. I just"
	cont "like cool ones!"
	done

TrainerBikerJared:
	trainer BIKER_GEN1, JARED_GEN1, EVENT_BEAT_BIKER_JARED_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "What're you"
	line "lookin' at?"
	done

.BeatenText:
	text "Dang!"
	line "Stripped gears!"
	done

.AfterText:
	text "Get lost!"
	done

TrainerBirdKeeperRobert:
	trainer BIRD_KEEPER_GEN1, ROBERT_GEN1, EVENT_BEAT_BIRD_KEEPER_ROBERT_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I always go with"
	line "bird #MON!"
	done

.BeatenText:
	text "Out"
	line "of power!"
	done

.AfterText:
	text "I wish I could"
	line "fly like PIDGEY"
	cont "and PIDGEOTTO..."
	done

Route13_LookLeftSignScript:
	jumptext .Text
.Text:
	text "TRAINER TIPS"

	para "Look to the left"
	line "of that post!"
	done

Route13_SelectSignScript:
	jumptext .Text
.Text:
	text "TRAINER TIPS"

	para "Use SELECT to"
	line "switch items in"
	cont "the ITEM window!"
	done

Route13_LocationSignScript:
	jumptext .Text
.Text:
	text "ROUTE 13"
	line "North to SILENCE"
	cont "BRIDGE"
	done

Route13_HiddenPPUp:
	hiddenitem PP_UP, EVENT_ROUTE_13_HIDDEN_PP_UP

Route13_HiddenCalcium:
	hiddenitem CALCIUM, EVENT_ROUTE_13_HIDDEN_CALCIUM

Route13_MapEvents:
	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 15, 13, BGEVENT_READ, Route13_LookLeftSignScript
	bg_event 33,  5, BGEVENT_READ, Route13_SelectSignScript
	bg_event 31, 11, BGEVENT_READ, Route13_LocationSignScript
	bg_event  1, 14, BGEVENT_ITEM, Route13_HiddenPPUp
	bg_event 16, 13, BGEVENT_ITEM, Route13_HiddenCalcium

	def_object_events
	object_event 49, 10, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerBirdKeeperBret, -1
	object_event 48, 10, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerJrTrainerFSusie, -1
	object_event 27,  9, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerJrTrainerFGinger, -1
	object_event 23, 10, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerJrTrainerFGwen, -1
	object_event 50,  5, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerJrTrainerFAlma, -1
	object_event 12,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerBirdKeeperPerry, -1
	object_event 33,  6, SPRITE_KANTO_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerBeautyLola, -1
	object_event 32,  6, SPRITE_KANTO_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerBeautySheila, -1
	object_event 10,  7, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerBikerJared, -1
	object_event  7, 13, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerBirdKeeperRobert, -1
