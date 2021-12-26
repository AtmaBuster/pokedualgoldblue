	object_const_def
	const ROUTE17_BIKER1
	const ROUTE17_BIKER2
	const ROUTE17_BIKER3
	const ROUTE17_BIKER4
	const ROUTE17_BIKER5
	const ROUTE17_BIKER6
	const ROUTE17_BIKER7
	const ROUTE17_BIKER8
	const ROUTE17_BIKER9
	const ROUTE17_BIKER10

Route17_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerCueBallRaul:
	trainer CUE_BALL_GEN1, RAUL_GEN1, EVENT_BEAT_CUE_BALL_RAUL_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "There's no money"
	line "in fighting kids!"
	done

.BeatenText:
	text "Burned"
	line "out!"
	done

.AfterText:
	text "Good stuff is"
	line "lying around on"
	cont "CYCLING ROAD!"
	done

TrainerCueBallIsaiah:
	trainer CUE_BALL_GEN1, ISAIAH_GEN1, EVENT_BEAT_CUE_BALL_ISAIAH_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "What do you want,"
	line "kiddo?"
	done

.BeatenText:
	text "Whoo!"
	done

.AfterText:
	text "I could belly-"
	line "bump you outta"
	cont "here!"
	done

TrainerBikerVirgil:
	trainer BIKER_GEN1, VIRGIL_GEN1, EVENT_BEAT_BIKER_VIRGIL_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "You heading to"
	line "FUCHSIA?"
	done

.BeatenText:
	text "Crash and"
	line "burn!"
	done

.AfterText:
	text "I love racing"
	line "downhill!"
	done

TrainerBikerBilly:
	trainer BIKER_GEN1, BILLY_GEN1, EVENT_BEAT_BIKER_BILLY_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "We're BIKERs!"
	line "Highway stars!"
	done

.BeatenText:
	text "Smoked!"
	done

.AfterText:
	text "Are you looking"
	line "for adventure?"
	done

TrainerBikerNikolas:
	trainer BIKER_GEN1, NIKOLAS_GEN1, EVENT_BEAT_BIKER_NIKOLAS_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Let VOLTORB"
	line "electrify you!"
	done

.BeatenText:
	text "Grounded"
	line "out!"
	done

.AfterText:
	text "I got my VOLTORB"
	line "at the abandoned"
	cont "POWER PLANT."
	done

TrainerCueBallZeke:
	trainer CUE_BALL_GEN1, ZEKE_GEN1, EVENT_BEAT_CUE_BALL_ZEKE_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "My #MON won't"
	line "evolve! Why?"
	done

.BeatenText:
	text "Why,"
	line "you!"
	done

.AfterText:
	text "Maybe some #MON"
	line "need element"
	cont "STONEs to evolve."
	done

TrainerCueBallJamal:
	trainer CUE_BALL_GEN1, JAMAL_GEN1, EVENT_BEAT_CUE_BALL_JAMAL_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I need a little"
	line "exercise!"
	done

.BeatenText:
	text "Whew!"
	line "Good workout!"
	done

.AfterText:
	text "I'm sure I lost"
	line "weight there!"
	done

TrainerCueBallCorey:
	trainer CUE_BALL_GEN1, COREY_GEN1, EVENT_BEAT_CUE_BALL_COREY_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Be a rebel!"
	done

.BeatenText:
	text "Aaaargh!"
	done

.AfterText:
	text "Be ready to fight"
	line "for your beliefs!"
	done

TrainerBikerJaxon:
	trainer BIKER_GEN1, JAXON_GEN1, EVENT_BEAT_BIKER_JAXON_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Nice BIKE!"
	line "How's it handle?"
	done

.BeatenText:
	text "Shoot!"
	done

.AfterText:
	text "The slope makes"
	line "it hard to steer!"
	done

TrainerBikerWilliam:
	trainer BIKER_GEN1, WILLIAM_GEN1, EVENT_BEAT_BIKER_WILLIAM_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Get lost kid!"
	line "I'm bushed!"
	done

.BeatenText:
	text "Are you"
	line "satisfied?"
	done

.AfterText:
	text "I need to catch"
	line "a few Zs!"
	done

Route17_HiddenRareCandy:
	hiddenitem MAX_ELIXER, EVENT_ROUTE_17_HIDDEN_RARE_CANDY

Route17_HiddenFullRestore:
	hiddenitem MAX_ELIXER, EVENT_ROUTE_17_HIDDEN_FULL_RESTORE

Route17_HiddenPPUp:
	hiddenitem MAX_ELIXER, EVENT_ROUTE_17_HIDDEN_PP_UP

Route17_HiddenMaxRevive:
	hiddenitem MAX_ELIXER, EVENT_ROUTE_17_HIDDEN_MAX_REVIVE

Route17_HiddenMaxElixer:
	hiddenitem MAX_ELIXER, EVENT_ROUTE_17_HIDDEN_MAX_ELIXER

Route17_DiscardedItemsSignScript:
	jumptext .Text
.Text:
	text "It's a notice!"

	para "Watch out for"
	line "discarded items!"
	done

Route17_TrainerTips1Script:
	jumptext .Text
.Text:
	text "TRAINER TIPS"

	para "All #MON are"
	line "unique."

	para "Even #MON of"
	line "the same type and"
	cont "level grow at"
	cont "different rates."
	done

Route17_TrainerTips2Script:
	jumptext .Text
.Text:
	text "TRAINER TIPS"

	para "Press the A or B"
	line "Button to stay in"
	cont "place while on a"
	cont "slope."
	done

Route17_NameSignScript:
	jumptext .Text
.Text:
	text "ROUTE 17"
	line "CELADON CITY -"
	cont "FUCHSIA CITY"
	done

Route17_ThrowBallsSignScript:
	jumptext .Text
.Text:
	text "It's a notice!"

	para "Don't throw the"
	line "game, throw #"
	cont "BALLs instead!"
	done

Route17_SlopeEndsSignScript:
	jumptext .Text
.Text:
	text "CYCLING ROAD"
	line "Slope ends here!"
	done


Route17_MapEvents:
	def_warp_events

	def_coord_events

	def_bg_events
	bg_event  9, 51, BGEVENT_READ, Route17_DiscardedItemsSignScript
	bg_event  9, 63, BGEVENT_READ, Route17_TrainerTips1Script
	bg_event  9, 75, BGEVENT_READ, Route17_TrainerTips2Script
	bg_event  9, 87, BGEVENT_READ, Route17_NameSignScript
	bg_event  9, 111, BGEVENT_READ, Route17_ThrowBallsSignScript
	bg_event  9, 141, BGEVENT_READ, Route17_SlopeEndsSignScript
	bg_event 15, 14, BGEVENT_ITEM, Route17_HiddenRareCandy
	bg_event  8, 45, BGEVENT_ITEM, Route17_HiddenFullRestore
	bg_event 17, 72, BGEVENT_ITEM, Route17_HiddenPPUp
	bg_event  4, 91, BGEVENT_ITEM, Route17_HiddenMaxRevive
	bg_event  8, 121, BGEVENT_ITEM, Route17_HiddenMaxElixer

	def_object_events
	object_event 12, 19, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerCueBallRaul, -1
	object_event 11, 16, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerCueBallIsaiah, -1
	object_event  4, 18, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerBikerVirgil, -1
	object_event  7, 32, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerBikerBilly, -1
	object_event 14, 34, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerBikerNikolas, -1
	object_event 17, 58, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerCueBallZeke, -1
	object_event  2, 68, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerCueBallJamal, -1
	object_event 14, 98, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerCueBallCorey, -1
	object_event  5, 98, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerBikerJaxon, -1
	object_event 10, 118, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerBikerWilliam, -1
