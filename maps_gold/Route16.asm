	object_const_def
	const ROUTE16_BIKER1
	const ROUTE16_BIKER2
	const ROUTE16_BIKER3
	const ROUTE16_BIKER4
	const ROUTE16_BIKER5
	const ROUTE16_BIKER6
	const ROUTE16_KANTO_SNORLAX

Route16_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .AlwaysOnBike

.AlwaysOnBike:
	readvar VAR_YCOORD
	ifless 10, .CanWalk
	readvar VAR_XCOORD
	ifgreater 23, .CanWalk
	setflag ENGINE_ALWAYS_ON_BIKE
	endcallback

.CanWalk:
	clearflag ENGINE_ALWAYS_ON_BIKE
	endcallback

Route16_SnorlaxEvent:
	opentext
	writetext .SleepingMonText
	waitbutton
	checkitem POKE_FLUTE
	iftrue .HavePokeFlute
	closetext
	end

.HavePokeFlute:
	writetext .AskUsePokeFluteText
	yesorno
	iffalse .DidntUsePokeFlute
	writetext .UsedPokeFluteText
	playmusic MUSIC_NONE
	playsound SFX_POKEFLUTE
	waitsfx
	special RestartMapMusic
	writetext .GrumpyRageText
	waitbutton
	closetext
	loadwildmon SNORLAX, 30
	startbattle
	ifequal DRAW, .DidntCatch
	disappear ROUTE16_KANTO_SNORLAX
	reloadmapafterbattle
	end

.DidntCatch:
	disappear ROUTE16_KANTO_SNORLAX
	reloadmapafterbattle
	opentext
	writetext .ReturnedToMountainsText
	waitbutton
.DidntUsePokeFlute:
	closetext
	end

.SleepingMonText:
	text "A sleeping #MON"
	line "blocks the way!"
	done

.AskUsePokeFluteText:
	text "Use the"
	line "# FLUTE?"
	done

.UsedPokeFluteText:
	text "<PLAYER> used"
	line "the # FLUTE!"
	done

.GrumpyRageText:
	text "SNORLAX woke up!"

	para "It attacked in a"
	line "grumpy rage!"
	done

.ReturnedToMountainsText:
	text "SNORLAX calmed"
	line "down! With a big"
	cont "yawn, it returned"
	cont "to the mountains!"
	done

TrainerBikerLao:
	trainer BIKER_GEN1, LAO_GEN1, EVENT_BEAT_BIKER_LAO_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "What do you want?"
	done

.BeatenText:
	text "Don't you dare"
	line "laugh!"
	done

.AfterText:
	text "We like just"
	line "hanging here,"
	cont "what's it to you?"
	done

TrainerCueBallKoji:
	trainer CUE_BALL_GEN1, KOJI_GEN1, EVENT_BEAT_CUE_BALL_KOJI_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Nice BIKE!"
	line "Hand it over!"
	done

.BeatenText:
	text "Knock out!"
	done

.AfterText:
	text "Forget it, who"
	line "needs your BIKE!"
	done

TrainerCueBallLuke:
	trainer CUE_BALL_GEN1, LUKE_GEN1, EVENT_BEAT_CUE_BALL_LUKE_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Come out and play,"
	line "little mouse!"
	done

.BeatenText:
	text "You little rat!"
	done

.AfterText:
	text "I hate losing!"
	line "Get away from me!"
	done

TrainerBikerHideo:
	trainer BIKER_GEN1, HIDEO_GEN1, EVENT_BEAT_BIKER_HIDEO_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Hey, you just"
	line "bumped me!"
	done

.BeatenText:
	text "Kaboom!"
	done

.AfterText:
	text "You can also get"
	line "to FUCHSIA from"
	cont "VERMILION using a"
	cont "coastal road."
	done

TrainerCueBallCamron:
	trainer CUE_BALL_GEN1, CAMRON_GEN1, EVENT_BEAT_CUE_BALL_CAMRON_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I'm feeling"
	line "hungry and mean!"
	done

.BeatenText:
	text "Bad, bad, bad!"
	done

.AfterText:
	text "I like my #MON"
	line "ferocious! They"
	cont "tear up enemies!"
	done

TrainerBikerRuben:
	trainer BIKER_GEN1, RUBEN_GEN1, EVENT_BEAT_BIKER_RUBEN_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Sure, I'll go!"
	done

.BeatenText:
	text "Don't make me mad!"
	done

.AfterText:
	text "I like harassing"
	line "people with my"
	cont "vicious #MON!"
	done

Route16_EnjoySignScript:
	jumptext .Text
.Text:
	text "Enjoy the slope!"
	line "CYCLING ROAD"
	done

Route16_LocationSignScript:
	jumptext .Text
.Text:
	text "ROUTE 16"
	line "CELADON CITY -"
	cont "FUCHSIA CITY"
	done

Route16_MapEvents:
	def_warp_events
	warp_event 17, 10, ROUTE_16_GATE_1F, 1
	warp_event 17, 11, ROUTE_16_GATE_1F, 2
	warp_event 24, 10, ROUTE_16_GATE_1F, 3
	warp_event 24, 11, ROUTE_16_GATE_1F, 4
	warp_event 17,  4, ROUTE_16_GATE_1F, 5
	warp_event 17,  5, ROUTE_16_GATE_1F, 6
	warp_event 24,  4, ROUTE_16_GATE_1F, 7
	warp_event 24,  5, ROUTE_16_GATE_1F, 8
	warp_event  7,  5, ROUTE_16_FLY_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 27, 11, BGEVENT_READ, Route16_EnjoySignScript
	bg_event  5, 17, BGEVENT_READ, Route16_LocationSignScript

	def_object_events
	object_event 17, 12, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerBikerLao, -1
	object_event 14, 13, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerCueBallKoji, -1
	object_event 11, 12, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerCueBallLuke, -1
	object_event  9, 11, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerBikerHideo, -1
	object_event  6, 10, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerCueBallCamron, -1
	object_event  3, 12, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerBikerRuben, -1
	object_event 26, 10, SPRITE_KANTO_SNORLAX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route16_SnorlaxEvent, EVENT_ROUTE_16_SNORLAX
