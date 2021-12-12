	object_const_def
	const CERULEANCITY_KANTO_BLUE
	const CERULEANCITY_KANTO_ROCKET
	const CERULEANCITY_COOLTRAINER_M
	const CERULEANCITY_KANTO_SUPER_NERD1
	const CERULEANCITY_KANTO_SUPER_NERD2
	const CERULEANCITY_GUARD1
	const CERULEANCITY_COOLTRAINER_F1
	const CERULEANCITY_MONSTER
	const CERULEANCITY_COOLTRAINER_F2
	const CERULEANCITY_KANTO_SUPER_NERD3
	const CERULEANCITY_GUARD2

CeruleanCity_MapScripts:
	def_scene_scripts
	scene_script .Dummy ; SCENE_CERULEAN_CITY_RIVAL
	scene_script .Dummy ; SCENE_CERULEAN_CITY_ROCKET
	scene_script .Dummy ; SCENE_CERULEAN_CITY_DONE

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_CERULEAN
	endcallback

.Dummy:
	end

CeruleanCity_RivalScriptL:
	scall CeruleanCity_RivalScript
	applymovement CERULEANCITY_KANTO_BLUE, .Leave
	disappear CERULEANCITY_KANTO_BLUE
	playmusic MUSIC_RBY_CITIES2
	end

.Leave:
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

CeruleanCity_RivalScriptR:
	moveobject CERULEANCITY_KANTO_BLUE, 21, 1
	scall CeruleanCity_RivalScript
	applymovement CERULEANCITY_KANTO_BLUE, .Leave
	disappear CERULEANCITY_KANTO_BLUE
	playmusic MUSIC_RBY_CITIES2
	end

.Leave:
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

CeruleanCity_RivalScript:
	appear CERULEANCITY_KANTO_BLUE
	playmusic MUSIC_RBY_MEET_RIVAL
	applymovement CERULEANCITY_KANTO_BLUE, .Approach
	opentext
	writetext .IntroText
	waitbutton
	closetext
	checkevent EVENT_GOT_CHARMANDER
	iftrue .VsSquirtle
	checkevent EVENT_GOT_SQUIRTLE
	iftrue .VsBulbasaur
; VsCharmander
	winlosstext .WinText, .LossText
	loadtrainer RIVAL1_GEN1, RIVAL1_3_CHARMANDER_GEN1
	startbattle
	reloadmapafterbattle
	sjump .After

.VsSquirtle:
	winlosstext .WinText, .LossText
	loadtrainer RIVAL1_GEN1, RIVAL1_3_SQUIRTLE_GEN1
	startbattle
	reloadmapafterbattle
	sjump .After

.VsBulbasaur:
	winlosstext .WinText, .LossText
	loadtrainer RIVAL1_GEN1, RIVAL1_3_BULBASAUR_GEN1
	startbattle
	reloadmapafterbattle
.After:
	opentext
	writetext .AfterText
	waitbutton
	closetext
	setscene SCENE_CERULEAN_CITY_ROCKET
	playmusic MUSIC_RBY_MEET_RIVAL
	end

.Approach:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

.IntroText:
	text "<RIVAL>: Yo!"
	line "<PLAYER>!"

	para "You're still"
	line "struggling along"
	cont "back here?"

	para "I'm doing great!"
	line "I caught a bunch"
	cont "of strong and"
	cont "smart #MON!"

	para "Here, let me see"
	line "what you caught,"
	cont "<PLAYER>!"
	done

.WinText:
	text "Hey!"
	line "Take it easy!"
	cont "You won already!"
	done

.LossText:
	text "Heh!"
	line "You're no match"
	cont "for my genius!"
	done

.AfterText:
	text "<RIVAL>: Hey,"
	line "guess what?"

	para "I went to BILL's"
	line "and got him to"
	cont "show me his rare"
	cont "#MON!"

	para "That added a lot"
	line "of pages to my"
	cont "#DEX!"

	para "After all, BILL's"
	line "world famous as a"
	cont "#MANIAC!"

	para "He invented the"
	line "#MON Storage"
	cont "System on PC!"

	para "Since you're using"
	line "his system, go"
	cont "thank him!"

	para "Well, I better"
	line "get rolling!"
	cont "Smell ya later!"
	done

CeruleanCity_RocketScript:
	setlasttalked CERULEANCITY_KANTO_ROCKET
	faceplayer
	opentext
	checkevent EVENT_BEAT_ROCKET_GRUNT5_GEN1
	iftrue .FightDone
	writetext .IntroText
	waitbutton
	closetext
	winlosstext .WinText, 0
	loadtrainer ROCKET_GEN1, GRUNT5_GEN1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ROCKET_GRUNT5_GEN1
	opentext
.FightDone:
	writetext .AfterText
	promptbutton
	verbosegiveitem TM_DIG
	iffalse .End
	writetext .LeaveText
	waitbutton
	special FadeBlackQuickly
	pause 3
	disappear CERULEANCITY_KANTO_ROCKET
	special FadeInQuickly
	setscene SCENE_CERULEAN_CITY_DONE
.End:
	closetext
	end

.IntroText:
	text "Hey! Stay out!"
	line "It's not your"
	cont "yard! Huh? Me?"

	para "I'm an innocent"
	line "bystander! Don't"
	cont "you believe me?"
	done

.WinText:
	text "Stop!"
	line "I give up! I'll"
	cont "leave quietly!"
	done

.AfterText:
	text "OK! I'll return"
	line "the TM I stole!"
	done

.LeaveText:
	text "I better get"
	line "moving! Bye!"
	done

CeruleanCity_CooltrainerScript:
	jumptextfaceplayer .Text
.Text:
	text "You're a trainer"
	line "too? Collecting,"
	cont "fighting, it's a"
	cont "tough life."
	done

CeruleanCity_SuperNerd1Script:
	jumptextfaceplayer .Text
.Text:
	text "That bush in"
	line "front of the shop"
	cont "is in the way."

	para "There might be a"
	line "way around."
	done

CeruleanCity_SuperNerd2Script:
	jumptextfaceplayer .Text
.Text:
	text "You're making an"
	line "encyclopedia on"
	cont "#MON? That"
	cont "sounds amusing."
	done

CeruleanCity_GuardScript:
	jumptextfaceplayer .Text
.Text:
	text "The people here"
	line "were robbed."

	para "It's obvious that"
	line "TEAM ROCKET is"
	cont "behind this most"
	cont "heinous crime!"

	para "Even our POLICE"
	line "force has trouble"
	cont "with the ROCKETs!"
	done

CeruleanCity_SlowbroTrainerScript:
	faceplayer
	opentext
	random 3
	ifequal 0, .Branch1
	ifequal 1, .Branch2
; Branch3
	writetext .Text3
	sjump .End

.Branch1:
	writetext .Text1
	sjump .End

.Branch2:
	writetext .Text2
.End:
	waitbutton
	closetext
	end

.Text1:
	text "OK! SLOWBRO!"
	line "Use SONICBOOM!"
	cont "Come on, SLOWBRO"
	cont "pay attention!"
	done

.Text2:
	text "SLOWBRO punch!"
	line "No! You blew it"
	cont "again!"
	done

.Text3:
	text "SLOWBRO, WITHDRAW!"
	line "No! That's wrong!"

	para "It's so hard to"
	line "control #MON!"

	para "Your #MON's"
	line "obedience depends"
	cont "on your abilities"
	cont "as a trainer!"
	done

CeruleanCity_SlowbroScript:
	faceplayer
	opentext
	random 4
	ifequal 0, .Branch1
	ifequal 1, .Branch2
	ifequal 2, .Branch3
; Branch4
	writetext .Text4
	sjump .End

.Branch1:
	writetext .Text1
	sjump .End

.Branch2:
	writetext .Text2
	sjump .End

.Branch3:
	writetext .Text3
.End:
	waitbutton
	closetext
	end

.Text1:
	text "SLOWBRO took a"
	line "snooze..."
	done

.Text2:
	text "SLOWBRO is"
	line "loafing around..."
	done

.Text3:
	text "SLOWBRO turned"
	line "away..."
	done

.Text4:
	text "SLOWBRO"
	line "ignored orders..."
	done

CeruleanCity_BikeGirlScript:
	jumptextfaceplayer .Text
.Text:
	text "I want a bright"
	line "red BICYCLE!"

	para "I'll keep it at"
	line "home, so it won't"
	cont "get dirty!"
	done

CeruleanCity_CaveGuardScript:
	jumptextfaceplayer .Text
.Text:
	text "This is CERULEAN"
	line "CAVE! Horribly"
	cont "strong #MON"
	cont "live in there!"

	para "The #MON LEAGUE"
	line "champion is the"
	cont "only person who"
	cont "is allowed in!"
	done

CeruleanCity_NameSignScript:
	jumptext .Text
.Text:
	text "CERULEAN CITY"
	line "A Mysterious,"
	cont "Blue Aura"
	cont "Surrounds It"
	done

CeruleanCity_TrainerTipsScript:
	jumptext .Text
.Text:
	text "TRAINER TIPS"

	para "Pressing B Button"
	line "during evolution"
	cont "cancels the whole"
	cont "process."
	done

CeruleanCity_BikeShopSignScript:
	jumptext .Text
.Text:
	text "Grass and caves"
	line "handled easily!"
	cont "BIKE SHOP"
	done

CeruleanCity_GymSignScript:
	jumptext .Text
.Text:
	text "CERULEAN CITY"
	line "#MON GYM"
	cont "LEADER: MISTY"

	para "The Tomboyish"
	line "Mermaid!"
	done

CeruleanCity_MartSignScript:
	jumptext .Text
.Text:
	text "All your item"
	line "needs fulfilled!"
	cont "#MON MART"
	done

CeruleanCity_PMCSignScript:
	jumptext .Text
.Text:
	text "Heal your #MON!"
	line "#MON CENTER"
	done

CeruleanCity_HiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_CERULEAN_CITY_HIDDEN_RARE_CANDY

CeruleanCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 27, 11, CERULEAN_TRASHED_HOUSE, 1
	warp_event 13, 15, CERULEAN_TRADE_HOUSE, 1
	warp_event 19, 17, CERULEAN_POKECENTER, 1
	warp_event 30, 19, CERULEAN_GYM, 1
	warp_event 13, 25, BIKE_SHOP, 1
	warp_event 25, 25, CERULEAN_MART, 1
	warp_event  4, 11, CERULEAN_CAVE_1F, 1
	warp_event 27,  9, CERULEAN_TRASHED_HOUSE, 3
	warp_event  9, 11, CERULEAN_BADGE_HOUSE, 2
	warp_event  9,  9, CERULEAN_BADGE_HOUSE, 1

	def_coord_events
	coord_event 20,  6, SCENE_CERULEAN_CITY_RIVAL, CeruleanCity_RivalScriptL
	coord_event 21,  6, SCENE_CERULEAN_CITY_RIVAL, CeruleanCity_RivalScriptR
	coord_event 30,  7, SCENE_CERULEAN_CITY_ROCKET, CeruleanCity_RocketScript
	coord_event 30,  9, SCENE_CERULEAN_CITY_ROCKET, CeruleanCity_RocketScript

	def_bg_events
	bg_event 23, 19, BGEVENT_READ, CeruleanCity_NameSignScript
	bg_event 17, 29, BGEVENT_READ, CeruleanCity_TrainerTipsScript
	bg_event 26, 25, BGEVENT_READ, CeruleanCity_MartSignScript
	bg_event 20, 17, BGEVENT_READ, CeruleanCity_PMCSignScript
	bg_event 11, 25, BGEVENT_READ, CeruleanCity_BikeShopSignScript
	bg_event 27, 21, BGEVENT_READ, CeruleanCity_GymSignScript
	bg_event 15,  8, BGEVENT_ITEM, CeruleanCity_HiddenRareCandy

	def_object_events
	object_event 20,  1, SPRITE_KANTO_BLUE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_CERULEAN_CITY_RIVAL
	object_event 30,  8, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, CeruleanCity_RocketScript, EVENT_CERULEAN_CITY_ROCKET
	object_event 31, 20, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanCity_CooltrainerScript, -1
	object_event 15, 18, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanCity_SuperNerd1Script, -1
	object_event  9, 21, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanCity_SuperNerd2Script, -1
	object_event 28, 12, SPRITE_GUARD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanCity_GuardScript, EVENT_CERULEAN_CITY_GUARD1
	object_event 29, 26, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanCity_SlowbroTrainerScript, -1
	object_event 28, 26, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanCity_SlowbroScript, -1
	object_event  9, 27, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanCity_BikeGirlScript, -1
	object_event  4, 12, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanCity_CaveGuardScript, EVENT_CERULEAN_CITY_SUPER_NERD
	object_event 27, 12, SPRITE_GUARD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanCity_GuardScript, EVENT_CERULEAN_CITY_GUARD2
