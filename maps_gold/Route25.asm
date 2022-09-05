	object_const_def
	const ROUTE25_KANTO_YOUNGSTER1
	const ROUTE25_KANTO_YOUNGSTER2
	const ROUTE25_COOLTRAINER_M
	const ROUTE25_COOLTRAINER_F1
	const ROUTE25_KANTO_YOUNGSTER3
	const ROUTE25_COOLTRAINER_F2
	const ROUTE25_HIKER1
	const ROUTE25_HIKER2
	const ROUTE25_HIKER3
	const ROUTE25_POKE_BALL

Route25_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .CheckBillEvent

.CheckBillEvent:
	checkevent EVENT_HELPED_BILL
	iftrue .TicketCheck
	clearevent EVENT_BILLS_HOUSE_MONSTER
	clearevent EVENT_BILL_ENTERED_TELEPORTER
	endcallback

.TicketCheck:
	checkevent EVENT_GOT_SS_TICKET
	iffalse .End
	setevent EVENT_ROUTE_24_ROCKET
	setevent EVENT_BILLS_HOUSE_BILL1
	clearevent EVENT_BILLS_HOUSE_BILL2
	setevent EVENT_LEFT_BILLS_HOUSE_AFTER_HELPING
.End:
	endcallback

TrainerYoungsterCalvin:
	trainer YOUNGSTER_GEN1, CALVIN_GEN1, EVENT_BEAT_YOUNGSTER_CALVIN_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Local trainers"
	line "come here to"
	cont "practice!"
	done

.BeatenText:
	text "You're decent."
	done

.AfterText:
	text "All #MON have"
	line "weaknesses. It's"
	cont "best to raise"
	cont "different kinds."
	done

TrainerYoungsterDan:
	trainer YOUNGSTER_GEN1, DAN_GEN1, EVENT_BEAT_YOUNGSTER_DAN_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Dad took me to a"
	line "great party on"
	cont "S.S.ANNE at"
	cont "VERMILION CITY!"
	done

.BeatenText:
	text "I'm not mad!"
	done

.AfterText:
	text "On S.S.ANNE, I"
	line "saw trainers from"
	cont "around the world."
	done

TrainerJrTrainerMFlint:
	trainer JR_TRAINER_M_GEN1, FLINT_GEN1, EVENT_BEAT_JR_TRAINER_M_FLINT_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I'm a cool guy."
	line "I've got a girl"
	cont "friend!"
	done

.BeatenText:
	text "Aww, darn..."
	done

.AfterText:
	text "Oh well. My girl"
	line "will cheer me up."
	done

TrainerLassKelsey:
	trainer LASS_GEN1, KELSEY_GEN1, EVENT_BEAT_LASS_KELSEY_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Hi! My boy"
	line "friend is cool!"
	done

.BeatenText:
	text "I was in bad"
	line "condition!"
	done

.AfterText:
	text "I wish my guy was"
	line "as good as you!"
	done

TrainerYoungsterChad:
	trainer YOUNGSTER_GEN1, CHAD_GEN1, EVENT_BEAT_YOUNGSTER_CHAD_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I knew I had to"
	line "fight you!"
	done

.BeatenText:
	text "I knew I'd lose"
	line "too!"
	done

.AfterText:
	text "If your #MON"
	line "gets confused or"
	cont "falls asleep,"
	cont "switch it!"
	done

TrainerLassHaley:
	trainer LASS_GEN1, HALEY_GEN1, EVENT_BEAT_LASS_HALEY_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "My friend has a"
	line "cute #MON."
	cont "I'm so jealous!"
	done

.BeatenText:
	text "I'm not so"
	line "jealous!"
	done

.AfterText:
	text "You came from MT."
	line "MOON? May I have"
	cont "a CLEFAIRY?"
	done

TrainerHikerFranklin:
	trainer HIKER_GEN1, FRANKLIN_GEN1, EVENT_BEAT_HIKER_FRANKLIN_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I just got down"
	line "from MT.MOON,"
	cont "but I'm ready!"
	done

.BeatenText:
	text "You worked hard!"
	done

.AfterText:
	text "Drat!"
	line "A ZUBAT bit me"
	cont "back in there."
	done

TrainerHikerNob:
	trainer HIKER_GEN1, NOB_GEN1, EVENT_BEAT_HIKER_NOB_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I'm off to see a"
	line "#MON collector"
	cont "at the cape!"
	done

.BeatenText:
	text "You got me."
	done

.AfterText:
	text "The collector has"
	line "many rare kinds"
	cont "of #MON."
	done

TrainerHikerWayne:
	trainer HIKER_GEN1, WAYNE_GEN1, EVENT_BEAT_HIKER_WAYNE_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "You're going to"
	line "see BILL? First,"
	cont "let's fight!"
	done

.BeatenText:
	text "You're something."
	done

.AfterText:
	text "The trail below"
	line "is a shortcut to"
	cont "CERULEAN CITY."
	done

Route25_BillsHouseSign:
	jumptext .Text
.Text:
	text "SEA COTTAGE"
	line "BILL lives here!"
	done

Route25_HiddenEther:
	hiddenitem ETHER, EVENT_ROUTE_25_HIDDEN_ETHER

Route25_HiddenElixer:
	hiddenitem ELIXER, EVENT_ROUTE_25_HIDDEN_ELIXER

Route25_TMSeismicTossScript:
IF DEF(_GOLD)
	itemball TM_DYNAMICPUNCH
ELIF DEF(_BLUE)
	itemball TM_SEISMIC_TOSS
ENDC

Route25_MapEvents:
	def_warp_events
	warp_event 45,  3, BILLS_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 43,  3, BGEVENT_READ, Route25_BillsHouseSign
	bg_event 38,  3, BGEVENT_ITEM, Route25_HiddenEther
	bg_event 10,  1, BGEVENT_ITEM, Route25_HiddenElixer

	def_object_events
	object_event 14,  2, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerYoungsterCalvin, -1
	object_event 18,  5, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerYoungsterDan, -1
	object_event 24,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerJrTrainerMFlint, -1
	object_event 18,  8, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerLassKelsey, -1
	object_event 32,  3, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerYoungsterChad, -1
	object_event 37,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerLassHaley, -1
	object_event  8,  4, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerHikerFranklin, -1
	object_event 23,  9, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerHikerNob, -1
	object_event 13,  7, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerHikerWayne, -1
	object_event 22,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route25_TMSeismicTossScript, EVENT_ROUTE_25_TM_SEISMIC_TOSS
