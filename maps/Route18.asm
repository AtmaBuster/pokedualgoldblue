	object_const_def
	const ROUTE18_COOLTRAINER_M1
	const ROUTE18_COOLTRAINER_M2
	const ROUTE18_COOLTRAINER_M3

Route18_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerBirdKeeperWilton:
	trainer BIRD_KEEPER_GEN1, WILTON_GEN1, EVENT_BEAT_BIRD_KEEPER_WILTON_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I always check"
	line "every grassy area"
	cont "for new #MON."
	done

.BeatenText:
	text "Tch!"
	done

.AfterText:
	text "I wish I had a"
	line "BIKE!"
	done

TrainerBirdKeeperBoris:
	trainer BIRD_KEEPER_GEN1, BORIS_GEN1, EVENT_BEAT_BIRD_KEEPER_BORIS_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Kurukkoo!"
	line "How do you like"
	cont "my bird call?"
	done

.BeatenText:
	text "I had to bug you!"
	done

.AfterText:
	text "I also collect sea"
	line "#MON on"
	cont "weekends!"
	done

TrainerBirdKeeperJacob:
	trainer BIRD_KEEPER_GEN1, JACOB_GEN1, EVENT_BEAT_BIRD_KEEPER_JACOB_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "This is my turf!"
	line "Get out of here!"
	done

.BeatenText:
	text "Darn!"
	done

.AfterText:
	text "This is my fave"
	line "#MON hunting"
	cont "area!"
	done

Route18_NameSignScript:
	jumptext .Text
.Text:
	text "ROUTE 18"
	line "CELADON CITY -"
	cont "FUCHSIA CITY"
	done

Route18_NoPedestriansSignScript:
	jumptext .Text
.Text:
	text "CYCLING ROAD"
	line "No pedestrians"
	cont "permitted!"
	done


Route18_MapEvents:
	def_warp_events
	warp_event 33,  8, ROUTE_18_GATE_1F, 1
	warp_event 33,  9, ROUTE_18_GATE_1F, 2
	warp_event 40,  8, ROUTE_18_GATE_1F, 3
	warp_event 40,  9, ROUTE_18_GATE_1F, 4

	def_coord_events

	def_bg_events
	bg_event 43,  7, BGEVENT_READ, Route18_NameSignScript
	bg_event 33,  5, BGEVENT_READ, Route18_NoPedestriansSignScript

	def_object_events
	object_event 36, 11, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperWilton, -1
	object_event 40, 15, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperBoris, -1
	object_event 42, 13, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerBirdKeeperJacob, -1
