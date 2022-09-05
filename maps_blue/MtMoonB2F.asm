	object_const_def
	const MTMOONB2F_KANTO_SUPER_NERD
	const MTMOONB2F_KANTO_ROCKET1
	const MTMOONB2F_KANTO_ROCKET2
	const MTMOONB2F_KANTO_ROCKET3
	const MTMOONB2F_KANTO_ROCKET4
	const MTMOONB2F_FOSSIL1
	const MTMOONB2F_FOSSIL2
	const MTMOONB2F_POKE_BALL1
	const MTMOONB2F_POKE_BALL2

MtMoonB2F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerGrunt1:
	trainer ROCKET_GEN1, GRUNT1_GEN1, EVENT_BEAT_ROCKET_GRUNT1_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "TEAM ROCKET will"
	line "find the fossils,"
	cont "revive and sell"
	cont "them for cash!"
	done

.BeatenText:
	text "Urgh! Now I'm mad!"
	done

.AfterText:
	text "You made me mad!"
	line "TEAM ROCKET will"
	cont "blacklist you!"
	done

TrainerGrunt2:
	trainer ROCKET_GEN1, GRUNT2_GEN1, EVENT_BEAT_ROCKET_GRUNT2_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "We, TEAM ROCKET,"
	line "are #MON"
	cont "gangsters!"
	done

.BeatenText:
	text "I blew it!"
	done

.AfterText:
	text "Darn it all! My"
	line "associates won't"
	cont "stand for this!"
	done

TrainerGrunt3:
	trainer ROCKET_GEN1, GRUNT3_GEN1, EVENT_BEAT_ROCKET_GRUNT3_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "We're pulling a"
	line "big job here!"
	cont "Get lost, kid!"
	done

.BeatenText:
	text "So, you are good."
	done

.AfterText:
	text "If you find a"
	line "fossil, give it"
	cont "to me and scram!"
	done
	
TrainerGrunt4:
	trainer ROCKET_GEN1, GRUNT4_GEN1, EVENT_BEAT_ROCKET_GRUNT4_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Little kids"
	line "should leave"
	cont "grown-ups alone!"
	done

.BeatenText:
	text "I'm steamed!"
	done

.AfterText:
	text "#MON lived"
	line "here long before"
	cont "people came."
	done

TrainerSuperNerdMiguel:
	trainer SUPER_NERD_GEN1, MIGUEL_GEN1, EVENT_BEAT_SUPER_NERD_MIGUEL_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	checkevent EVENT_GOT_FOSSIL
	iftrue .GotFossil
	writetext .EachTakeOneText
	waitbutton
	closetext
	end

.GotFossil:
	writetext .CinnabarIslandText
	waitbutton
	closetext
	end

.SeenText:
	text "Hey, stop!"

	para "I found these"
	line "fossils! They're"
	cont "both mine!"
	done

.BeatenText:
	text "OK! I'll share!"
	done

.EachTakeOneText:
	text "We'll each take"
	line "one!"
	cont "No being greedy!"
	done

.CinnabarIslandText:
	text "Far away, on"
	line "CINNABAR ISLAND,"
	cont "there's a #MON"
	cont "LAB."

	para "They do research"
	line "on regenerating"
	cont "fossils."
	done

MtMoonB2F_DomeFossilScript:
	opentext
	writetext .WantItText
	yesorno
	iftrue .GetFossil
	closetext
	end

.GetFossil:
	verbosegiveitem DOME_FOSSIL
	setevent EVENT_GOT_DOME_FOSSIL
	disappear MTMOONB2F_FOSSIL1
	closetext
	applymovement MTMOONB2F_KANTO_SUPER_NERD, .GoToFossilMovement
	opentext
	writetext MtMoonB2F_TakeThisOneText
	playsound SFX_KEY_ITEM
	waitsfx
	closetext
	disappear MTMOONB2F_FOSSIL2
	end

.WantItText:
	text "You want the"
	line "DOME FOSSIL?"
	done

.GoToFossilMovement:
	step RIGHT
	step UP
	step_end

MtMoonB2F_HelixFossilScript:
	opentext
	writetext .WantItText
	yesorno
	iftrue .GetFossil
	closetext
	end

.GetFossil:
	verbosegiveitem HELIX_FOSSIL
	setevent EVENT_GOT_HELIX_FOSSIL
	disappear MTMOONB2F_FOSSIL2
	closetext
	applymovement MTMOONB2F_KANTO_SUPER_NERD, .GoToFossilMovement
	opentext
	writetext MtMoonB2F_TakeThisOneText
	playsound SFX_KEY_ITEM
	waitsfx
	closetext
	disappear MTMOONB2F_FOSSIL1
	end

.WantItText:
	text "You want the"
	line "HELIX FOSSIL?"
	done

.GoToFossilMovement:
	step UP
	step_end


MtMoonB2F_TakeThisOneText:
	text "All right. Then"
	line "this is mine!"
	done

MtMoonB2F_HPUpScript:
	itemball HP_UP

MtMoonB2F_TMMegaPunchScript:
IF DEF(_GOLD)
	itemball TM_DYNAMICPUNCH
ELIF DEF(_BLUE)
	itemball TM_MEGA_PUNCH
ENDC

MtMoonB2F_HiddenMoonStone:
	hiddenitem MOON_STONE, EVENT_MT_MOON_B2F_HIDDEN_MOON_STONE

MtMoonB2F_HiddenEther:
	hiddenitem ETHER, EVENT_MT_MOON_B2F_HIDDEN_ETHER

MtMoonB2F_MapEvents:
	def_warp_events
	warp_event 25,  9, MT_MOON_B1F, 2
	warp_event 21, 17, MT_MOON_B1F, 5
	warp_event 15, 27, MT_MOON_B1F, 6
	warp_event  5,  7, MT_MOON_B1F, 7

	def_coord_events

	def_bg_events
	bg_event 18, 12, BGEVENT_ITEM, MtMoonB2F_HiddenMoonStone
	bg_event 33,  9, BGEVENT_ITEM, MtMoonB2F_HiddenEther

	def_object_events
	object_event 12,  8, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerSuperNerdMiguel, -1
	object_event 11, 16, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerGrunt1, -1
	object_event 15, 22, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerGrunt2, -1
	object_event 29, 11, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerGrunt3, -1
	object_event 29, 17, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerGrunt4, -1
	object_event 12,  6, SPRITE_FOSSIL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtMoonB2F_DomeFossilScript, EVENT_MT_MOON_B2F_DOME_FOSSIL
	object_event 13,  6, SPRITE_FOSSIL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtMoonB2F_HelixFossilScript, EVENT_MT_MOON_B2F_HELIX_FOSSIL
	object_event 25, 21, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MtMoonB2F_HPUpScript, EVENT_MT_MOON_B2F_HP_UP
	object_event 29,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MtMoonB2F_TMMegaPunchScript, EVENT_MT_MOON_B2F_TM_MEGA_PUNCH
