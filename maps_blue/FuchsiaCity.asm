	object_const_def
	const FUCHSIACITY_KANTO_YOUNGSTER1
	const FUCHSIACITY_GAMBLER
	const FUCHSIACITY_FISHER
	const FUCHSIACITY_KANTO_YOUNGSTER2
	const FUCHSIACITY_FAIRY
	const FUCHSIACITY_POKE_BALL
	const FUCHSIACITY_MONSTER1
	const FUCHSIACITY_MONSTER2
	const FUCHSIACITY_SEEL
	const FUCHSIACITY_FOSSIL

FuchsiaCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_FUCHSIA
	endcallback

FuchsiaCity_KidScript:
	jumptextfaceplayer .Text
.Text:
	text "Did you try the"
	line "SAFARI GAME? Some"
	cont "#MON can only"
	cont "be caught there."
	done

FuchsiaCity_GamblerScript:
	jumptextfaceplayer .Text
.Text:
	text "SAFARI ZONE has a"
	line "zoo in front of"
	cont "the entrance."

	para "Out back is the"
	line "SAFARI GAME for"
	cont "catching #MON."
	done

FuchsiaCity_ErikScript:
	jumptextfaceplayer .Text
.Text:
	text "ERIK: Where's"
	line "SARA? I said I'd"
	cont "meet her here."
	done

FuchsiaCity_VoltorbKidScript:
	jumptextfaceplayer .Text
.Text:
	text "That item ball in"
	line "there is really a"
	cont "#MON."
	done

FuchsiaCity_NameSignScript:
	jumptext .Text
.Text:
	text "FUCHSIA CITY"
	line "Behold! It's"
	cont "Passion Pink!"
	done

FuchsiaCity_SafariGameSignScript:
	jumptext .Text
.Text:
	text "SAFARI GAME"
	line "#MON-U-CATCH!"
	done

FuchsiaCity_MartSignScript:
	jumptext .Text
.Text:
	text "All your item"
	line "needs fulfilled!"
	cont "#MON MART"
	done

FuchsiaCity_PMCSignScript:
	jumptext .Text
.Text:
	text "Heal your #MON!"
	line "#MON CENTER"
	done

FuchsiaCity_WardensHouseSignScript:
	jumptext .Text
.Text:
	text "SAFARI ZONE"
	line "WARDEN's HOME"
	done

FuchsiaCity_SafariZoneSignScript:
	jumptext .Text
.Text:
	text "#MON PARADISE"
	line "SAFARI ZONE"
	done

FuchsiaCity_GymSignScript:
	jumptext .Text
.Text:
	text "FUCHSIA CITY"
	line "#MON GYM"
	cont "LEADER: KOGA"

	para "The Poisonous"
	line "Ninja Master"
	done

FuchsiaCity_ChanseySignScript:
	opentext
	writetext .Text
	setval CHANSEY
	sjump FuchsiaCity_ZooSignScript
.Text:
	text "Name: CHANSEY"

	para "Catching one is"
	line "all up to chance."
	prompt

FuchsiaCity_VoltorbSignScript:
	opentext
	writetext .Text
	setval VOLTORB
	sjump FuchsiaCity_ZooSignScript
.Text:
	text "Name: VOLTORB"

	para "The very image of"
	line "a # BALL."
	prompt

FuchsiaCity_KangaskhanSignScript:
	opentext
	writetext .Text
	setval KANGASKHAN
	sjump FuchsiaCity_ZooSignScript
.Text:
	text "Name: KANGASKHAN"

	para "A maternal #MON"
	line "that raises its"
	cont "young in a pouch"
	cont "on its belly."
	prompt

FuchsiaCity_SlowpokeSignScript:
	opentext
	writetext .Text
	setval SLOWPOKE
	sjump FuchsiaCity_ZooSignScript
.Text:
	text "Name: SLOWPOKE"

	para "Friendly and very"
	line "slow moving."
	prompt

FuchsiaCity_LaprasSignScript:
	opentext
	writetext .Text
	setval LAPRAS
	sjump FuchsiaCity_ZooSignScript
.Text:
	text "Name: LAPRAS"

	para "A.K.A. the king"
	line "of the seas."
	prompt

FuchsiaCity_FossilSignScript:
	opentext
	checkevent EVENT_GOT_DOME_FOSSIL
	iftrue .Omanyte
	checkevent EVENT_GOT_HELIX_FOSSIL
	iftrue .Kabuto
	writetext .ErrorText
	waitbutton
	closetext
	end

.Omanyte:
	writetext .OmanyteText
	setval OMANYTE
	sjump FuchsiaCity_ZooSignScript

.Kabuto:
	writetext .KabutoText
	setval KABUTO
	sjump FuchsiaCity_ZooSignScript

.OmanyteText:
	text "Name: OMANYTE"

	para "A #MON that"
	line "was resurrected"
	cont "from a fossil."
	prompt

.KabutoText:
	text "Name: KABUTO"

	para "A #MON that"
	line "was resurrected"
	cont "from a fossil."
	prompt

.ErrorText:
	text "..."
	done

FuchsiaCity_ZooSignScript:
	closetext
	pokepic 0 ; from wScriptVar
	cry 0     ; from wScriptVar
	waitbutton
	closepokepic
	closetext
	end

FuchsiaCity_MapEvents:
	def_warp_events
	warp_event  5, 13, FUCHSIA_MART, 1
	warp_event 11, 27, FUCHSIA_BILLS_GRANDPAS_HOUSE, 1
	warp_event 19, 27, FUCHSIA_POKECENTER, 1
	warp_event 27, 27, WARDENS_HOUSE, 1
	warp_event 18,  3, SAFARI_ZONE_GATE, 1
	warp_event  8, 27, FUCHSIA_GYM, 1
	warp_event 22, 13, FUCHSIA_MEETING_ROOM, 1
	warp_event 31, 27, FUCHSIA_GOOD_ROD_HOUSE, 2
	warp_event 31, 24, FUCHSIA_GOOD_ROD_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 15, 23, BGEVENT_READ, FuchsiaCity_NameSignScript
	bg_event 25, 15, BGEVENT_READ, FuchsiaCity_NameSignScript
	bg_event 17,  5, BGEVENT_READ, FuchsiaCity_SafariGameSignScript
	bg_event  6, 13, BGEVENT_READ, FuchsiaCity_MartSignScript
	bg_event 20, 27, BGEVENT_READ, FuchsiaCity_PMCSignScript
	bg_event 27, 29, BGEVENT_READ, FuchsiaCity_WardensHouseSignScript
	bg_event 21, 15, BGEVENT_READ, FuchsiaCity_SafariZoneSignScript
	bg_event  5, 29, BGEVENT_READ, FuchsiaCity_GymSignScript
	bg_event 33,  7, BGEVENT_READ, FuchsiaCity_ChanseySignScript
	bg_event 27,  7, BGEVENT_READ, FuchsiaCity_VoltorbSignScript
	bg_event 13,  7, BGEVENT_READ, FuchsiaCity_KangaskhanSignScript
	bg_event 31, 13, BGEVENT_READ, FuchsiaCity_SlowpokeSignScript
	bg_event 13, 15, BGEVENT_READ, FuchsiaCity_LaprasSignScript
	bg_event  7,  7, BGEVENT_READ, FuchsiaCity_FossilSignScript

	def_object_events
	object_event 10, 12, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaCity_KidScript, -1
	object_event 28, 17, SPRITE_GAMBLER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaCity_GamblerScript, -1
	object_event 30, 14, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaCity_ErikScript, -1
	object_event 24,  8, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaCity_VoltorbKidScript, -1
	object_event 31,  5, SPRITE_FAIRY, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 25,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 12,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 30, 12, SPRITE_MONSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  8, 17, SPRITE_SEEL, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  6,  5, SPRITE_FOSSIL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
