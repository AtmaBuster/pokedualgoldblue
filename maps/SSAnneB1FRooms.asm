	object_const_def
	const SSANNEB1FROOMS_KANTO_SAILOR1
	const SSANNEB1FROOMS_KANTO_SAILOR2
	const SSANNEB1FROOMS_KANTO_SAILOR3
	const SSANNEB1FROOMS_KANTO_SAILOR4
	const SSANNEB1FROOMS_KANTO_SAILOR5
	const SSANNEB1FROOMS_FISHER
	const SSANNEB1FROOMS_KANTO_SUPER_NERD
	const SSANNEB1FROOMS_MONSTER
	const SSANNEB1FROOMS_POKE_BALL1
	const SSANNEB1FROOMS_POKE_BALL2
	const SSANNEB1FROOMS_POKE_BALL3

SSAnneB1FRooms_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerSailorLeonard:
	trainer SAILOR_GEN1, LEONARD_GEN1, EVENT_BEAT_SAILOR_LEONARD_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "You know what they"
	line "say about sailors"
	cont "and fighting!"
	done

.BeatenText:
	text "Right!"
	line "Good fight, mate!"
	done

.AfterText:
	text "Haha! Want to be"
	line "a sailor, mate?"
	done

TrainerSailorDuncan:
	trainer SAILOR_GEN1, DUNCAN_GEN1, EVENT_BEAT_SAILOR_DUNCAN_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "My sailor's pride"
	line "is at stake!"
	done

.BeatenText:
	text "Your"
	line "spirit sank me!"
	done

.AfterText:
	text "Did you see the"
	line "FISHING GURU in"
	cont "VERMILION CITY?"
	done

TrainerSailorHueyGen1:
	trainer SAILOR_GEN1, HUEY_GEN1, EVENT_BEAT_SAILOR_HUEY_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Us sailors have"
	line "#MON too!"
	done

.BeatenText:
	text "OK, "
	line "you're not bad."
	done

.AfterText:
	text "We caught all our"
	line "#MON while"
	cont "out at sea!"
	done

TrainerSailorDylan:
	trainer SAILOR_GEN1, DYLAN_GEN1, EVENT_BEAT_SAILOR_DYLAN_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I like feisty"
	line "kids like you!@"
	text_end

.BeatenText:
	text "Argh!"
	line "Lost it!"
	done

.AfterText:
	text "Sea #MON live"
	line "in deep water."
	cont "You'll need a ROD!"
	done

TrainerSailorPhillip:
	trainer SAILOR_GEN1, PHILLIP_GEN1, EVENT_BEAT_SAILOR_PHILLIP_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Matey, you're"
	line "walking the plank"
	cont "if you lose!"
	done

.BeatenText:
	text "Argh!"
	line "Beaten by a kid!"
	done

.AfterText:
	text "Jellyfish some-"
	line "times drift into"
	cont "the ship."
	done

TrainerFisherElliot:
	trainer FISHER_GEN1, ELLIOT_GEN1, EVENT_BEAT_FISHER_ELLIOT_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Hello stranger!"
	line "Stop and chat!"

	para "All my #MON"
	line "are from the sea!"
	done

.BeatenText:
	text "Darn!"
	line "I let that one"
	cont "get away!"
	done

.AfterText:
	text "I was going to"
	line "make you my"
	cont "assistant too!"
	done

SSAnneB1FRooms_SuperNerdScript:
	jumptextfaceplayer .Text
.Text:
	text "My buddy, MACHOKE,"
	line "is super strong!"

	para "He has enough"
	line "STRENGTH to move"
	cont "big rocks!"
	done

SSAnneB1FRooms_MachokeScript:
	faceplayer
	opentext
	writetext .Text
	cry MACHOKE
	waitsfx
	closetext
	end

.Text:
	text "MACHOKE: Gwoh!"
	line "Goggoh!"
	done

SSAnneB1FRooms_EtherScript:
	itemball ETHER

SSAnneB1FRooms_TMRestScript:
	itemball TM_REST

SSAnneB1FRooms_MaxPotionScript:
	itemball MAX_POTION

SSAnneB1FRooms_HiddenHyperPotion:
	hiddenitem HYPER_POTION, EVENT_SS_ANNE_B1F_ROOMS_HIDDEN_HYPER_POTION

SSAnneB1FRooms_MapEvents:
	def_warp_events
	warp_event  2,  5, SS_ANNE_B1F, 5
	warp_event  3,  5, SS_ANNE_B1F, 5
	warp_event 12,  5, SS_ANNE_B1F, 4
	warp_event 13,  5, SS_ANNE_B1F, 4
	warp_event 22,  5, SS_ANNE_B1F, 3
	warp_event 23,  5, SS_ANNE_B1F, 3
	warp_event  2, 15, SS_ANNE_B1F, 2
	warp_event  3, 15, SS_ANNE_B1F, 2
	warp_event 12, 15, SS_ANNE_B1F, 1
	warp_event 13, 15, SS_ANNE_B1F, 1

	def_coord_events

	def_bg_events
	bg_event  3,  1, BGEVENT_ITEM, SSAnneB1FRooms_HiddenHyperPotion

	def_object_events
	object_event  0, 13, SPRITE_KANTO_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerSailorLeonard, -1
	object_event  2, 11, SPRITE_KANTO_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerSailorDuncan, -1
	object_event 12,  3, SPRITE_KANTO_SAILOR, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerSailorHueyGen1, -1
	object_event 22,  2, SPRITE_KANTO_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerSailorDylan, -1
	object_event  0,  2, SPRITE_KANTO_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerSailorPhillip, -1
	object_event  0,  4, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerFisherElliot, -1
	object_event 10, 13, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneB1FRooms_SuperNerdScript, -1
	object_event 11, 12, SPRITE_MONSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneB1FRooms_MachokeScript, -1
	object_event 20,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SSAnneB1FRooms_EtherScript, EVENT_SS_ANNE_B1F_ROOMS_ETHER
	object_event 10,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SSAnneB1FRooms_TMRestScript, EVENT_SS_ANNE_B1F_ROOMS_TM_REST
	object_event 12, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SSAnneB1FRooms_MaxPotionScript, EVENT_SS_ANNE_B1F_ROOMS_MAX_POTION
