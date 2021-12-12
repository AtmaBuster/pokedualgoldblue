	object_const_def
	const ROUTE9_COOLTRAINER_F1
	const ROUTE9_COOLTRAINER_M1
	const ROUTE9_COOLTRAINER_M2
	const ROUTE9_COOLTRAINER_F2
	const ROUTE9_HIKER1
	const ROUTE9_HIKER2
	const ROUTE9_KANTO_YOUNGSTER1
	const ROUTE9_HIKER3
	const ROUTE9_KANTO_YOUNGSTER2
	const ROUTE9_POKE_BALL

Route9_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerJrTrainerFAlicia:
	trainer JR_TRAINER_F_GEN1, ALICIA_GEN1, EVENT_BEAT_JR_TRAINER_F_ALICIA_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "You have #MON"
	line "with you!"
	cont "You're mine!"
	done

.BeatenText:
	text "You"
	line "deceived me!"
	done

.AfterText:
	text "You need light to"
	line "get through that"
	cont "dark tunnel ahead."
	done

TrainerJrTrainerMChris:
	trainer JR_TRAINER_M_GEN1, CHRIS_GEN1, EVENT_BEAT_JR_TRAINER_M_CHRIS_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Who's that walking"
	line "with those good"
	cont "looking #MON?"
	done

.BeatenText:
	text "Out"
	line "like a light!"
	done

.AfterText:
	text "Keep walking!"
	done

TrainerJrTrainerMDrew:
	trainer JR_TRAINER_M_GEN1, DREW_GEN1, EVENT_BEAT_JR_TRAINER_M_DREW_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I'm taking ROCK"
	line "TUNNEL to go to"
	cont "LAVENDER..."
	done

.BeatenText:
	text "Can't"
	line "measure up!"
	done

.AfterText:
	text "Are you off to"
	line "ROCK TUNNEL too?"
	done

TrainerJrTrainerFCaity:
	trainer JR_TRAINER_F_GEN1, CAITY_GEN1, EVENT_BEAT_JR_TRAINER_F_CAITY_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Don't you dare"
	line "condescend me!"
	done

.BeatenText:
	text "No!"
	line "You're too much!"
	done

.AfterText:
	text "You're obviously"
	line "talented! Good"
	cont "luck to you!"
	done

TrainerHikerJeremy:
	trainer HIKER_GEN1, JEREMY_GEN1, EVENT_BEAT_HIKER_JEREMY_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Bwahaha!"
	line "Great! I was"
	cont "bored, eh!"
	done

.BeatenText:
	text "Keep it"
	line "coming, eh!"

	para "Oh wait. I'm out"
	line "of #MON!"
	done

.AfterText:
	text "You sure had guts"
	line "standing up to me"
	cont "there, eh?"
	done

TrainerHikerSidney:
	trainer HIKER_GEN1, SIDNEY_GEN1, EVENT_BEAT_HIKER_SIDNEY_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Hahaha!"
	line "Aren't you a"
	cont "little toughie!"
	done

.BeatenText:
	text "What's"
	line "that?"
	done

.AfterText:
	text "Hahaha! Kids"
	line "should be tough!"
	done

TrainerBugCatcherBrent:
	trainer BUG_CATCHER_GEN1, BRENT_GEN1, EVENT_BEAT_BUG_CATCHER_BRENT_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I got up early"
	line "every day to"
	cont "raise my #MON"
	cont "from cocoons!"
	done

.BeatenText:
	text "WHAT?"

	para "What a total"
	line "waste of time!"
	done

.AfterText:
	text "I have to collect"
	line "more than bugs to"
	cont "get stronger..."
	done

TrainerHikerAlan:
	trainer HIKER_GEN1, ALAN_GEN1, EVENT_BEAT_HIKER_ALAN_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Hahahaha!"
	line "Come on, dude!"
	done

.BeatenText:
	text "Hahahaha!"
	line "You beat me fair!"
	done

.AfterText:
	text "Hahahaha!"
	line "Us hearty guys"
	cont "always laugh!"
	done

TrainerBugCatcherSid:
	trainer BUG_CATCHER_GEN1, SID_GEN1, EVENT_BEAT_BUG_CATCHER_SID_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Go, my super bug"
	line "#MON!"
	done

.BeatenText:
	text "My"
	line "bugs..."
	done

.AfterText:
	text "If you don't like"
	line "bug #MON, you"
	cont "bug me!"
	done

Route9_TMTeleportScript:
IF DEF(_GOLD)
	itemball TM_DYNAMICPUNCH
ELIF DEF(_BLUE)
	itemball TM_TELEPORT
ENDC

Route9_SignScript:
	text "ROUTE 9"
	line "CERULEAN CITY-"
	cont "ROCK TUNNEL"
	done

Route9_HiddenEther:
	hiddenitem ETHER, EVENT_ROUTE_9_HIDDEN_ETHER

Route9_MapEvents:
	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 25,  7, BGEVENT_READ, Route9_SignScript
	bg_event 14,  7, BGEVENT_ITEM, Route9_HiddenEther

	def_object_events
	object_event 13, 10, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerJrTrainerFAlicia, -1
	object_event 24,  7, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerJrTrainerMChris, -1
	object_event 31,  7, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerJrTrainerMDrew, -1
	object_event 48,  8, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerJrTrainerFCaity, -1
	object_event 16, 15, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerHikerJeremy, -1
	object_event 43,  3, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerHikerSidney, -1
	object_event 22,  2, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerBugCatcherBrent, -1
	object_event 45, 15, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerHikerAlan, -1
	object_event 40,  8, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerBugCatcherSid, -1
	object_event 10, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route9_TMTeleportScript, EVENT_ROUTE_9_TM_TELEPORT
