	object_const_def
	const ROUTE4_COOLTRAINER_F1
	const ROUTE4_COOLTRAINER_F2
	const ROUTE4_POKE_BALL

Route4_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerLassCrissy:
	trainer LASS_GEN1, CRISSY_GEN1, EVENT_BEAT_LASS_CRISSY_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I came to get my"
	line "mushroom #MON!"
	done

.BeatenText:
	text "Oh! My cute"
	line "mushroom #MON!"
	done

.AfterText:
	text "There might not"
	line "be any more"
	cont "mushrooms here."

	para "I think I got"
	line "them all."
	done

Route4_LassScript:
	jumptextfaceplayer .Text
.Text:
	text "Ouch! I tripped"
	line "over a rocky"
	cont "#MON, GEODUDE!"
	done

Route4_PMCSignScript:
	jumptext .Text
.Text:
	text "Heal your #MON!"
	line "#MON CENTER"
	done

Route4_MtMoonSignScript:
	jumptext .Text
.Text:
	text "MT.MOON"
	line "Tunnel Entrance"
	done

Route4_CeruleanSignScript:

	jumptext .Text
.Text:
	text "ROUTE 4"
	line "MT.MOON -"
	cont "CERULEAN CITY"
	done

Route4_TMWhirlwindScript:
IF DEF(_GOLD)
	itemball TM_DYNAMICPUNCH
ELIF DEF(_BLUE)
	itemball TM_WHIRLWIND
ENDC

Route4_HiddenGreatBall:
	hiddenitem GREAT_BALL, EVENT_ROUTE_4_HIDDEN_GREAT_BALL

Route4_MapEvents:
	def_warp_events
	warp_event 11,  5, MT_MOON_POKECENTER, 1
	warp_event 18,  5, MT_MOON_1F, 1
	warp_event 24,  5, MT_MOON_B1F, 8

	def_coord_events

	def_bg_events
	bg_event 12,  5, BGEVENT_READ, Route4_PMCSignScript
	bg_event 17,  7, BGEVENT_READ, Route4_MtMoonSignScript
	bg_event 27,  7, BGEVENT_READ, Route4_CeruleanSignScript
	bg_event 40,  3, BGEVENT_ITEM, Route4_HiddenGreatBall

	def_object_events
	object_event  9,  8, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route4_LassScript, -1
	object_event 63,  3, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerLassCrissy, -1
	object_event 57,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route4_TMWhirlwindScript, EVENT_ROUTE_4_TM_WHIRLWIND
