	object_const_def
	const CHAMPIONSROOM_KANTO_BLUE
	const CHAMPIONSROOM_OAK

ChampionsRoom_MapScripts:
	def_scene_scripts
	scene_script .Enter ; SCENE_DEFAULT

	def_callbacks

.Enter:
	sdefer .EnterScript
	end

.EnterScript:
	applymovement PLAYER, .Approach
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
	loadtrainer RIVAL3_GEN1, RIVAL3_1_CHARMANDER_GEN1
	startbattle
	reloadmapafterbattle
	sjump .After

.VsSquirtle:
	winlosstext .WinText, .LossText
	loadtrainer RIVAL3_GEN1, RIVAL3_1_SQUIRTLE_GEN1
	startbattle
	reloadmapafterbattle
	sjump .After

.VsBulbasaur:
	winlosstext .WinText, .LossText
	loadtrainer RIVAL3_GEN1, RIVAL3_1_BULBASAUR_GEN1
	startbattle
	reloadmapafterbattle
.After:
	opentext
	writetext .AfterText1
	waitbutton
	playmusic MUSIC_RBY_CITIES1
	writetext .AfterText2
	waitbutton
	closetext
	appear CHAMPIONSROOM_OAK
	applymovement CHAMPIONSROOM_OAK, .OakApproach
	opentext
	checkevent EVENT_GOT_CHARMANDER
	iftrue .BufferCharmander
	checkevent EVENT_GOT_SQUIRTLE
	iftrue .BufferSquirtle
; BufferBulbasaur
	getmonname STRING_BUFFER_3, BULBASAUR
	sjump .AfterStarterName

.BufferCharmander:
	getmonname STRING_BUFFER_3, CHARMANDER
	sjump .AfterStarterName

.BufferSquirtle:
	getmonname STRING_BUFFER_3, SQUIRTLE
.AfterStarterName:
	writetext .AfterText3
	waitbutton
	turnobject CHAMPIONSROOM_OAK, RIGHT
	writetext .AfterText4
	waitbutton
	turnobject CHAMPIONSROOM_OAK, DOWN
	writetext .AfterText5
	waitbutton
	closetext
	applymovement CHAMPIONSROOM_OAK, .OakLeave
	disappear CHAMPIONSROOM_OAK
	applymovement PLAYER, .PlayerLeave
	special FadeOutPalettes
	playsound SFX_ENTER_DOOR
	waitsfx
	warpfacing UP, HALL_OF_FAME_KANTO, 4, 7
	end

.IntroText:
	text "<RIVAL>: Hey!"

	para "I was looking"
	line "forward to seeing"
	cont "you, <PLAYER>!"

	para "My rival should"
	line "be strong to keep"
	cont "me sharp!"

	para "While working on"
	line "#DEX, I looked"
	cont "all over for"
	cont "powerful #MON!"

	para "Not only that, I"
	line "assembled teams"
	cont "that would beat"
	cont "any #MON type!"

	para "And now!"

	para "I'm the #MON"
	line "LEAGUE champion!"

	para "<PLAYER>! Do you"
	line "know what that"
	cont "means?"

	para "I'll tell you!"

	para "I am the most"
	line "powerful trainer"
	cont "in the world!"
	done

.WinText:
	text "NO! That can't be!"
	line "You beat my best!"

	para "After all that"
	line "work to become"
	cont "LEAGUE champ?"

	para "My reign is over"
	line "already?"
	cont "It's not fair!"
	done

.LossText:
	text "Hahaha! I won,"
	line "I won!"

	para "I'm too good for"
	line "you, <PLAYER>!"

	para "You did well to"
	line "even reach me,"
	cont "<RIVAL>, the"
	cont "#MON genius!"

	para "Nice try, loser!"
	line "Hahaha!"
	done

.AfterText1:
	text "Why?"
	line "Why did I lose?"

	para "I never made any"
	line "mistakes raising"
	cont "my #MON..."

	para "Darn it! You're"
	line "the new #MON"
	cont "LEAGUE champion!"

	para "Although I don't"
	line "like to admit it."
	done

.AfterText2:
	text "OAK: <PLAYER>!"
	done

.AfterText3:
	text "OAK: So, you won!"
	line "Congratulations!"
	cont "You're the new"
	cont "#MON LEAGUE"
	cont "champion!"

	para "You've grown up so"
	line "much since you"
	cont "first left with"
	cont "@"
	text_ram wStringBuffer3
	text "!"

	para "<PLAYER>, you have"
	line "come of age!"
	done

.AfterText4:
	text "OAK: <RIVAL>! I'm"
	line "disappointed!"

	para "I came when I"
	line "heard you beat"
	cont "the ELITE FOUR!"

	para "But, when I got"
	line "here, you had"
	cont "already lost!"

	para "<RIVAL>! Do you"
	line "understand why"
	cont "you lost?"

	para "You have forgotten"
	line "to treat your"
	cont "#MON with"
	cont "trust and love!"

	para "Without them, you"
	line "will never become"
	cont "a champ again!"
	done

.AfterText5:
	text "OAK: <PLAYER>!"

	para "You understand"
	line "that your victory"
	cont "was not just your"
	cont "own doing!"

	para "The bond you share"
	line "with your #MON"
	cont "is marvelous!"

	para "<PLAYER>!"
	line "Come with me!"
	done

.Approach:
	step UP
	step UP
	step UP
	step RIGHT
	step UP
	step_end

.OakApproach:
	step UP
	step UP
	step UP
	step UP
	step UP
	turn_head DOWN
	step_end

.PlayerLeave:
	step LEFT
	step UP
.OakLeave:
	step UP
	step UP
	step_end

ChampionsRoom_MapEvents:
	def_warp_events
	warp_event  3,  7, LANCES_ROOM_KANTO, 2
	warp_event  4,  7, LANCES_ROOM_KANTO, 3
	warp_event  3,  0, HALL_OF_FAME_KANTO, 1
	warp_event  4,  0, HALL_OF_FAME_KANTO, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_KANTO_BLUE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  3,  7, SPRITE_OAK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_CHAMPIONS_ROOM_PROF_OAK
