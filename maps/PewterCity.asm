	object_const_def
	const PEWTERCITY_COOLTRAINER_F
	const PEWTERCITY_COOLTRAINER_M
	const PEWTERCITY_KANTO_SUPER_NERD1
	const PEWTERCITY_KANTO_SUPER_NERD2
	const PEWTERCITY_KANTO_YOUNGSTER

PewterCity_MapScripts:
	def_scene_scripts
	scene_script .Dummy ; SCENE_DEFAULT
	scene_script .Dummy ; SCENE_FINISHED

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.Dummy:
	end

.FlyPoint:
	setflag ENGINE_FLYPOINT_PEWTER
	clearevent EVENT_BOUGHT_MUSEUM_TICKET
	endcallback

PewterCity_TrainerTipsScript:
	jumptext .Text
.Text:
	text "TRAINER TIPS"

	para "Any #MON that"
	line "takes part in"
	cont "battle, however"
	cont "short, earns EXP!"
	done

PewterCity_PoliceSignScript:
	jumptext .Text
.Text:
	text "NOTICE!"

	para "Thieves have been"
	line "stealing #MON"
	cont "fossils at MT."
	cont "MOON! Please call"
	cont "PEWTER POLICE"
	cont "with any info!"
	done

PewterCity_MartSignScript:
	jumptext .Text
.Text:
	text "All your item"
	line "needs fulfilled!"
	cont "#MON MART"
	done

PewterCity_PMCSignScript:
	jumptext .Text
.Text:
	text "Heal your #MON!"
	line "#MON CENTER"
	done

PewterCity_MuseumSignScript:
	jumptext .Text
.Text:
	text "PEWTER MUSEUM"
	line "OF SCIENCE"
	done

PewterCity_GymSignScript:
	jumptext .Text
.Text:
	text "PEWTER CITY"
	line "#MON GYM"
	cont "LEADER: BROCK"

	para "The Rock Solid"
	line "#MON Trainer!"
	done

PewterCity_NameSignScript:
	jumptext .Text
.Text:
	text "PEWTER CITY"
	line "A Stone Gray"
	cont "City"
	done

PewterCity_CooltrainerFScript:
	jumptextfaceplayer .Text
.Text:
	text "It's rumored that"
	line "CLEFAIRYs came"
	cont "from the moon!"

	para "They appeared "
	line "after MOON STONE"
	cont "fell on MT.MOON."
	done

PewterCity_CooltrainerMScript:
	jumptextfaceplayer .Text
.Text:
	text "There aren't many"
	line "serious #MON"
	cont "trainers here!"

	para "They're all like"
	line "BUG CATCHERs,"
	cont "but PEWTER GYM's"
	cont "BROCK is totally"
	cont "into it!"
	done

PewterCity_MuseumGuyScript:
	faceplayer
	opentext
	writetext .HaveYouBeen
	yesorno
	iffalse .DidNotGo
	writetext .HowWasIt
	waitbutton
	closetext
	end

.DidNotGo:
	writetext .HaveToGo
	waitbutton
	closetext
	playmusic MUSIC_SHOW_ME_AROUND
	follow PEWTERCITY_KANTO_SUPER_NERD1, PLAYER
	applymovement PEWTERCITY_KANTO_SUPER_NERD1, .WalkToMuseum
	stopfollow
	special RestartMapMusic
	opentext
	writetext .RightHere
	waitbutton
	closetext
	applymovement PEWTERCITY_KANTO_SUPER_NERD1, .LeaveScreen
	disappear PEWTERCITY_KANTO_SUPER_NERD1
	moveobject PEWTERCITY_KANTO_SUPER_NERD1, 27, 17
	appear PEWTERCITY_KANTO_SUPER_NERD1
	end

.HaveYouBeen:
	text "Did you check out"
	line "the MUSEUM?"
	done

.HowWasIt:
	text "Weren't those"
	line "fossils from MT."
	cont "MOON amazing?"
	done

.HaveToGo:
	text "Really?"
	line "You absolutely"
	cont "have to go!"
	done

.RightHere:
	text "It's right here!"
	line "You have to pay"
	cont "to get in, but"
	cont "it's worth it!"
	cont "See you around!"
	done

.WalkToMuseum:
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step UP
	step LEFT
	turn_head UP
	step_end

.LeaveScreen:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

PewterCity_RepelGuyScript:
	faceplayer
	opentext
	writetext .DoYouKnow
	yesorno
	iffalse .DoesNotKnow
	writetext .ThatsRight
	waitbutton
	closetext
	end

.DoesNotKnow:
	writetext .SprayingRepel
	waitbutton
	closetext
	end

.DoYouKnow:
	text "Psssst!"
	line "Do you know what"
	cont "I'm doing?"
	done

.ThatsRight:
	text "That's right!"
	line "It's hard work!"
	done

.SprayingRepel:
	text "I'm spraying REPEL"
	line "to keep #MON"
	cont "out of my garden!"
	done

PewterCity_YoureATrainerScript:
	jumptext .Text
.Text
	text "You're a trainer"
	line "right? BROCK's"
	cont "looking for new"
	cont "challengers!"
	cont "Follow me!"
	done

PewterCity_RightStuffScript:
	applymovement PEWTERCITY_KANTO_YOUNGSTER, PewterCity_YoungsterFollowMove
	stopfollow
	special RestartMapMusic
	scall .ShowText
	applymovement PEWTERCITY_KANTO_YOUNGSTER, .MoveOffScreen
	disappear PEWTERCITY_KANTO_YOUNGSTER
	moveobject PEWTERCITY_KANTO_YOUNGSTER, 35, 16
	appear PEWTERCITY_KANTO_YOUNGSTER
	end

.MoveOffScreen:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

.ShowText:
	jumptext .Text
.Text
	text "If you have the"
	line "right stuff, go"
	cont "take on BROCK!"
	done

PewterCity_YoungsterTalkScript:
	faceplayer
	scall PewterCity_YoureATrainerScript
	playmusic MUSIC_SHOW_ME_AROUND
	follow PEWTERCITY_KANTO_YOUNGSTER, PLAYER
	applymovement PEWTERCITY_KANTO_YOUNGSTER, PewterCity_YoungsterMove_SetupT
	sjump PewterCity_RightStuffScript

PewterCity_YoungsterScript1:
	scall PewterCity_YoureATrainerScript
	playmusic MUSIC_SHOW_ME_AROUND
	follow PLAYER, PEWTERCITY_KANTO_YOUNGSTER
	applymovement PLAYER, PewterCity_YoungsterMove_Setup1_1
	stopfollow
	follow PEWTERCITY_KANTO_YOUNGSTER, PLAYER
	applymovement PEWTERCITY_KANTO_YOUNGSTER, PewterCity_YoungsterMove_Setup1_2
	sjump PewterCity_RightStuffScript

PewterCity_YoungsterScript2:
	scall PewterCity_YoureATrainerScript
	playmusic MUSIC_SHOW_ME_AROUND
	applymovement PEWTERCITY_KANTO_YOUNGSTER, PewterCity_YoungsterMove_Setup2_1
	follow PEWTERCITY_KANTO_YOUNGSTER, PLAYER
	applymovement PEWTERCITY_KANTO_YOUNGSTER, PewterCity_YoungsterMove_Setup2_2
	sjump PewterCity_RightStuffScript

PewterCity_YoungsterScript3:
	scall PewterCity_YoureATrainerScript
	playmusic MUSIC_SHOW_ME_AROUND
	applymovement PEWTERCITY_KANTO_YOUNGSTER, PewterCity_YoungsterMove_Setup3_1
	applymovement PLAYER, PewterCity_YoungsterMove_Setup3_2
	follow PEWTERCITY_KANTO_YOUNGSTER, PLAYER
	sjump PewterCity_RightStuffScript

PewterCity_YoungsterScript4:
	scall PewterCity_YoureATrainerScript
	playmusic MUSIC_SHOW_ME_AROUND
	applymovement PEWTERCITY_KANTO_YOUNGSTER, PewterCity_YoungsterMove_Setup4_1
	applymovement PLAYER, PewterCity_YoungsterMove_Setup4_2
	follow PEWTERCITY_KANTO_YOUNGSTER, PLAYER
	sjump PewterCity_RightStuffScript

PewterCity_YoungsterMove_SetupT:
PewterCity_YoungsterMove_Setup3_1:
PewterCity_YoungsterMove_Setup4_1:
	step DOWN
PewterCity_YoungsterMove_Setup1_2:
PewterCity_YoungsterMove_Setup2_1:
PewterCity_YoungsterMove_Setup2_2:
	step DOWN
	step_end

PewterCity_YoungsterMove_Setup4_2:
	step UP
PewterCity_YoungsterMove_Setup1_1:
PewterCity_YoungsterMove_Setup3_2:
	step LEFT
	step_end

PewterCity_YoungsterFollowMove:
rept 15
	step LEFT
endr
rept 5
	step UP
endr
rept 11
	step LEFT
endr
rept 5
	step DOWN
endr
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head LEFT
	step_end

PewterCity_MapEvents:
	def_warp_events
	warp_event 14,  7, MUSEUM_1F, 1
	warp_event 19,  5, MUSEUM_1F, 3
	warp_event 16, 17, PEWTER_GYM, 1
	warp_event 29, 13, PEWTER_NIDORAN_HOUSE, 1
	warp_event 23, 17, PEWTER_MART, 1
	warp_event  7, 29, PEWTER_SPEECH_HOUSE, 1
	warp_event 13, 25, PEWTER_POKECENTER, 1

	def_coord_events
	coord_event 35, 17, SCENE_DEFAULT, PewterCity_YoungsterScript1
	coord_event 36, 17, SCENE_DEFAULT, PewterCity_YoungsterScript2
	coord_event 37, 18, SCENE_DEFAULT, PewterCity_YoungsterScript3
	coord_event 37, 19, SCENE_DEFAULT, PewterCity_YoungsterScript4

	def_bg_events
	bg_event 19, 29, BGEVENT_READ, PewterCity_TrainerTipsScript
	bg_event 33, 19, BGEVENT_READ, PewterCity_PoliceSignScript
	bg_event 24, 17, BGEVENT_READ, PewterCity_MartSignScript
	bg_event 14, 25, BGEVENT_READ, PewterCity_PMCSignScript
	bg_event 15,  9, BGEVENT_READ, PewterCity_MuseumSignScript
	bg_event 11, 17, BGEVENT_READ, PewterCity_GymSignScript
	bg_event 25, 23, BGEVENT_READ, PewterCity_NameSignScript

	def_object_events
	object_event  8, 15, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterCity_CooltrainerFScript, -1
	object_event 17, 25, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterCity_CooltrainerMScript, -1
	object_event 27, 17, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterCity_MuseumGuyScript, EVENT_PEWTER_CITY_MUSEUM_GUY
	object_event 26, 25, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterCity_RepelGuyScript, -1
	object_event 35, 16, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterCity_YoungsterTalkScript, EVENT_PEWTER_CITY_YOUNGSTER
