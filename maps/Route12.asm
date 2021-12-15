	object_const_def
	const ROUTE12_KANTO_SNORLAX
	const ROUTE12_FISHER1
	const ROUTE12_FISHER2
	const ROUTE12_COOLTRAINER_M
	const ROUTE12_KANTO_SUPER_NERD
	const ROUTE12_FISHER3
	const ROUTE12_FISHER4
	const ROUTE12_FISHER5
	const ROUTE12_POKE_BALL1
	const ROUTE12_POKE_BALL2

Route12_MapScripts:
	def_scene_scripts

	def_callbacks

Route12_SnorlaxScript:
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
	setevent EVENT_BEAT_ROUTE_12_SNORLAX
	ifequal DRAW, .DidntCatch
	disappear ROUTE12_KANTO_SNORLAX
	reloadmapafterbattle
	end

.DidntCatch:
	disappear ROUTE12_KANTO_SNORLAX
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

TrainerFisherKyle:
	trainer FISHER_GEN1, KYLE_GEN1, EVENT_BEAT_FISHER_KYLE_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Yeah! I got a"
	line "bite, here!"
	done

.BeatenText:
	text "Tch!"
	line "Just a small fry!"
	done

.AfterText:
	text "Hang on! My line's"
	line "snagged!"
	done

TrainerFisherMartin:
	trainer FISHER_GEN1, MARTIN_GEN1, EVENT_BEAT_FISHER_MARTIN_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Be patient!"
	line "Fishing is a"
	cont "waiting game!"
	done

.BeatenText:
	text "That"
	line "one got away!"
	done

.AfterText:
	text "With a better ROD,"
	line "I could catch"
	cont "better #MON!"
	done

TrainerJrTrainerMJustin:
	trainer JR_TRAINER_M_GEN1, JUSTIN_GEN1, EVENT_BEAT_JR_TRAINER_M_JUSTIN_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Have you found a"
	line "MOON STONE?"
	done

.BeatenText:
	text "Oww!"
	done

.AfterText:
	text "I could have made"
	line "my #MON evolve"
	cont "with MOON STONE!"
	done

TrainerRockerLuca:
	trainer ROCKER_GEN1, LUCA_GEN1, EVENT_BEAT_ROCKER_LUCA_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Electricity is my"
	line "specialty!"
	done

.BeatenText:
	text "Unplugged!"
	done

.AfterText:
	text "Water conducts"
	line "electricity, so"
	cont "you should zap"
	cont "sea #MON!"
	done

TrainerFisherStephen:
	trainer FISHER_GEN1, STEPHEN_GEN1, EVENT_BEAT_FISHER_STEPHEN_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "The FISHING FOOL"
	line "vs. #MON KID!"
	done

.BeatenText:
	text "Too"
	line "much!"
	done

.AfterText:
	text "You beat me at"
	line "#MON, but I'm"
	cont "good at fishing!"
	done

TrainerFisherBarney:
	trainer FISHER_GEN1, BARNEY_GEN1, EVENT_BEAT_FISHER_BARNEY_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I'd rather be"
	line "working!"
	done

.BeatenText:
	text "It's"
	line "not easy..."
	done

.AfterText:
	text "It's all right."
	line "Losing doesn't"
	cont "bug me any more."
	done

TrainerFisherRonald:
	trainer FISHER_GEN1, RONALD_GEN1, EVENT_BEAT_FISHER_RONALD_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "You never know"
	line "what you could"
	cont "catch!"
	done

.BeatenText:
	text "Lost"
	line "it!"
	done

.AfterText:
	text "I catch MAGIKARP"
	line "all the time, but"
	cont "they're so weak!"
	done

Route12_LavenderSignScript:
	jumptext .Text
.Text:
	text "ROUTE 12 "
	line "North to LAVENDER"
	done

Route12_FishingAreaSignScript:
	jumptext .Text
.Text:
	text "SPORT FISHING AREA"
	done

Route12_HiddenHyperPotion:
	hiddenitem HYPER_POTION, EVENT_ROUTE_12_HIDDEN_HYPER_POTION

Route12_TMPayDayScript:
IF DEF(_GOLD)
	itemball TM_DYNAMICPUNCH
ELIF DEF(_BLUE)
	itemball TM_PAY_DAY
ENDC

Route12_IronScript:
	itemball IRON

Route12_MapEvents:
	def_warp_events
	warp_event 10, 15, ROUTE_12_GATE_1F, 1
	warp_event 11, 15, ROUTE_12_GATE_1F, 2
	warp_event 10, 21, ROUTE_12_GATE_1F, 3
	warp_event 11, 77, ROUTE_12_SUPER_ROD_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 13, 13, BGEVENT_READ, Route12_LavenderSignScript
	bg_event 11, 63, BGEVENT_READ, Route12_FishingAreaSignScript
	bg_event  2, 63, BGEVENT_ITEM, Route12_HiddenHyperPotion

	def_object_events
	object_event 10, 62, SPRITE_KANTO_SNORLAX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route12_SnorlaxScript, EVENT_ROUTE_12_SNORLAX
	object_event 14, 31, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerFisherKyle, -1
	object_event  5, 39, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerFisherMartin, -1
	object_event 11, 92, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerJrTrainerMJustin, -1
	object_event 14, 76, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerRockerLuca, -1
	object_event 12, 40, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerFisherStephen, -1
	object_event  9, 52, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerFisherBarney, -1
	object_event  6, 87, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerFisherRonald, -1
	object_event 14, 35, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route12_TMPayDayScript, EVENT_ROUTE_12_TM_PAY_DAY
	object_event  5, 89, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route12_IronScript, EVENT_ROUTE_12_IRON
