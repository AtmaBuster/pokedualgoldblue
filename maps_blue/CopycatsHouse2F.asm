	object_const_def
	const COPYCATSHOUSE2F_BRUNETTE_GIRL
	const COPYCATSHOUSE2F_KANTO_BIRD1
	const COPYCATSHOUSE2F_MONSTER
	const COPYCATSHOUSE2F_KANTO_BIRD2
	const COPYCATSHOUSE2F_FAIRY

CopycatsHouse2F_MapScripts:
	def_scene_scripts

	def_callbacks

CopycatsHouse2F_CopycatScript:
	faceplayer
	opentext
	checkevent EVENT_COPYCATS_HOUSE_2F_GOT_TM_MIMIC
	iftrue .After
	writetext .Text1
	waitbutton
	checkitem POKE_DOLL
	iffalse .BagFull
	writetext .Text2
	waitbutton
IF DEF(_GOLD)
	verbosegiveitem TM_DYNAMICPUNCH
ELIF DEF(_BLUE)
	verbosegiveitem TM_MIMIC
ENDC
	iffalse .BagFull
	takeitem POKE_DOLL
	setevent EVENT_COPYCATS_HOUSE_2F_GOT_TM_MIMIC
	writetext .Text3
	waitbutton
.BagFull:
	closetext
	end

.After:
	writetext .Text4
	waitbutton
	closetext
	end

.Text1:
	text "<PLAYER>: Hi! Do"
	line "you like #MON?"

	para "<PLAYER>: Uh no, I"
	line "just asked you."

	para "<PLAYER>: Huh?"
	line "You're strange!"

	para "COPYCAT: Hmm?"
	line "Quit mimicking?"

	para "But, that's my"
	line "favorite hobby!"
	done

.Text2:
	text "Oh wow!"
	line "A # DOLL!"

	para "For me?"
	line "Thank you!"

	para "You can have"
	line "this, then!"
	done

.Text3:
	text "TM31 contains my"
	line "favorite, MIMIC!"

	para "Use it on a good"
	line "#MON!"
	done

.Text4:
	text "<PLAYER>: Hi!"
	line "Thanks for TM31!"

	para "<PLAYER>: Pardon?"

	para "<PLAYER>: Is it"
	line "that fun to mimic"
	cont "my every move?"

	para "COPYCAT: You bet!"
	line "It's a scream!"
	done

CopycatsHouse2F_DoduoScript:
	jumptextfaceplayer .Text
.Text:
	text "DODUO: Giiih!"

	para "MIRROR MIRROR ON"
	line "THE WALL, WHO IS"
	cont "THE FAIREST ONE"
	cont "OF ALL?"
	done

CopycatsHouse2F_DollScript:
	jumptext .Text
.Text:
	text "This is a rare"
	line "#MON! Huh?"
	cont "It's only a doll!"
	done

CopycatsHouse2F_MarioGameScript:
	jumptext .Text
.Text:
	text "A game with MARIO"
	line "wearing a bucket"
	cont "on his head!"
	done

CopycatsHouse2F_DiaryScript:
	opentext
	readvar VAR_FACING
	ifequal UP, .Read
	writetext .Text1
	waitbutton
	closetext
	end

.Read:
	writetext .Text2
	waitbutton
	closetext
	end

.Text1:
	text "Huh? Can't see!"
	done

.Text2:
	text "..."

	para "My Secrets!"

	para "Skill: Mimicry!"
	line "Hobby: Collecting"
	cont "dolls!"
	cont "Favorite #MON:"
	cont "CLEFAIRY!"
	done

CopycatsHouse2F_HiddenNugget:
	hiddenitem NUGGET, EVENT_COPYCATS_HOUSE_2F_HIDDEN_NUGGET

CopycatsHouse2F_MapEvents:
	def_warp_events
	warp_event  7,  1, COPYCATS_HOUSE_1F, 3

	def_coord_events

	def_bg_events
	bg_event  3,  5, BGEVENT_READ, CopycatsHouse2F_MarioGameScript
	bg_event  0,  1, BGEVENT_READ, CopycatsHouse2F_DiaryScript
	bg_event  1,  1, BGEVENT_ITEM, CopycatsHouse2F_HiddenNugget

	def_object_events
	object_event  4,  3, SPRITE_BRUNETTE_GIRL, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CopycatsHouse2F_CopycatScript, -1
	object_event  4,  6, SPRITE_KANTO_BIRD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CopycatsHouse2F_DoduoScript, -1
	object_event  5,  1, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CopycatsHouse2F_DollScript, -1
	object_event  2,  0, SPRITE_KANTO_BIRD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CopycatsHouse2F_DollScript, -1
	object_event  1,  6, SPRITE_FAIRY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CopycatsHouse2F_DollScript, -1
