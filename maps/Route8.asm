	object_const_def
	const ROUTE8_KANTO_SUPER_NERD1
	const ROUTE8_GAMBLER1
	const ROUTE8_KANTO_SUPER_NERD2
	const ROUTE8_COOLTRAINER_F1
	const ROUTE8_KANTO_SUPER_NERD3
	const ROUTE8_COOLTRAINER_F2
	const ROUTE8_COOLTRAINER_F3
	const ROUTE8_GAMBLER2
	const ROUTE8_COOLTRAINER_F4

Route8_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerSuperNerdAidan:
	trainer SUPER_NERD_GEN1, AIDAN_GEN1, EVENT_BEAT_SUPER_NERD_AIDAN_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "You look good at"
	line "#MON, but"
	cont "how's your chem?"
	done

.BeatenText:
	text "Ow!"
	line "Meltdown!"
	done

.AfterText:
	text "I am better at"
	line "school than this!"
	done

TrainerGamblerStan:
	trainer GAMBLER_GEN1, STAN_GEN1, EVENT_BEAT_GAMBLER_STAN_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "All right! Let's"
	line "roll the dice!"
	done

.BeatenText:
	text "Drat!"
	line "Came up short!"
	done

.AfterText:
	text "Lady Luck's not"
	line "with me today!"
	done

TrainerSuperNerdGlenn:
	trainer SUPER_NERD_GEN1, GLENN_GEN1, EVENT_BEAT_SUPER_NERD_GLENN_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "You need strategy"
	line "to win at this!"
	done

.BeatenText:
	text "It's"
	line "not logical!"
	done

.AfterText:
	text "Go with GRIMER"
	line "first...and..."
	cont "...and...then..."
	done

TrainerLassPaige:
	trainer LASS_GEN1, PAIGE_GEN1, EVENT_BEAT_LASS_PAIGE_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I like NIDORAN, so"
	line "I collect them!"
	done

.BeatenText:
	text "Why? Why??"
	done

.AfterText:
	text "When #MON grow"
	line "up they get ugly!"
	cont "They shouldn't"
	cont "evolve!"
	done

TrainerSuperNerdLeslie:
	trainer SUPER_NERD_GEN1, LESLIE_GEN1, EVENT_BEAT_SUPER_NERD_LESLIE_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "School is fun, but"
	line "so are #MON."
	done

.BeatenText:
	text "I'll"
	line "stay with school."
	done

.AfterText:
	text "We're stuck here"
	line "because of the"
	cont "gates at SAFFRON."
	done

TrainerLassAndrea:
	trainer LASS_GEN1, ANDREA_GEN1, EVENT_BEAT_LASS_ANDREA_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "MEOWTH is so cute,"
	line "meow, meow, meow!"
	done

.BeatenText:
	text "Meow!"
	done

.AfterText:
	text "I think PIDGEY"
	line "and RATTATA"
	cont "are cute too!"
	done

TrainerLassMegan:
	trainer LASS_GEN1, MEGAN_GEN1, EVENT_BEAT_LASS_MEGAN_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "We must look"
	line "silly standing"
	cont "here like this!"
	done

.BeatenText:
	text "Look what"
	line "you did!"
	done

.AfterText:
	text "SAFFRON's gate"
	line "keeper won't let"
	cont "us through."
	cont "He's so mean!"
	done

TrainerGamblerRich:
	trainer GAMBLER_GEN1, RICH_GEN1, EVENT_BEAT_GAMBLER_RICH_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I'm a rambling,"
	line "gambling dude!"
	done

.BeatenText:
	text "Missed"
	line "the big score!"
	done

.AfterText:
	text "Gambling and"
	line "#MON are like"
	cont "eating peanuts!"
	cont "Just can't stop!"
	done

TrainerLassJulia:
	trainer LASS_GEN1, JULIA_GEN1, EVENT_BEAT_LASS_JULIA_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "What's a cute,"
	line "round and fluffy"
	cont "#MON?"
	done

.BeatenText:
	text "Stop!"

	para "Don't be so mean"
	line "to my CLEFAIRY!"
	done

.AfterText:
	text "I heard that"
	line "CLEFAIRY evolves"
	cont "when it's exposed"
	cont "to a MOON STONE."
	done

Route8_UndergroundSignScript:
	jumptext .Text
.Text:
	text "UNDERGROUND PATH"
	line "CELADON CITY -"
	cont "LAVENDER TOWN"
	done

Route8_MapEvents:
	def_warp_events
	warp_event  1,  9, ROUTE_8_GATE, 1
	warp_event  1, 10, ROUTE_8_GATE, 2
	warp_event  8,  9, ROUTE_8_GATE, 3
	warp_event  8, 10, ROUTE_8_GATE, 4
	warp_event 13,  3, UNDERGROUND_PATH_ROUTE_8, 1

	def_coord_events

	def_bg_events
	bg_event 17,  3, BGEVENT_READ, Route8_UndergroundSignScript

	def_object_events
	object_event  8,  5, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerSuperNerdAidan, -1
	object_event 13,  9, SPRITE_GAMBLER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerGamblerStan, -1
	object_event 42,  6, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerSuperNerdGlenn, -1
	object_event 26,  3, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerLassPaige, -1
	object_event 26,  4, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerSuperNerdLeslie, -1
	object_event 26,  5, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerLassAndrea, -1
	object_event 26,  6, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerLassMegan, -1
	object_event 46, 13, SPRITE_GAMBLER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerGamblerRich, -1
	object_event 51, 12, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerLassJulia, -1
