	object_const_def
	const OAKSLAB_KANTO_BLUE
	const OAKSLAB_POKE_BALL1
	const OAKSLAB_POKE_BALL2
	const OAKSLAB_POKE_BALL3
	const OAKSLAB_OAK1
	const OAKSLAB_POKEDEX1
	const OAKSLAB_POKEDEX2
	const OAKSLAB_OAK2
	const OAKSLAB_GIRL
	const OAKSLAB_KANTO_SCIENTIST1
	const OAKSLAB_KANTO_SCIENTIST2

OaksLab_MapScripts:
	def_scene_scripts
	scene_script .Dummy  ; SCENE_DEFAULT
	scene_script .Intro1 ; SCENE_OAKS_LAB_INTRO_START
	scene_script .Dummy  ; SCENE_OAKS_LAB_CANT_LEAVE
	scene_script .Dummy  ; SCENE_OAKS_LAB_RIVAL_BATTLE

	def_callbacks

.Dummy:
	end

.Intro1:
	applymovement OAKSLAB_OAK2, OaksLab_OakEntryMovement
	disappear OAKSLAB_OAK2
	appear OAKSLAB_OAK1
	applymovement PLAYER, OaksLab_PlayerEntryMovement
	turnobject OAKSLAB_OAK1, DOWN
	turnobject OAKSLAB_KANTO_BLUE, UP
	setevent EVENT_FOLLOWED_OAK_INTO_LAB
	opentext
	writetext OaksLab_Text17
	waitbutton
	pause 3
	writetext OaksLab_Text18
	waitbutton
	pause 3
	writetext OaksLab_Text19
	waitbutton
	pause 3
	writetext OaksLab_Text20
	waitbutton
	closetext
	setscene SCENE_OAKS_LAB_CANT_LEAVE
	end

OaksLab_Text17:
	text "<RIVAL>: Gramps!"
	line "I'm fed up with"
	cont "waiting!"
	done

OaksLab_Text18:
	text "OAK: <RIVAL>?"
	line "Let me think..."

	para "Oh, that's right,"
	line "I told you to"
	cont "come! Just wait!"

	para "Here, <PLAYER>!"

	para "There are 3"
	line "#MON here!"

	para "Haha!"

	para "They are inside"
	line "the # BALLs."

	para "When I was young,"
	line "I was a serious"
	cont "#MON trainer!"

	para "In my old age, I"
	line "have only 3 left,"
	cont "but you can have"
	cont "one! Choose!"
	done

OaksLab_Text19:
	text "<RIVAL>: Hey!"
	line "Gramps! What"
	cont "about me?"
	done

OaksLab_Text20:
	text "OAK: Be patient!"
	line "<RIVAL>, you can"
	cont "have one too!"
	done

OaksLab_PlayerEntryMovement:
	step UP
	step UP
	step UP
	step UP
OaksLab_OakEntryMovement:
	step UP
	step UP
	step UP
	step UP
	step_end

OaksLab_RivalScript:
	faceplayer
	opentext
	checkevent EVENT_FOLLOWED_OAK_INTO_LAB
	iftrue .BeforeChooseMon
	writetext .Text1
	waitbutton
	closetext
	end

.BeforeChooseMon:
	checkevent EVENT_GOT_STARTER
	iftrue .AfterChooseMon
	writetext .Text2
	waitbutton
	closetext
	end

.AfterChooseMon:
	writetext .Text3
	waitbutton
	closetext
	end

.Text1:
	text "<RIVAL>: Yo"
	line "<PLAYER>! Gramps"
	cont "isn't around!"
	done

.Text2:
	text "<RIVAL>: Heh, I"
	line "don't need to be"
	cont "greedy like you!"

	para "Go ahead and"
	line "choose, <PLAYER>!"
	done

.Text3:
	text "<RIVAL>: My"
	line "#MON looks a"
	cont "lot stronger."
	done

OaksLab_Ball1Script:
	checkevent EVENT_FOLLOWED_OAK_INTO_LAB
	iffalse OaksLab_BallScriptJoin1
	checkevent EVENT_GOT_STARTER
	iftrue OaksLab_BallScriptJoin2
	refreshscreen
	pokepic CHARMANDER
	cry CHARMANDER
	waitbutton
	closepokepic
	opentext
	writetext .Text
	yesorno
	iffalse .Done
	disappear OAKSLAB_POKE_BALL1
	writetext OaksLab_EnergeticText
	promptbutton
	getmonname STRING_BUFFER_3, CHARMANDER
	writetext OaksLab_PlayerReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke CHARMANDER, 5
	closetext
	readvar VAR_FACING
	ifequal UP, .FromDown
	applymovement OAKSLAB_KANTO_BLUE, OaksLab_RivalBall1FromLeftUpMovement
	sjump .Join

.FromDown:
	applymovement OAKSLAB_KANTO_BLUE, OaksLab_RivalBall1FromDownMovement
.Join
	opentext
	writetext OaksLab_IllTakeThisOneText
	waitbutton
	disappear OAKSLAB_POKE_BALL2
	getmonname STRING_BUFFER_3, SQUIRTLE
	writetext OaksLab_RivalReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	setevent EVENT_GOT_STARTER
	setevent EVENT_GOT_CHARMANDER
	setscene SCENE_OAKS_LAB_RIVAL_BATTLE
	appear OAKSLAB_GIRL
.Done
	closetext
	end

.Text:
	text "So! You want the"
	line "fire #MON,"
	cont "CHARMANDER?"
	done

OaksLab_Ball2Script:
	checkevent EVENT_FOLLOWED_OAK_INTO_LAB
	iffalse OaksLab_BallScriptJoin1
	checkevent EVENT_GOT_STARTER
	iftrue OaksLab_BallScriptJoin2
	refreshscreen
	pokepic SQUIRTLE
	cry SQUIRTLE
	waitbutton
	closepokepic
	opentext
	writetext .Text
	yesorno
	iffalse .Done
	disappear OAKSLAB_POKE_BALL2
	writetext OaksLab_EnergeticText
	promptbutton
	getmonname STRING_BUFFER_3, SQUIRTLE
	writetext OaksLab_PlayerReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke SQUIRTLE, 5
	closetext
	readvar VAR_FACING
	ifequal UP, .FromDown
	applymovement OAKSLAB_KANTO_BLUE, OaksLab_RivalBall2FromUpMovement
	sjump .Join

.FromDown:
	applymovement OAKSLAB_KANTO_BLUE, OaksLab_RivalBall2FromDownMovement
.Join
	opentext
	writetext OaksLab_IllTakeThisOneText
	waitbutton
	disappear OAKSLAB_POKE_BALL3
	getmonname STRING_BUFFER_3, BULBASAUR
	writetext OaksLab_RivalReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	setevent EVENT_GOT_STARTER
	setevent EVENT_GOT_SQUIRTLE
	setscene SCENE_OAKS_LAB_RIVAL_BATTLE
	appear OAKSLAB_GIRL
.Done
	closetext
	end

.Text:
	text "So! You want the"
	line "water #MON,"
	cont "SQUIRTLE?"
	done

OaksLab_Ball3Script:
	checkevent EVENT_FOLLOWED_OAK_INTO_LAB
	iffalse OaksLab_BallScriptJoin1
	checkevent EVENT_GOT_STARTER
	iftrue OaksLab_BallScriptJoin2
	refreshscreen
	pokepic BULBASAUR
	cry BULBASAUR
	waitbutton
	closepokepic
	opentext
	writetext .Text
	yesorno
	iffalse .Done
	disappear OAKSLAB_POKE_BALL3
	writetext OaksLab_EnergeticText
	promptbutton
	getmonname STRING_BUFFER_3, BULBASAUR
	writetext OaksLab_PlayerReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke BULBASAUR, 5
	closetext
	applymovement OAKSLAB_KANTO_BLUE, OaksLab_RivalBall3Movement
	opentext
	writetext OaksLab_IllTakeThisOneText
	waitbutton
	disappear OAKSLAB_POKE_BALL1
	getmonname STRING_BUFFER_3, CHARMANDER
	writetext OaksLab_RivalReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	setevent EVENT_GOT_STARTER
	setevent EVENT_GOT_BULBASAUR
	setscene SCENE_OAKS_LAB_RIVAL_BATTLE
	appear OAKSLAB_GIRL
.Done
	closetext
	end

.Text:
	text "So! You want the"
	line "plant #MON,"
	cont "BULBASAUR?"
	done

OaksLab_BallScriptJoin1:
	opentext
	writetext .Text
	waitbutton
	closetext
	end
.Text:
	text "Those are #"
	line "BALLs. They"
	cont "contain #MON!"
	done

OaksLab_BallScriptJoin2:
	opentext
	writetext .Text
	waitbutton
	closetext
	end
.Text:
	text "That's PROF.OAK's"
	line "last #MON!"
	done

OaksLab_EnergeticText:
	text "This #MON is"
	line "really energetic!"
	done

OaksLab_PlayerReceivedStarterText:
	text "<PLAYER> received"
	line "a @"
	text_ram wStringBuffer3
	text "!@"
	text_end

OaksLab_IllTakeThisOneText:
	text "<RIVAL>: I'll take"
	line "this one, then!"
	done

OaksLab_RivalReceivedStarterText:
	text "<RIVAL> received"
	line "a @"
	text_ram wStringBuffer3
	text "!@"
	text_end

OaksLab_RivalBall1FromLeftUpMovement:
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

OaksLab_RivalBall1FromDownMovement:
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step_end

OaksLab_RivalBall2FromUpMovement:
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

OaksLab_RivalBall2FromDownMovement:
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step_end

OaksLab_RivalBall3Movement:
	step DOWN
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

OaksLab_CantLeaveScript:
	turnobject OAKSLAB_OAK1, DOWN
	turnobject OAKSLAB_KANTO_BLUE, DOWN
	opentext
	writetext .Text
	waitbutton
	closetext
	applymovement PLAYER, .MoveUp
	end

.Text:
	text "OAK: Hey! Don't go"
	line "away yet!"
	done

.MoveUp:
	step UP
	step_end

OaksLab_BattleScriptL:
	scall OaksLab_BattleScript1
	checkevent EVENT_GOT_CHARMANDER
	iftrue .Ball1
	checkevent EVENT_GOT_SQUIRTLE
	iftrue .Ball2
; Ball3
	applymovement OAKSLAB_KANTO_BLUE, .Ball3Movement
	sjump .Join

.Ball1:
	applymovement OAKSLAB_KANTO_BLUE, .Ball1Movement
	sjump .Join

.Ball2:
	applymovement OAKSLAB_KANTO_BLUE, .Ball2Movement
.Join
	scall OaksLab_BattleScript2
	applymovement OAKSLAB_KANTO_BLUE, .LeaveMovement
	sjump OaksLab_BattleScript3

.Ball2Movement:
	step_left
.Ball1Movement:
	step LEFT
.Ball3Movement:
	step LEFT
	step LEFT
	step DOWN
	step_end

.LeaveMovement:
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

OaksLab_BattleScriptR:
	scall OaksLab_BattleScript1
	checkevent EVENT_GOT_CHARMANDER
	iftrue .Ball1
	checkevent EVENT_GOT_SQUIRTLE
	iftrue .Ball2
; Ball3
	applymovement OAKSLAB_KANTO_BLUE, .Ball3Movement
	sjump .Join

.Ball1:
	applymovement OAKSLAB_KANTO_BLUE, .Ball1Movement
	sjump .Join

.Ball2:
	applymovement OAKSLAB_KANTO_BLUE, .Ball2Movement
.Join
	scall OaksLab_BattleScript2
	applymovement OAKSLAB_KANTO_BLUE, .LeaveMovement
	sjump OaksLab_BattleScript3

.Ball2Movement:
	step LEFT
.Ball1Movement:
	step LEFT
.Ball3Movement:
	step LEFT
	step DOWN
	step_end
	end

.LeaveMovement:
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

OaksLab_BattleScript1:
	turnobject OAKSLAB_KANTO_BLUE, DOWN
	turnobject PLAYER, UP
	playmusic MUSIC_RBY_MEET_RIVAL
	opentext
	writetext .Text
	waitbutton
	closetext
	end

.Text:
	text "<RIVAL>: Wait"
	line "<PLAYER>!"
	cont "Let's check out"
	cont "our #MON!"

	para "Come on, I'll take"
	line "you on!"
	done

OaksLab_BattleScript2:
	checkevent EVENT_GOT_CHARMANDER
	iftrue .VsSquirtle
	checkevent EVENT_GOT_SQUIRTLE
	iftrue .VsBulbasaur
; VsCharmander
	winlosstext .WinText, .LossText
	loadtrainer RIVAL1_GEN1, RIVAL1_1_CHARMANDER_GEN1
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	sjump .After

.VsSquirtle:
	winlosstext .WinText, .LossText
	loadtrainer RIVAL1_GEN1, RIVAL1_1_SQUIRTLE_GEN1
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	sjump .After

.VsBulbasaur:
	winlosstext .WinText, .LossText
	loadtrainer RIVAL1_GEN1, RIVAL1_1_BULBASAUR_GEN1
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
.After:
	pause 20
	opentext
	writetext .AfterText
	waitbutton
	closetext
	playmusic MUSIC_RBY_MEET_RIVAL
	end

.WinText:
	text "WHAT?"
	line "Unbelievable!"
	cont "I picked the"
	cont "wrong #MON!"
	done

.LossText:
	text "<RIVAL>: Yeah! Am"
	line "I great or what?"
	done

.AfterText:
	text "<RIVAL>: Okay!"
	line "I'll make my"
	cont "#MON fight to"
	cont "toughen it up!"

	para "<PLAYER>! Gramps!"
	line "Smell you later!"
	done

OaksLab_BattleScript3:
	disappear OAKSLAB_KANTO_BLUE
	special HealParty
	playmusic MUSIC_RBY_OAKS_LAB
	setscene SCENE_DEFAULT
	setmapscene PALLET_TOWN, SCENE_FINISHED
	setevent EVENT_BATTLED_RIVAL_IN_OAKS_LAB
	end

OaksLab_PokedexScript:
	jumptext .Text
.Text:
	text "It's encyclopedia-"
	line "like, but the"
	cont "pages are blank!"
	done

OaksLab_GirlScript:
	jumptextfaceplayer .Text
.Text:
	text "PROF.OAK is the"
	line "authority on"
	cont "#MON!"

	para "Many #MON"
	line "trainers hold him"
	cont "in high regard!"
	done

OaksLab_AideScript:
	jumptextfaceplayer .Text
.Text:
	text "I study #MON as"
	line "PROF.OAK's AIDE."
	done

OaksLab_LeftPosterScript:
	jumptext .Text
.Text:
        text "Push START to"
        line "open the MENU!"
        done

OaksLab_RightPosterScript:
	opentext
	readvar VAR_DEXCAUGHT
	ifless 2, .LessThan2Owned
	writetext .StrengthsWeaknesses
	waitbutton
	closetext
	end

.LessThan2Owned:
	writetext .SaveOption
	waitbutton
	closetext
	end

.StrengthsWeaknesses:
	text "All #MON types"
	line "have strong and"
	cont "weak points"
	cont "against others."
	done

.SaveOption:
	text "The SAVE option is"
	line "on the MENU"
	cont "screen."
	done

OaksLab_EmailScript:
	jumptext .Text
.Text:
	text "There's an e-mail"
	line "message here!"

	para "..."

	para "Calling all"
	line "#MON trainers!"

	para "The elite trainers"
	line "of #MON LEAGUE"
	cont "are ready to take"
	cont "on all comers!"

	para "Bring your best"
	line "#MON and see"
	cont "how you rate as a"
	cont "trainer!"

	para "#MON LEAGUE HQ"
	line "INDIGO PLATEAU"

	para "PS: PROF.OAK,"
	line "please visit us!"
	cont "..."
	done

OaksLab_OakScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_POKEBALLS_FROM_OAK
	iftrue .ShowRating
	readvar VAR_DEXCAUGHT
	ifless 2, .NextCheck
	checkevent EVENT_GOT_POKEDEX
	iffalse .NextCheck
.ShowRating:
	writetext .RatingText
	; display rating
	closetext
	end

.NextCheck:
	checkitem POKE_BALL
	iftrue .PleaseVisit
	checkevent EVENT_BEAT_ROUTE22_RIVAL_1ST_BATTLE
	iftrue .TryGiveBalls
	checkevent EVENT_GOT_POKEDEX
	iftrue .AroundWorld
	checkevent EVENT_BATTLED_RIVAL_IN_OAKS_LAB
	iftrue .CheckParcel
	checkevent EVENT_GOT_STARTER
	iftrue .WildMon
	writetext .WhichMonText
	waitbutton
	closetext
	end

.WildMon:
	writetext .WildMonText
	waitbutton
	closetext
	end

.CheckParcel:
	checkitem OAKS_PARCEL
	iftrue .HaveParcel
	writetext .RaiseMonText
	waitbutton
	closetext
	end

.HaveParcel:
	writetext .DeliverParcelText1
	promptbutton
	writetext .DeliverParcelText2
	playsound SFX_KEY_ITEM
	waitsfx
	promptbutton
	writetext .DeliverParcelText3
	waitbutton
	closetext
	takeitem OAKS_PARCEL
	setevent EVENT_OAK_GOT_PARCEL
	playmusic MUSIC_RBY_MEET_RIVAL
	opentext
	writetext .RivalEnterText
	waitbutton
	closetext
	readvar VAR_FACING
	ifequal UP, .PlayerFacingUp
	ifequal DOWN, .PlayerFacingDown
	moveobject OAKSLAB_KANTO_BLUE, 4, 7
	appear OAKSLAB_KANTO_BLUE
	applymovement OAKSLAB_KANTO_BLUE, .MoveUp4
	sjump .Join

.PlayerFacingUp:
	moveobject OAKSLAB_KANTO_BLUE, 4, 8
	appear OAKSLAB_KANTO_BLUE
	applymovement OAKSLAB_KANTO_BLUE, .MoveUp5
	sjump .Join

.PlayerFacingDown:
	moveobject OAKSLAB_KANTO_BLUE, 4, 6
	appear OAKSLAB_KANTO_BLUE
	applymovement OAKSLAB_KANTO_BLUE, .MoveUp3
.Join:
	playmusic MUSIC_RBY_OAKS_LAB
	turnobject OAKSLAB_OAK1, DOWN
	opentext
	writetext .PokedexText
	promptbutton
	writetext .GotPokedexText
	playsound SFX_DEX_FANFARE_80_109
	waitsfx
	disappear OAKSLAB_POKEDEX1
	disappear OAKSLAB_POKEDEX2
	promptbutton
	writetext .OaksDreamText
	waitbutton
	turnobject OAKSLAB_KANTO_BLUE, RIGHT
	writetext .LeaveItToMeText
	waitbutton
	closetext
	setevent EVENT_GOT_POKEDEX
	setflag ENGINE_POKEDEX
	setevent EVENT_VIRIDIAN_CITY_OLD_MAN_ASLEEP
	clearevent EVENT_VIRIDIAN_CITY_OLD_MAN_AWAKE
	setmapscene VIRIDIAN_CITY, SCENE_VIRIDIAN_CITY_GYM_LOCK
	playmusic MUSIC_RBY_MEET_RIVAL
	readvar VAR_FACING
	ifequal UP, .PlayerFacingUp2
	ifequal DOWN, .PlayerFacingDown2
	applymovement OAKSLAB_KANTO_BLUE, .MoveDown4
	sjump .Finish

.PlayerFacingUp2:
	applymovement OAKSLAB_KANTO_BLUE, .MoveDown5
	sjump .Finish

.PlayerFacingDown2:
	applymovement OAKSLAB_KANTO_BLUE, .MoveDown3
.Finish:
	disappear OAKSLAB_KANTO_BLUE
	playmusic MUSIC_RBY_OAKS_LAB
	clearevent EVENT_ROUTE_22_RIVAL_1
	setmapscene ROUTE_22, SCENE_ROUTE_22_RIVAL_1
	end

.AroundWorld:
	writetext .AroundWorldText
	waitbutton
	closetext
	end

.TryGiveBalls:
	checkevent EVENT_GOT_POKEBALLS_FROM_OAK
	iftrue .PleaseVisit
	setevent EVENT_GOT_POKEBALLS_FROM_OAK
	writetext .GiveBallText
	verbosegiveitem POKE_BALL, 5
	closetext
	end

.PleaseVisit:
	writetext .PleaseVisitText
	waitbutton
	closetext
	end

.MoveUp5:
	step UP
.MoveUp4:
	step UP
.MoveUp3:
	step UP
	step UP
	step UP
	step_end

.MoveDown5:
	step DOWN
.MoveDown4:
	step DOWN
.MoveDown3:
	step DOWN
	step DOWN
	step DOWN
	step_end

.RatingText:
	text "OAK: Good to see "
	line "you! How is your "
	cont "#DEX coming? "
	cont "Here, let me take"
	cont "a look!"
	prompt

.WhichMonText:
	text "OAK: Now, <PLAYER>,"
	line "which #MON do"
	cont "you want?"
	done

.WildMonText:
	text "OAK: If a wild"
	line "#MON appears,"
	cont "your #MON can"
	cont "fight against it!"
	done

.RaiseMonText:
	text "OAK: <PLAYER>,"
	line "raise your young"
	cont "#MON by making"
	cont "it fight!"
	done

.DeliverParcelText1:
	text "OAK: Oh, <PLAYER>!"

	para "How is my old"
	line "#MON?"

	para "Well, it seems to"
	line "like you a lot."

	para "You must be"
	line "talented as a"
	cont "#MON trainer!"

	para "What? You have"
	line "something for me?"
	done

.DeliverParcelText2:
	text "<PLAYER> delivered"
	line "OAK's PARCEL."
	done

.DeliverParcelText3:
	text "Ah! This is the"
	line "custom # BALL"
	cont "I ordered!"
	cont "Thank you!"
	done

.AroundWorldText:
	text "#MON around the"
	line "world wait for"
	cont "you, <PLAYER>!"
	done

.GiveBallText:
	text "OAK: You can't get"
	line "detailed data on"
	cont "#MON by just"
	cont "seeing them."

	para "You must catch"
	line "them! Use these"
	cont "to capture wild"
	cont "#MON."
	done

.PleaseVisitText:
	text "OAK: Come see me"
	line "sometimes."

	para "I want to know how"
	line "your #DEX is"
	cont "coming along."
	done

.RivalEnterText:
	text "<RIVAL>: Gramps!"
	done

.PokedexText:
	text "<RIVAL>: What did"
	line "you call me for?"

	para "OAK: Oh right! I"
	line "have a request"
	cont "of you two."

	para "On the desk there"
	line "is my invention,"
	cont "#DEX!"

	para "It automatically"
	line "records data on"
	cont "#MON you've"
	cont "seen or caught!"

	para "It's a hi-tech"
	line "encyclopedia!"

	para "OAK: <PLAYER> and"
	line "<RIVAL>! Take"
	cont "these with you!"
	done

.GotPokedexText:
	text "<PLAYER> got"
	line "#DEX from OAK!"
	done

.OaksDreamText:
	text "To make a complete"
	line "guide on all the"
	cont "#MON in the"
	cont "world..."

	para "That was my dream!"

	para "But, I'm too old!"
	line "I can't do it!"

	para "So, I want you two"
	line "to fulfill my"
	cont "dream for me!"

	para "Get moving, you"
	line "two!"

	para "This is a great"
	line "undertaking in"
	cont "#MON history!"
	done

.LeaveItToMeText:
	text "<RIVAL>: Alright"
	line "Gramps! Leave it"
	cont "all to me!"

	para "<PLAYER>, I hate to"
	line "say it, but I"
	cont "don't need you!"

	para "I know! I'll"
	line "borrow a TOWN MAP"
	cont "from my sis!"

	para "I'll tell her not"
	line "to lend you one,"
	cont "<PLAYER>! Hahaha!"
	done

OaksLab_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 11, PALLET_TOWN, 3
	warp_event  5, 11, PALLET_TOWN, 3

	def_coord_events
	coord_event  4,  6, SCENE_OAKS_LAB_CANT_LEAVE, OaksLab_CantLeaveScript
	coord_event  5,  6, SCENE_OAKS_LAB_CANT_LEAVE, OaksLab_CantLeaveScript
	coord_event  4,  6, SCENE_OAKS_LAB_RIVAL_BATTLE, OaksLab_BattleScriptL
	coord_event  5,  6, SCENE_OAKS_LAB_RIVAL_BATTLE, OaksLab_BattleScriptR

	def_bg_events
	bg_event  4,  0, BGEVENT_READ, OaksLab_LeftPosterScript
	bg_event  5,  0, BGEVENT_READ, OaksLab_RightPosterScript
	bg_event  0,  1, BGEVENT_READ, OaksLab_EmailScript
	bg_event  1,  1, BGEVENT_READ, OaksLab_EmailScript

	def_object_events
	object_event  4,  3, SPRITE_KANTO_BLUE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, OaksLab_RivalScript, EVENT_OAKS_LAB_BLUE
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OaksLab_Ball1Script, EVENT_OAKS_LAB_BALL1
	object_event  7,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OaksLab_Ball2Script, EVENT_OAKS_LAB_BALL2
	object_event  8,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OaksLab_Ball3Script, EVENT_OAKS_LAB_BALL3
	object_event  5,  2, SPRITE_OAK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OaksLab_OakScript, EVENT_OAKS_LAB_OAK1
	object_event  2,  1, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OaksLab_PokedexScript, EVENT_OAKS_LAB_DEX1
	object_event  3,  1, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OaksLab_PokedexScript, EVENT_OAKS_LAB_DEX2
	object_event  5, 10, SPRITE_OAK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_OAKS_LAB_OAK2
	object_event  1,  9, SPRITE_GIRL, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OaksLab_GirlScript, EVENT_OAKS_LAB_GIRL
	object_event  2, 10, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OaksLab_AideScript, -1
	object_event  8, 10, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OaksLab_AideScript, -1
