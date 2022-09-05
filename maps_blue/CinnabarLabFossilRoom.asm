	object_const_def
	const CINNABARLABFOSSILROOM_KANTO_SCIENTIST1
	const CINNABARLABFOSSILROOM_KANTO_SCIENTIST2

CinnabarLabFossilRoom_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FossilFlags

.FossilFlags:
	checkevent EVENT_CINNABAR_LAB_GAVE_DOME_FOSSIL
	iftrue .GaveFossil
	checkevent EVENT_CINNABAR_LAB_GAVE_HELIX_FOSSIL
	iftrue .GaveFossil
	checkevent EVENT_CINNABAR_LAB_GAVE_OLD_AMBER
	iftrue .GaveFossil
	setevent EVENT_CINNABAR_LAB_IN_FOSSIL_ROOM
.GaveFossil:
	endcallback

CinnabarLabFossilRoom_PCScript:
	jumpstd PCScript

CinnabarLabFossilRoom_ReviverScript:
	faceplayer
	opentext
	scall .CheckIfReviverHasFossil
	iffalse .TryGiveFossil
	checkevent EVENT_CINNABAR_LAB_IN_FOSSIL_ROOM
	iffalse .GiveMon
.TakeSomeTime:
	writetext .TakeSomeTimeText
	waitbutton
	closetext
	end

.TryGiveFossil:
	writetext .HaveFossilText
	special CheckFossils
	iffalse .NoFossils
	special FossilMenu
	ifequal DOME_FOSSIL, .GiveDomeFossil
	ifequal HELIX_FOSSIL, .GiveHelixFossil
	ifequal OLD_AMBER, .GiveOldAmber
.ComeAgain:
	writetext .ComeAgainText
	waitbutton
	closetext
	end

.NoFossils:
	writetext .NoFossilsText
	waitbutton
	closetext
	end

.GiveDomeFossil:
	getitemname STRING_BUFFER_4, DOME_FOSSIL
	getmonname STRING_BUFFER_3, KABUTO
	writetext .FossilText
	yesorno
	iffalse .ComeAgain
	writetext .GiveFossilText
	takeitem DOME_FOSSIL
	setevent EVENT_CINNABAR_LAB_GAVE_DOME_FOSSIL
	sjump .TakeSomeTime

.GiveHelixFossil:
	getitemname STRING_BUFFER_4, HELIX_FOSSIL
	getmonname STRING_BUFFER_3, OMANYTE
	writetext .FossilText
	yesorno
	iffalse .ComeAgain
	writetext .GiveFossilText
	takeitem HELIX_FOSSIL
	setevent EVENT_CINNABAR_LAB_GAVE_HELIX_FOSSIL
	sjump .TakeSomeTime

.GiveOldAmber:
	getitemname STRING_BUFFER_4, OLD_AMBER
	getmonname STRING_BUFFER_3, AERODACTYL
	writetext .FossilText
	yesorno
	iffalse .ComeAgain
	writetext .GiveFossilText
	takeitem OLD_AMBER
	setevent EVENT_CINNABAR_LAB_GAVE_OLD_AMBER
	sjump .TakeSomeTime

.GiveMon:
	checkevent EVENT_CINNABAR_LAB_GAVE_DOME_FOSSIL
	iftrue .GiveKabuto
	checkevent EVENT_CINNABAR_LAB_GAVE_HELIX_FOSSIL
	iftrue .GiveOmanyte
; GiveAerodactyl
	getmonname STRING_BUFFER_3, AERODACTYL
	writetext .GotMonText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke AERODACTYL, 30
	closetext
	clearevent EVENT_CINNABAR_LAB_GAVE_OLD_AMBER
	setevent EVENT_CINNABAR_LAB_IN_FOSSIL_ROOM
	end

.GiveKabuto:
	getmonname STRING_BUFFER_3, KABUTO
	writetext .GotMonText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke KABUTO, 30
	closetext
	clearevent EVENT_CINNABAR_LAB_GAVE_DOME_FOSSIL
	setevent EVENT_CINNABAR_LAB_IN_FOSSIL_ROOM
	end

.GiveOmanyte:
	getmonname STRING_BUFFER_3, OMANYTE
	writetext .GotMonText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke OMANYTE, 30
	closetext
	clearevent EVENT_CINNABAR_LAB_GAVE_HELIX_FOSSIL
	setevent EVENT_CINNABAR_LAB_IN_FOSSIL_ROOM
	end

.CheckIfReviverHasFossil:
	checkevent EVENT_CINNABAR_LAB_GAVE_DOME_FOSSIL
	iftrue .HasFossil
	checkevent EVENT_CINNABAR_LAB_GAVE_HELIX_FOSSIL
	iftrue .HasFossil
	checkevent EVENT_CINNABAR_LAB_GAVE_OLD_AMBER
.HasFossil:
	end

.TakeSomeTimeText:
	text "I take a little"
	line "time!"

	para "You go for walk a"
	line "little while!"
	done

.HaveFossilText:
	text "Hiya!"

	para "I am important"
	line "doctor!"

	para "I study here rare"
	line "#MON fossils!"

	para "You! Have you a"
	line "fossil for me?"
	prompt

.NoFossilsText:
	text "No! Is too bad!"
	done

.ComeAgainText:
	text "Aiyah! You come"
	line "again!"
	done

.FossilText:
	text "Oh! That is"
	line "@"
	text_ram wStringBuffer4
	text "!"

	para "It is fossil of"
	line "@"
	text_ram wStringBuffer3
	text ", a"
	cont "#MON that is"
	cont "already extinct!"

	para "My Resurrection"
	line "Machine will make"
	cont "that #MON live"
	cont "again!"
	done

.GiveFossilText:
	text "So! You hurry and"
	line "give me that!"

	para "<PLAYER> handed"
	line "over @"
	text_ram wStringBuffer4
	text "!"
	prompt

.GotMonText:
	text "Where were you?"

	para "Your fossil is"
	line "back to life!"

	para "It was @"
	text_ram wStringBuffer3
	text ""
	line "like I think!"

	para "<PLAYER> got"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

CinnabarLabFossilRoom_GarretScript:
	faceplayer
	opentext
	trade NPC_TRADE_GARETT
	waitbutton
	closetext
	end

CinnabarLabFossilRoom_MapEvents:
	def_warp_events
	warp_event  2,  7, CINNABAR_LAB, 5
	warp_event  3,  7, CINNABAR_LAB, 5

	def_coord_events

	def_bg_events
	bg_event  0,  4, BGEVENT_UP, CinnabarLabFossilRoom_PCScript
	bg_event  2,  4, BGEVENT_UP, CinnabarLabFossilRoom_PCScript

	def_object_events
	object_event  5,  2, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarLabFossilRoom_ReviverScript, -1
	object_event  7,  6, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarLabFossilRoom_GarretScript, -1
