	object_const_def
	const VIRIDIANCITY_KANTO_YOUNGSTER1
	const VIRIDIANCITY_GAMBLER1
	const VIRIDIANCITY_KANTO_YOUNGSTER2
	const VIRIDIANCITY_GIRL
	const VIRIDIANCITY_GAMBLER_ASLEEP
	const VIRIDIANCITY_FISHER
	const VIRIDIANCITY_GAMBLER2

ViridianCity_MapScripts:
	def_scene_scripts
	scene_script .DummyScene ; SCENE_VIRIDIAN_CITY_OLD_MAN
	scene_script .DummyScene ; SCENE_VIRIDIAN_CITY_GYM_LOCK
	scene_script .DummyScene ; SCENE_VIRIDIAN_CITY_NOTHING

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.DummyScene:
	end

.FlyPoint:
	setflag ENGINE_FLYPOINT_VIRIDIAN
	endcallback

ViridianCity_OldManStopScript:
	opentext
	writetext ViridianCity_PrivateProperyText
	waitbutton
	closetext
	applymovement PLAYER, .StepDown
	end

.StepDown:
	step DOWN
	step_end

ViridianCity_PrivateProperyText:
	text "You can't go"
	line "through here!"

	para "This is private"
	line "property!"
	done

ViridianCity_GymLockedScript:
	readvar VAR_BADGES
	ifgreater 6, .SetGymOpen
	opentext
	writetext .Text
	waitbutton
	closetext
	applymovement PLAYER, .JumpDown
	end

.SetGymOpen:
	setscene SCENE_VIRIDIAN_CITY_NOTHING
	end

.Text:
	text "The GYM's doors"
	line "are locked..."
	done

.JumpDown:
	jump_step DOWN
	step_end

ViridianCity_CatchTutorialScript:
	faceplayer
	opentext
	writetext .HadMyCoffee
	yesorno
	iftrue .Refused
	writetext .ShowYouHow
	waitbutton
	closetext
	loadwildmon WEEDLE, 5
	catchtutorial BATTLETYPE_TUTORIAL
	opentext
	writetext .FirstWeaken
	waitbutton
	closetext
	end

.Refused:
	writetext .TimeIsMoney
	waitbutton
	closetext
	end

.HadMyCoffee:
	text "Ahh, I've had my"
	line "coffee now and I"
	cont "feel great!"

	para "Sure you can go"
	line "through!"

	para "Are you in a"
	line "hurry?"
	done

.TimeIsMoney:
	text "Time is money..."
	line "Go along then."
	done

.ShowYouHow:
	text "I see you're using"
	line "a #DEX."

	para "When you catch a"
	line "#MON, #DEX"
	cont "is automatically"
	cont "updated."

	para "What? Don't you"
	line "know how to catch"
	cont "#MON?"

	para "I'll show you"
	line "how to then."
	done

.FirstWeaken:
	text "First, you need"
	line "to weaken the"
	cont "target #MON."
	done

ViridianCity_DreamEaterScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM42
	iftrue .GotItem
	writetext .DozedOff
	verbosegiveitem TM_DREAM_EATER
	iffalse .BagFull
	setevent EVENT_GOT_TM42
.GotItem:
	writetext .Explain
	waitbutton
.BagFull:
	closetext
	end

.DozedOff:
	text "Yawn!"
	line "I must have dozed"
	cont "off in the sun."

	para "I had this dream"
	line "about a DROWZEE"
	cont "eating my dream."
	cont "What's this?"
	cont "Where did this TM"
	cont "come from?"

	para "This is spooky!"
	line "Here, you can"
	cont "have this TM."
	prompt

.Explain:
	text "TM42 contains"
	line "DREAM EATER..."
	cont "...Snore..."
	done

ViridianCity_PokeBallYoungsterScript:
	jumptextfaceplayer .Text
.Text:
	text "Those # BALLs"
	line "at your waist!"
	cont "You have #MON!"

	para "It's great that"
	line "you can carry and"
	cont "use #MON any"
	cont "time, anywhere!"
	done

ViridianCity_GamblerScript:
	faceplayer
	opentext
	readvar VAR_BADGES
	ifgreater 6, .Returned
	writetext .LeaderGone
	waitbutton
	closetext
	end

.Returned:
	writetext .ReturnedText
	waitbutton
	closetext
	end

.LeaderGone:
	text "This #MON GYM"
	line "is always closed."

	para "I wonder who the"
	line "LEADER is?"
	done

.ReturnedText:
	text "VIRIDIAN GYM's"
	line "LEADER returned!"
	done

ViridianCity_BugYoungsterScript:
	faceplayer
	opentext
	writetext .WantToKnow
	yesorno
	iffalse .Refused
	writetext .Explain
	waitbutton
	closetext
	end

.Refused:
	writetext .OkThen
	waitbutton
	closetext
	end

.WantToKnow:
	text "You want to know"
	line "about the 2 kinds"
	cont "of caterpillar"
	cont "#MON?"
	done

.OkThen:
	text "Oh, OK then!"
	done

.Explain:
	text "CATERPIE has no"
	line "poison, but"
	cont "WEEDLE does."

	para "Watch out for its"
	line "POISON STING!"
	done

ViridianCity_LassScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_POKEDEX
	iftrue .HaveDex
	writetext .DontBeMean
	waitbutton
	closetext
	end

.HaveDex:
	writetext .Shopping
	waitbutton
	closetext
	end

.DontBeMean:
	text "Oh Grandpa! Don't"
	line "be so mean!"
	cont "He hasn't had his"
	cont "coffee yet."
	done

.Shopping:
	text "When I go shop in"
	line "PEWTER CITY, I"
	cont "have to take the"
	cont "winding trail in"
	cont "VIRIDIAN FOREST."
	done

ViridianCity_OldManAsleepScript:
	jumptext ViridianCity_PrivateProperyText

ViridianCity_NameSignScript:
	jumptext .Text
.Text:
	text "VIRIDIAN CITY "
	line "The Eternally"
	cont "Green Paradise"
	done

ViridianCity_TrainerTips1Script:
	jumptext .Text
.Text:
	text "TRAINER TIPS"

	para "Catch #MON"
	line "and expand your"
	cont "collection!"

	para "The more you have,"
	line "the easier it is"
	cont "to fight!"
	done

ViridianCity_TrainerTips2Script:
	jumptext .Text
.Text:
	text "TRAINER TIPS"

	para "The battle moves"
	line "of #MON are"
	cont "limited by their"
	cont "POWER POINTs, PP."

	para "To replenish PP,"
	line "rest your tired"
	cont "#MON at a"
	cont "#MON CENTER!"
	done

ViridianCity_MartSignScript:
	jumptext .Text
.Text:
	text "All your item"
	line "needs fulfilled!"
	cont "#MON MART"
	done

ViridianCity_PMCSignScript:
	jumptext .Text
.Text:
	text "Heal your #MON!"
	line "#MON CENTER"
	done

ViridianCity_GymSignScript:
	jumptext .Text
.Text:
	text "VIRIDIAN CITY"
	line "#MON GYM"
	done

ViridianCity_HiddenPotion:
	hiddenitem POTION, EVENT_VIRIDIAN_CITY_HIDDEN_POTION

ViridianCity_MapEvents:
	def_warp_events
	warp_event 23, 25, VIRIDIAN_POKECENTER, 1
	warp_event 29, 19, VIRIDIAN_MART, 1
	warp_event 21, 15, VIRIDIAN_SCHOOL_HOUSE, 1
	warp_event 21,  9, VIRIDIAN_NICKNAME_HOUSE, 1
	warp_event 32,  7, VIRIDIAN_GYM, 1

	def_coord_events
	coord_event 32,  8, SCENE_VIRIDIAN_CITY_GYM_LOCK, ViridianCity_GymLockedScript
	coord_event 19,  9, SCENE_VIRIDIAN_CITY_OLD_MAN, ViridianCity_OldManStopScript

	def_bg_events
	bg_event 17, 17, BGEVENT_READ, ViridianCity_NameSignScript
	bg_event 19,  1, BGEVENT_READ, ViridianCity_TrainerTips1Script
	bg_event 21, 29, BGEVENT_READ, ViridianCity_TrainerTips2Script
	bg_event 30, 19, BGEVENT_READ, ViridianCity_MartSignScript
	bg_event 24, 25, BGEVENT_READ, ViridianCity_PMCSignScript
	bg_event 27,  7, BGEVENT_READ, ViridianCity_GymSignScript
	bg_event 14,  4, BGEVENT_ITEM, ViridianCity_HiddenPotion

	def_object_events
	object_event 13, 20, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianCity_PokeBallYoungsterScript, -1
	object_event 30,  8, SPRITE_GAMBLER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianCity_GamblerScript, -1
	object_event 30, 25, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianCity_BugYoungsterScript, -1
	object_event 17,  9, SPRITE_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianCity_LassScript, -1
	object_event 18,  9, SPRITE_GAMBLER_ASLEEP, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianCity_OldManAsleepScript, EVENT_VIRIDIAN_CITY_OLD_MAN_ASLEEP
	object_event  6, 23, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianCity_DreamEaterScript, -1
	object_event 17,  5, SPRITE_GAMBLER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianCity_CatchTutorialScript, EVENT_VIRIDIAN_CITY_OLD_MAN_AWAKE
