	object_const_def
	const ROUTE20_SWIMMER_GUY1
	const ROUTE20_SWIMMER_GUY2
	const ROUTE20_SWIMMER_GUY3
	const ROUTE20_SWIMMER_GUY4
	const ROUTE20_SWIMMER_GUY5
	const ROUTE20_SWIMMER_GUY6
	const ROUTE20_COOLTRAINER_M
	const ROUTE20_SWIMMER_GUY7
	const ROUTE20_SWIMMER_GUY8
	const ROUTE20_SWIMMER_GUY9

Route20_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .ResetSeafoam

.ResetSeafoam:
	checkevent EVENT_SEAFOAM_ISLANDS_BOULDER_1D
	iftrue .Reset1
	checkevent EVENT_SEAFOAM_ISLANDS_BOULDER_2D
	iffalse .Check2
.Reset1:
	clearevent EVENT_SEAFOAM_ISLANDS_BOULDER_1A
	clearevent EVENT_SEAFOAM_ISLANDS_BOULDER_2A
	setevent EVENT_SEAFOAM_ISLANDS_BOULDER_1B
	setevent EVENT_SEAFOAM_ISLANDS_BOULDER_2B
	setevent EVENT_SEAFOAM_ISLANDS_BOULDER_1C
	setevent EVENT_SEAFOAM_ISLANDS_BOULDER_2C
	setevent EVENT_SEAFOAM_ISLANDS_BOULDER_1D
	setevent EVENT_SEAFOAM_ISLANDS_BOULDER_2D
.Check2:
	checkevent EVENT_SEAFOAM_ISLANDS_BOULDER_3B
	iftrue .Reset2
	checkevent EVENT_SEAFOAM_ISLANDS_BOULDER_4B
	iffalse DummyScript
.Reset2:
	clearevent EVENT_SEAFOAM_ISLANDS_BOULDER_3A
	clearevent EVENT_SEAFOAM_ISLANDS_BOULDER_4A
	setevent EVENT_SEAFOAM_ISLANDS_BOULDER_3B
	setevent EVENT_SEAFOAM_ISLANDS_BOULDER_4B
	endcallback

TrainerSwimmerTucker:
	trainer SWIMMER_GEN1, TUCKER1_GEN1, EVENT_BEAT_SWIMMER_TUCKER_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "The water is"
	line "shallow here."
	done

.BeatenText:
	text "Splash!"
	done

.AfterText:
	text "I wish I could"
	line "ride my #MON."
	done

TrainerBeautyShirley:
	trainer BEAUTY_GEN1, SHIRLEY_GEN1, EVENT_BEAT_BEAUTY_SHIRLEY_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "SEAFOAM is a"
	line "quiet getaway!"
	done

.BeatenText:
	text "Quit it!"
	done

.AfterText:
	text "There's a huge"
	line "cavern underneath"
	cont "this island."
	done

TrainerBeautyTiffany:
	trainer BEAUTY_GEN1, TIFFANY_GEN1, EVENT_BEAT_BEAUTY_TIFFANY_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I love floating"
	line "with the fishes!"
	done

.BeatenText:
	text "Yowch!"
	done

.AfterText:
	text "Want to float"
	line "with me?"
	done

TrainerJrTrainerFIrene:
	trainer JR_TRAINER_F_GEN1, IRENE_GEN1, EVENT_BEAT_JR_TRAINER_F_IRENE_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Are you on"
	line "vacation too?"
	done

.BeatenText:
	text "No mercy at all!"
	done

.AfterText:
	text "SEAFOAM used to"
	line "be one island!"
	done

TrainerSwimmerDean:
	trainer SWIMMER_GEN1, DEAN_GEN1, EVENT_BEAT_SWIMMER_DEAN_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Check out my buff"
	line "physique!"
	done

.BeatenText:
	text "Wimpy!"
	done

.AfterText:
	text "I should've been"
	line "buffing up my"
	cont "#MON, not me!"
	done

TrainerSwimmerDarrin:
	trainer SWIMMER_GEN1, DARRIN_GEN1, EVENT_BEAT_SWIMMER_DARRIN_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Why are you"
	line "riding a #MON?"
	cont "Can't you swim?"
	done

.BeatenText:
	text "Ouch! Torpedoed!"
	done

.AfterText:
	text "Riding a #MON"
	line "sure looks fun!"
	done

TrainerBirdKeeperRoger:
	trainer BIRD_KEEPER_GEN1, ROGER_GEN1, EVENT_BEAT_BIRD_KEEPER_ROGER_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I rode my bird"
	line "#MON here!"
	done

.BeatenText:
	text "Oh no!"
	done

.AfterText:
	text "My birds can't"
	line "FLY me back!"
	done

TrainerBeautyNora:
	trainer BEAUTY_GEN1, NORA_GEN1, EVENT_BEAT_BEAUTY_NORA_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "My boy friend gave"
	line "me big pearls!"
	done

.BeatenText:
	text "Don't touch my"
	line "pearls!"
	done

.AfterText:
	text "Will my pearls"
	line "grow bigger"
	cont "inside CLOYSTER?"
	done

TrainerJrTrainerFMissy:
	trainer JR_TRAINER_F_GEN1, MISSY_GEN1, EVENT_BEAT_JR_TRAINER_F_MISSY_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I swam here from"
	line "CINNABAR ISLAND!"
	done

.BeatenText:
	text "I'm so"
	line "disappointed!"
	done

.AfterText:
	text "#MON have"
	line "taken over an"
	cont "abandoned mansion"
	cont "on CINNABAR!"
	done

TrainerBeautyMelissa:
	trainer BEAUTY_GEN1, MELISSA_GEN1, EVENT_BEAT_BEAUTY_MELISSA_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "CINNABAR, in the"
	line "west, has a LAB"
	cont "for #MON."
	done

.BeatenText:
	text "Wait!"
	done

.AfterText:
	text "CINNABAR is a "
	line "volcanic island!"
	done

Route20_SeafoamIslandsSignScript:
	jumptext .Text
.Text:
	text "SEAFOAM ISLANDS"
	done

Route20_MapEvents:
	def_warp_events
	warp_event 48,  5, SEAFOAM_ISLANDS_1F, 1
	warp_event 58,  9, SEAFOAM_ISLANDS_1F, 3

	def_coord_events

	def_bg_events
	bg_event 51,  7, BGEVENT_READ, Route20_SeafoamIslandsSignScript
	bg_event 57, 11, BGEVENT_READ, Route20_SeafoamIslandsSignScript

	def_object_events
	object_event 87,  8, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerSwimmerTucker, -1
	object_event 68, 11, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerBeautyShirley, -1
	object_event 45, 10, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerBeautyTiffany, -1
	object_event 55, 14, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerJrTrainerFIrene, -1
	object_event 38, 13, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerSwimmerDean, -1
	object_event 87, 13, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerSwimmerDarrin, -1
	object_event 34,  9, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerBirdKeeperRoger, -1
	object_event 25,  7, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerBeautyNora, -1
	object_event 24, 12, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerJrTrainerFMissy, -1
	object_event 15,  8, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerBeautyMelissa, -1
