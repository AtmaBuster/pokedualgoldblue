	object_const_def
	const ROUTE15_COOLTRAINER_F1
	const ROUTE15_COOLTRAINER_F2
	const ROUTE15_COOLTRAINER_M1
	const ROUTE15_COOLTRAINER_M2
	const ROUTE15_KANTO_BEAUTY1
	const ROUTE15_KANTO_BEAUTY2
	const ROUTE15_BIKER1
	const ROUTE15_BIKER2
	const ROUTE15_COOLTRAINER_F3
	const ROUTE15_COOLTRAINER_F4
	const ROUTE15_POKE_BALL

Route15_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerJrTrainerFKindra:
	trainer JR_TRAINER_F_GEN1, KINDRA_GEN1, EVENT_BEAT_JR_TRAINER_F_KINDRA_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Let me try out the"
	line "#MON I just"
	cont "got in a trade!"
	done

.BeatenText:
	text "Not"
	line "good enough!"
	done

.AfterText:
	text "You can't change"
	line "the nickname of"
	cont "any #MON you"
	cont "get in a trade."

	para "Only the Original"
	line "Trainer can."
	done

TrainerJrTrainerFBecky:
	trainer JR_TRAINER_F_GEN1, BECKY_GEN1, EVENT_BEAT_JR_TRAINER_F_BECKY_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "You look gentle,"
	line "so I think I can"
	cont "beat you!"
	done

.BeatenText:
	text "No,"
	line "wrong!"
	done

.AfterText:
	text "I'm afraid of"
	line "BIKERs, they look"
	cont "so ugly and mean!"
	done

TrainerBirdKeeperChip:
	trainer BIRD_KEEPER_GEN1, CHIP_GEN1, EVENT_BEAT_BIRD_KEEPER_CHIP_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "When I whistle, I"
	line "can summon bird"
	cont "#MON!"
	done

.BeatenText:
	text "Ow!"
	line "That's tragic!"
	done

.AfterText:
	text "Maybe I'm not cut"
	line "out for battles."
	done

TrainerBirdKeeperEdwin:
	trainer BIRD_KEEPER_GEN1, EDWIN_GEN1, EVENT_BEAT_BIRD_KEEPER_EDWIN_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Hmm? My birds are"
	line "shivering! You're"
	cont "good, aren't you?"
	done

.BeatenText:
	text "Just"
	line "as I thought!"
	done

.AfterText:
	text "Did you know moves"
	line "like EARTHQUAKE"
	cont "don't have any"
	cont "effect on birds?"
	done

TrainerBeautyGrace:
	trainer BEAUTY_GEN1, GRACE_GEN1, EVENT_BEAT_BEAUTY_GRACE_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Oh, you're a"
	line "little cutie!"
	done

.BeatenText:
	text "You looked"
	line "so cute too!"
	done

.AfterText:
	text "I forgive you!"
	line "I can take it!"
	done

TrainerBeautyOlivia:
	trainer BEAUTY_GEN1, OLIVIA_GEN1, EVENT_BEAT_BEAUTY_OLIVIA_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I raise #MON"
	line "because I live"
	cont "alone!"
	done

.BeatenText:
	text "I didn't"
	line "ask for this!"
	done

.AfterText:
	text "I just like going"
	line "home to be with"
	cont "my #MON!"
	done

TrainerBikerErnest:
	trainer BIKER_GEN1, ERNEST_GEN1, EVENT_BEAT_BIKER_ERNEST_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Hey kid! C'mon!"
	line "I just got these!"
	done

.BeatenText:
	text "Why"
	line "not?"
	done

.AfterText:
	text "You only live"
	line "once, so I live"
	cont "as an outlaw!"
	cont "TEAM ROCKET RULES!"
	done

TrainerBikerAlex:
	trainer BIKER_GEN1, ALEX_GEN1, EVENT_BEAT_BIKER_ALEX_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Fork over all your"
	line "cash when you"
	cont "lose to me, kid!"
	done

.BeatenText:
	text "That"
	line "can't be true!"
	done

.AfterText:
	text "I was just joking"
	line "about the money!"
	done

TrainerJrTrainerFCelia:
	trainer JR_TRAINER_F_GEN1, CELIA_GEN1, EVENT_BEAT_JR_TRAINER_F_CELIA_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "What's cool?"
	line "Trading #MON!"
	done

.BeatenText:
	text "I"
	line "said trade!"
	done

.AfterText:
	text "I trade #MON"
	line "with my friends!"
	done

TrainerJrTrainerFYasmin:
	trainer JR_TRAINER_F_GEN1, YASMIN_GEN1, EVENT_BEAT_JR_TRAINER_F_YASMIN_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Want to play with"
	line "my #MON?"
	done

.BeatenText:
	text "I was"
	line "too impatient!"
	done

.AfterText:
	text "I'll go train with"
	line "weaker people.@"
	text_end

Route15_SignScript:
	jumptext .Text
.Text:
	text "ROUTE 15"
	line "West to FUCHSIA"
	cont "CITY"
	done


Route15_TMRageScript:
IF DEF(_GOLD)
	itemball TM_DYNAMICPUNCH
ELIF DEF(_BLUE)
	itemball TM_RAGE
ENDC

Route15_MapEvents:
	def_warp_events
	warp_event  7,  8, ROUTE_15_GATE_1F, 1
	warp_event  7,  9, ROUTE_15_GATE_1F, 2
	warp_event 14,  8, ROUTE_15_GATE_1F, 3
	warp_event 14,  9, ROUTE_15_GATE_1F, 4

	def_coord_events

	def_bg_events
	bg_event 39,  9, BGEVENT_READ, Route15_SignScript

	def_object_events
	object_event 41, 11, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerJrTrainerFKindra, -1
	object_event 53, 10, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerJrTrainerFBecky, -1
	object_event 31, 13, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperChip, -1
	object_event 35, 13, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperEdwin, -1
	object_event 53, 11, SPRITE_KANTO_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerBeautyGrace, -1
	object_event 41, 10, SPRITE_KANTO_BEAUTY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerBeautyOlivia, -1
	object_event 48, 10, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerBikerErnest, -1
	object_event 46, 10, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerBikerAlex, -1
	object_event 37,  5, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerJrTrainerFCelia, -1
	object_event 18, 13, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerJrTrainerFYasmin, -1
	object_event 18,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route15_TMRageScript, -1
