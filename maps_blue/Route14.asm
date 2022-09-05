	object_const_def
	const ROUTE14_COOLTRAINER_M1
	const ROUTE14_COOLTRAINER_M2
	const ROUTE14_COOLTRAINER_M3
	const ROUTE14_COOLTRAINER_M4
	const ROUTE14_COOLTRAINER_M5
	const ROUTE14_COOLTRAINER_M6
	const ROUTE14_BIKER1
	const ROUTE14_BIKER2
	const ROUTE14_BIKER3
	const ROUTE14_BIKER4

Route14_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerBirdKeeperCarter:
	trainer BIRD_KEEPER_GEN1, CARTER_GEN1, EVENT_BEAT_BIRD_KEEPER_CARTER_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "You need to use"
	line "TMs to teach good"
	cont "moves to #MON!"
	done

.BeatenText:
	text "Not good enough!"
	done

.AfterText:
	text "You have some HMs"
	line "right? #MON"
	cont "can't ever forget"
	cont "those moves."
	done

TrainerBirdKeeperMitch:
	trainer BIRD_KEEPER_GEN1, MITCH_GEN1, EVENT_BEAT_BIRD_KEEPER_MITCH_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "My bird #MON"
	line "should be ready"
	cont "for battle."
	done

.BeatenText:
	text "Not ready yet!"
	done

.AfterText:
	text "They need to learn"
	line "better moves."
	done

TrainerBirdKeeperBeck:
	trainer BIRD_KEEPER_GEN1, BECK_GEN1, EVENT_BEAT_BIRD_KEEPER_BECK_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "TMs are on sale"
	line "in CELADON!"
	cont "But, only a few"
	cont "people have HMs!"
	done

.BeatenText:
	text "Aww, bummer!"
	done

.AfterText:
	text "Teach #MON"
	line "moves of the same"
	cont "element type for"
	cont "more power."
	done

TrainerBirdKeeperMarlon:
	trainer BIRD_KEEPER_GEN1, MARLON_GEN1, EVENT_BEAT_BIRD_KEEPER_MARLON_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Have you taught"
	line "your bird #MON"
	cont "how to FLY?"
	done

.BeatenText:
	text "Shot down in"
	line "flames!"
	done

.AfterText:
	text "Bird #MON are"
	line "my true love!"
	done

TrainerBirdKeeperDonald:
	trainer BIRD_KEEPER_GEN1, DONALD_GEN1, EVENT_BEAT_BIRD_KEEPER_DONALD_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Have you heard of"
	line "the legendary"
	cont "#MON?"
	done

.BeatenText:
	text "Why? Why'd I lose?"
	done

.AfterText:
	text "The 3 legendary"
	line "#MON are all"
	cont "birds of prey."
	done

TrainerBirdKeeperBenny:
	trainer BIRD_KEEPER_GEN1, BENNY_GEN1, EVENT_BEAT_BIRD_KEEPER_BENNY_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I'm not into it,"
	line "but OK! Let's go!"
	done

.BeatenText:
	text "I knew it!"
	done

.AfterText:
	text "Winning, losing,"
	line "it doesn't matter"
	cont "in the long run!"
	done

TrainerBikerLukas:
	trainer BIKER_GEN1, LUKAS_GEN1, EVENT_BEAT_BIKER_LUKAS_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "C'mon, c'mon."
	line "Let's go, let's"
	cont "go, let's go!"
	done

.BeatenText:
	text "Arrg! Lost! Get"
	line "lost!"
	done

.AfterText:
	text "What, what, what?"
	line "What do you want?"
	done

TrainerBikerIsaac:
	trainer BIKER_GEN1, ISAAC_GEN1, EVENT_BEAT_BIKER_ISAAC_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Perfect! I need to"
	line "burn some time!"
	done

.BeatenText:
	text "What? You!?"
	done

.AfterText:
	text "Raising #MON"
	line "is a drag, man."
	done

TrainerBikerGerald:
	trainer BIKER_GEN1, GERALD_GEN1, EVENT_BEAT_BIKER_GERALD_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "We ride out here"
	line "because there's"
	cont "more room!"
	done

.BeatenText:
	text "Wipe out!"
	done

.AfterText:
	text "It's cool you"
	line "made your #MON"
	cont "so strong!"

	para "Might is right!"
	line "And you know it!"
	done

TrainerBikerMalik:
	trainer BIKER_GEN1, MALIK_GEN1, EVENT_BEAT_BIKER_MALIK_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "#MON fight?"
	line "Cool! Rumble!"
	done

.BeatenText:
	text "Blown away!"
	done

.AfterText:
	text "You know who'd"
	line "win, you and me"
	cont "one on one!"
	done

Route14_SignScript:
	jumptext .Text
.Text:
	text "ROUTE 14"
	line "West to FUCHSIA"
	cont "CITY"
	done

Route14_MapEvents:
	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 17, 13, BGEVENT_READ, Route14_SignScript

	def_object_events
	object_event  4,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerBirdKeeperCarter, -1
	object_event 15,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerBirdKeeperMitch, -1
	object_event 12, 11, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerBirdKeeperBeck, -1
	object_event 14, 15, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperMarlon, -1
	object_event 15, 31, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperDonald, -1
	object_event  6, 49, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerBirdKeeperBenny, -1
	object_event  5, 39, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerBikerLukas, -1
	object_event  4, 30, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerBikerIsaac, -1
	object_event 15, 30, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerBikerGerald, -1
	object_event  4, 31, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerBikerMalik, -1
