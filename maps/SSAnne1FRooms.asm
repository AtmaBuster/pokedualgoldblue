	object_const_def
	const SSANNE1FROOMS_GENTLEMAN1
	const SSANNE1FROOMS_GENTLEMAN2
	const SSANNE1FROOMS_KANTO_YOUNGSTER
	const SSANNE1FROOMS_COOLTRAINER_F
	const SSANNE1FROOMS_GIRL1
	const SSANNE1FROOMS_POKEFAN_M
	const SSANNE1FROOMS_LITTLE_GIRL
	const SSANNE1FROOMS_FAIRY
	const SSANNE1FROOMS_GIRL2
	const SSANNE1FROOMS_POKE_BALL
	const SSANNE1FROOMS_GENTLEMAN3

SSAnne1FRooms_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerGentlemanThomas:
	trainer GENTLEMAN_GEN1, THOMAS_GEN1, EVENT_BEAT_GENTLEMAN_THOMAS_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I travel alone"
	line "on my journeys!"

	para "My #MON are my"
	line "only friends!"
	done

.BeatenText:
	text "My, my"
	line "friends..."
	done

.AfterText:
	text "You should be"
	line "nice to friends!"
	done

TrainerGentlemanArthur:
	trainer GENTLEMAN_GEN1, ARTHUR_GEN1, EVENT_BEAT_GENTLEMAN_ARTHUR_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "You pup! How dare"
	line "you barge in!"
	done

.BeatenText:
	text "Humph!"
	line "You rude child!"
	done

.AfterText:
	text "I wish to be left"
	line "alone! Get out!"
	done

TrainerYoungsterTyler:
	trainer YOUNGSTER_GEN1, TYLER_GEN1, EVENT_BEAT_YOUNGSTER_TYLER_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I love #MON!"
	line "Do you?"
	done

.BeatenText:
	text "Wow! "
	line "You're great!"
	done

.AfterText:
	text "Let me be your"
	line "friend, OK?"

	para "Then we can trade"
	line "#MON!"
	done

TrainerLassAnn:
	trainer LASS_GEN1, ANN_GEN1, EVENT_BEAT_LASS_ANN_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I collected these"
	line "#MON from all"
	cont "around the world!"
	done

.BeatenText:
	text "Oh no!"
	line "I went around the"
	cont "world for these!"
	done

.AfterText:
	text "You hurt my poor"
	line "worldly #MON!"

	para "I demand that you"
	line "heal them at a"
	cont "#MON CENTER!"
	done

SSAnne1FRooms_PieGirlScript:
	jumptextfaceplayer .Text
.Text:
	text "Waiter, I would"
	line "like a cherry pie"
	cont "please!"
	done

SSAnne1FRooms_PokefanScript:
	jumptextfaceplayer .Text
.Text:
	text "A cruise is so"
	line "elegant yet cozy!"
	done

SSAnne1FRooms_WigglytuffGirlScript:
	jumptextfaceplayer .Text
.Text:
	text "I always travel"
	line "with WIGGLYTUFF!"
	done

SSAnne1FRooms_WigglytuffScript:
	faceplayer
	opentext
	writetext .Text
	cry WIGGLYTUFF
	waitsfx
	closetext
	end

.Text:
	text "WIGGLYTUFF: Puup"
	line "pupuu!"
	done

SSAnne1FRooms_CruisingGirlScript:
	jumptextfaceplayer .Text
.Text:
	text "We are cruising"
	line "around the world."
	done

SSAnne1FRooms_PoliceScript:
	jumptextfaceplayer .Text
.Text:
	text "Ssh! I'm a GLOBAL"
	line "POLICE agent!"

	para "I'm on the trail"
	line "of TEAM ROCKET!"
	done

SSAnne1FRooms_TMBodySlamScript:
IF DEF(_GOLD)
	itemball TM_DYNAMICPUNCH
ELIF DEF(_BLUE)
	itemball TM_BODY_SLAM
ENDC

SSAnne1FRooms_MapEvents:
	def_warp_events
	warp_event  0,  0, SS_ANNE_1F, 3
	warp_event 10,  0, SS_ANNE_1F, 4
	warp_event 20,  0, SS_ANNE_1F, 5
	warp_event  0, 10, SS_ANNE_1F, 6
	warp_event 10, 10, SS_ANNE_1F, 7
	warp_event 20, 10, SS_ANNE_1F, 8

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerGentlemanThomas, -1
	object_event 11,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGentlemanArthur, -1
	object_event 11, 14, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerYoungsterTyler, -1
	object_event 13, 11, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerLassAnn, -1
	object_event 22,  3, SPRITE_GIRL, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnne1FRooms_PieGirlScript, -1
	object_event  0, 14, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnne1FRooms_PokefanScript, -1
	object_event  2, 11, SPRITE_LITTLE_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnne1FRooms_WigglytuffGirlScript, -1
	object_event  3, 11, SPRITE_FAIRY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnne1FRooms_WigglytuffScript, -1
	object_event 10, 13, SPRITE_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnne1FRooms_CruisingGirlScript, -1
	object_event 12, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SSAnne1FRooms_TMBodySlamScript, EVENT_SS_ANNE_1F_ROOMS_TM_BODY_SLAM
	object_event 21, 13, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnne1FRooms_PoliceScript, -1
