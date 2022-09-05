	object_const_def
	const VIRIDIANFOREST_KANTO_YOUNGSTER1
	const VIRIDIANFOREST_KANTO_YOUNGSTER2
	const VIRIDIANFOREST_KANTO_YOUNGSTER3
	const VIRIDIANFOREST_KANTO_YOUNGSTER4
	const VIRIDIANFOREST_POKE_BALL1
	const VIRIDIANFOREST_POKE_BALL2
	const VIRIDIANFOREST_POKE_BALL3
	const VIRIDIANFOREST_KANTO_YOUNGSTER5

ViridianForest_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerBugCatcherRick1Script:
	trainer BUG_CATCHER_GEN1, RICK1_GEN1, EVENT_BEAT_BUG_CATCHER_RICK1_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Hey! You have"
	line "#MON! Come on!"
	cont "Let's battle'em!"
	done

.BeatenText:
	text "No! CATERPIE can't"
	line "cut it!"
	done

.AfterText:
	text "Ssh! You'll scare"
	line "the bugs away!"
	done

TrainerBugCatcherDougScript:
	trainer BUG_CATCHER_GEN1, DOUG_GEN1, EVENT_BEAT_BUG_CATCHER_DOUG_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Yo! You can't jam"
	line "out if you're a"
	cont "#MON trainer!"
	done

.BeatenText:
	text "Huh? I ran out of"
	line "#MON!"
	done

.AfterText:
	text "Darn! I'm going"
	line "to catch some"
	cont "stronger ones!"
	done

TrainerBugCatcherSammyScript:
	trainer BUG_CATCHER_GEN1, SAMMY_GEN1, EVENT_BEAT_BUG_CATCHER_SAMMY_GEN1, .SeenText, .BeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "Hey, wait up!"
	line "What's the hurry?"
	done

.BeatenText:
	text "I give! You're good"
	line "at this!"
	done

.AfterText:
	text "Sometimes, you"
	line "can find stuff on"
	cont "the ground!"

	para "I'm looking for"
	line "the stuff I"
	cont "dropped!"
	done

ViridianForest_AvoidGrassSignScript:
	jumptext .Text
.Text:
	text "TRAINER TIPS"

	para "If you want to"
	line "avoid battles,"
	cont "stay away from"
	cont "grassy areas!"
	done

ViridianForest_AntidoteSignScript:
	jumptext .Text
.Text:
	text "For poison, use"
	line "ANTIDOTE! Get it"
	cont "at #MON MARTs!"
	done

ViridianForest_OaksPCSignScript:
	jumptext .Text
.Text:
	text "TRAINER TIPS"

	para "Contact PROF.OAK"
	line "via PC to get"
	cont "your #DEX"
	cont "evaluated!"
	done

ViridianForest_NoStealingSignScript:
	jumptext .Text
.Text:
	text "TRAINER TIPS"

	para "No stealing of"
	line "#MON from"
	cont "other trainers!"
	cont "Catch only wild"
	cont "#MON!"
	done

ViridianForest_WeakenMonSignScript:
	jumptext .Text
.Text:
	text "TRAINER TIPS"

	para "Weaken #MON"
	line "before attempting"
	cont "capture!"

	para "When healthy,"
	line "they may escape!"
	done

ViridianForest_LeavingSignScript:
	jumptext .Text
.Text:
	text "LEAVING"
	line "VIRIDIAN FOREST"
	cont "PEWTER CITY AHEAD"
	done

ViridianForest_FriendsKidScript:
	jumptextfaceplayer .Text
.Text:
	text "I came here with"
	line "some friends!"

	para "They're out for"
	line "#MON fights!"
	done

ViridianForest_BallsKidScript:
	jumptextfaceplayer .Text
.Text:
	text "I ran out of #"
	line "BALLs to catch"
	cont "#MON with!"

	para "You should carry"
	line "extras!"
	done

ViridianForest_AntidoteScript:
	itemball ANTIDOTE

ViridianForest_PotionScript:
	itemball POTION

ViridianForest_PokeBallScript:
	itemball POKE_BALL

ViridianForest_HiddenPotion:
	hiddenitem POTION, EVENT_VIRIDIAN_FOREST_HIDDEN_POTION

ViridianForest_HiddenAntidote:
	hiddenitem ANTIDOTE, EVENT_VIRIDIAN_FOREST_HIDDEN_ANTIDOTE

ViridianForest_MapEvents:
	def_warp_events
	warp_event  1,  0, VIRIDIAN_FOREST_NORTH_GATE, 3
	warp_event  2,  0, VIRIDIAN_FOREST_NORTH_GATE, 4
	warp_event 15, 47, VIRIDIAN_FOREST_SOUTH_GATE, 2
	warp_event 16, 47, VIRIDIAN_FOREST_SOUTH_GATE, 2
	warp_event 17, 47, VIRIDIAN_FOREST_SOUTH_GATE, 2
	warp_event 18, 47, VIRIDIAN_FOREST_SOUTH_GATE, 2

	def_coord_events

	def_bg_events
	bg_event 24, 40, BGEVENT_READ, ViridianForest_AvoidGrassSignScript
	bg_event 16, 32, BGEVENT_READ, ViridianForest_AntidoteSignScript
	bg_event 26, 17, BGEVENT_READ, ViridianForest_OaksPCSignScript
	bg_event  4, 24, BGEVENT_READ, ViridianForest_NoStealingSignScript
	bg_event 18, 45, BGEVENT_READ, ViridianForest_WeakenMonSignScript
	bg_event  2,  1, BGEVENT_READ, ViridianForest_LeavingSignScript
	bg_event  1, 18, BGEVENT_ITEM, ViridianForest_HiddenPotion
	bg_event 16, 42, BGEVENT_ITEM, ViridianForest_HiddenAntidote

	def_object_events
	object_event 16, 43, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianForest_FriendsKidScript, -1
	object_event 30, 33, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerBugCatcherRick1Script, -1
	object_event 30, 19, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerBugCatcherDougScript, -1
	object_event  2, 18, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerBugCatcherSammyScript, -1
	object_event 25, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForest_AntidoteScript, EVENT_VIRIDIAN_FOREST_ANTIDOTE
	object_event 12, 29, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForest_PotionScript, EVENT_VIRIDIAN_FOREST_POTION
	object_event  1, 31, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForest_PokeBallScript, EVENT_VIRIDIAN_FOREST_POKE_BALL
	object_event 27, 40, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianForest_BallsKidScript, -1
