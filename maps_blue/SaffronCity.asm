	object_const_def
	const SAFFRONCITY_KANTO_ROCKET1
	const SAFFRONCITY_KANTO_ROCKET2
	const SAFFRONCITY_KANTO_ROCKET3
	const SAFFRONCITY_KANTO_ROCKET4
	const SAFFRONCITY_KANTO_ROCKET5
	const SAFFRONCITY_KANTO_ROCKET6
	const SAFFRONCITY_KANTO_ROCKET7
	const SAFFRONCITY_KANTO_SCIENTIST
	const SAFFRONCITY_SILPH_WORKER
	const SAFFRONCITY_KANTO_ERIKA
	const SAFFRONCITY_GENTLEMAN
	const SAFFRONCITY_KANTO_BIRD
	const SAFFRONCITY_KANTO_ROCKER
	const SAFFRONCITY_KANTO_ROCKET8

SaffronCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint
	callback MAPCALLBACK_OBJECTS, .SilphGuard

.FlyPoint:
	setflag ENGINE_FLYPOINT_SAFFRON
	endcallback

.SilphGuard:
	checkevent EVENT_SAFFRON_CITY_ROCKET_GROUP1
	iftrue .EndCallback
	checkevent EVENT_RESCUED_MR_FUJI
	iffalse .EndCallback
	moveobject SAFFRONCITY_KANTO_ROCKET8, 19, 22
.EndCallback:
	endcallback

SaffronCity_Rocket1Script:
	jumptextfaceplayer .Text
.Text:
	text "What do you want?"
	line "Get lost!"
	done

SaffronCity_Rocket2Script:
	jumptextfaceplayer .Text
.Text:
	text "BOSS said he'll"
	line "take this town!"
	done

SaffronCity_Rocket3Script:
	jumptextfaceplayer .Text
.Text:
	text "Get out of the"
	line "way!"
	done

SaffronCity_Rocket4Script:
	jumptextfaceplayer .Text
.Text:
	text "SAFFRON belongs"
	line "to TEAM ROCKET!"
	done

SaffronCity_Rocket5Script:
	jumptextfaceplayer .Text
.Text:
	text "Being evil makes"
	line "me feel so alive!"
	done

SaffronCity_Rocket6Script:
	jumptextfaceplayer .Text
.Text:
	text "Ow! Watch where"
	line "you're walking!"
	done

SaffronCity_Rocket7Script:
	jumptextfaceplayer .Text
.Text:
	text "With SILPH under"
	line "control, we can"
	cont "exploit #MON"
	cont "around the world!"
	done

SaffronCity_BeatTeamRocketGuyScript:
	jumptextfaceplayer .Text
.Text:
	text "You beat TEAM"
	line "ROCKET all alone?"
	cont "That's amazing!"
	done

SaffronCity_SafeAgainGuyScript:
	jumptextfaceplayer .Text
.Text:
	text "Yeah! TEAM ROCKET"
	line "is gone!"
	cont "It's safe to go"
	cont "out again!"
	done

SaffronCity_FlockingBackGirlScript:
	jumptextfaceplayer .Text
.Text:
	text "People should be"
	line "flocking back to"
	cont "SAFFRON now."
	done

SaffronCity_AlreadyOverGuyScript:
	jumptextfaceplayer .Text
.Text:
	text "I flew here on my"
	line "PIDGEOT when I"
	cont "read about SILPH."

	para "It's already over?"
	line "I missed the"
	cont "media action."
	done

SaffronCity_PidgeotScript:
	faceplayer
	opentext
	writetext .Text
	cry PIDGEOT
	waitsfx
	closetext
	end

.Text:
	text "PIDGEOT: Bi bibii!"
	done

SaffronCity_BossEscapeGuyScript:
	jumptextfaceplayer .Text
.Text:
	text "I saw ROCKET"
	line "BOSS escaping"
	cont "SILPH's building."
	done

SaffronCity_SilphGuardScript:
	faceplayer
	opentext
	checkevent EVENT_RESCUED_MR_FUJI
	iftrue .Sleeping
	writetext .Text1
	waitbutton
	closetext
	end

.Sleeping:
	writetext .Text2
	waitbutton
	closetext
	end

.Text1:
	text "I'm a security"
	line "guard."

	para "Suspicious kids I"
	line "don't allow in!"
	done

.Text2:
	text "..."
	line "Snore..."

	para "Hah! He's taking"
	line "a snooze!"
	done

SaffronCity_NameSignScript:
	jumptext .Text
.Text:
	text "SAFFRON CITY"
	line "Shining, Golden"
	cont "Land of Commerce"
	done

SaffronCity_DojoSignScript:
	jumptext .Text
.Text:
	text "FIGHTING DOJO"
	done

SaffronCity_GymSignScript:
	jumptext .Text
.Text:
	text "SAFFRON CITY"
	line "#MON GYM"
	cont "LEADER: SABRINA"

	para "The Master of"
	line "Psychic #MON!"
	done

SaffronCity_MartSignScript:
	jumptext .Text
.Text:
	text "All your item"
	line "needs fulfilled!"
	cont "#MON MART"
	done

SaffronCity_TrainerTips1Script:
	jumptext .Text
.Text:
	text "TRAINER TIPS"

	para "FULL HEAL cures"
	line "all ailments like"
	cont "sleep and burns."

	para "It costs a bit"
	line "more, but it's"
	cont "more convenient."
	done

SaffronCity_TrainerTips2Script:
	jumptext .Text
.Text:
	text "TRAINER TIPS"

	para "New GREAT BALL"
	line "offers improved"
	cont "capture rates."

	para "Try it on those"
	line "hard-to-catch"
	cont "#MON."
	done

SaffronCity_SilphSignScript:
	jumptext .Text
.Text:
	text "SILPH CO."
	line "OFFICE BUILDING"
	done

SaffronCity_PMCSignScript:
	jumptext .Text
.Text:
	text "Heal your #MON!"
	line "#MON CENTER"
	done

SaffronCity_MrPsychicSignScript:
	jumptext .Text
.Text:
	text "MR.PSYCHIC's"
	line "HOUSE"
	done

SaffronCity_SilphAdScript:
	jumptext .Text
.Text:
	text "SILPH's latest"
	line "product!"

	para "Release to be"
	line "determined..."
	done

SaffronCity_MapEvents:
	def_warp_events
	warp_event  7,  5, COPYCATS_HOUSE_1F, 1
	warp_event 26,  3, FIGHTING_DOJO, 1
	warp_event 34,  3, SAFFRON_GYM, 1
	warp_event 13, 11, SAFFRON_PIDGEY_HOUSE, 1
	warp_event 25, 11, SAFFRON_MART, 1
	warp_event 18, 21, SILPH_CO_1F, 1
	warp_event  9, 29, SAFFRON_POKECENTER, 1
	warp_event 29, 29, MR_PSYCHICS_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 17,  5, BGEVENT_READ, SaffronCity_NameSignScript
	bg_event 27,  5, BGEVENT_READ, SaffronCity_DojoSignScript
	bg_event 35,  5, BGEVENT_READ, SaffronCity_GymSignScript
	bg_event 26, 11, BGEVENT_READ, SaffronCity_MartSignScript
	bg_event 39, 19, BGEVENT_READ, SaffronCity_TrainerTips1Script
	bg_event  5, 21, BGEVENT_READ, SaffronCity_TrainerTips2Script
	bg_event 15, 21, BGEVENT_READ, SaffronCity_SilphSignScript
	bg_event 10, 29, BGEVENT_READ, SaffronCity_PMCSignScript
	bg_event 27, 29, BGEVENT_READ, SaffronCity_MrPsychicSignScript
	bg_event  1, 19, BGEVENT_READ, SaffronCity_SilphAdScript

	def_object_events
	object_event  7,  6, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronCity_Rocket1Script, EVENT_SAFFRON_CITY_ROCKET_GROUP1
	object_event 20,  8, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronCity_Rocket2Script, EVENT_SAFFRON_CITY_ROCKET_GROUP1
	object_event 34,  4, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronCity_Rocket3Script, EVENT_SAFFRON_CITY_ROCKET_GROUP1
	object_event 13, 12, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronCity_Rocket4Script, EVENT_SAFFRON_CITY_ROCKET_GROUP1
	object_event 11, 25, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronCity_Rocket5Script, EVENT_SAFFRON_CITY_ROCKET_GROUP1
	object_event 32, 13, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronCity_Rocket6Script, EVENT_SAFFRON_CITY_ROCKET_GROUP1
	object_event 18, 30, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronCity_Rocket7Script, EVENT_SAFFRON_CITY_ROCKET_GROUP1
	object_event  8, 14, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronCity_BeatTeamRocketGuyScript, EVENT_SAFFRON_CITY_ROCKET_GROUP2
	object_event 23, 23, SPRITE_SILPH_WORKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronCity_SafeAgainGuyScript, EVENT_SAFFRON_CITY_ROCKET_GROUP2
	object_event 17, 30, SPRITE_KANTO_ERIKA, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronCity_FlockingBackGirlScript, EVENT_SAFFRON_CITY_ROCKET_GROUP2
	object_event 30, 12, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronCity_AlreadyOverGuyScript, EVENT_SAFFRON_CITY_ROCKET_GROUP2
	object_event 31, 12, SPRITE_KANTO_BIRD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronCity_PidgeotScript, EVENT_SAFFRON_CITY_ROCKET_GROUP2
	object_event 18,  8, SPRITE_KANTO_ROCKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronCity_BossEscapeGuyScript, EVENT_SAFFRON_CITY_ROCKET_GROUP2
	object_event 18, 22, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronCity_SilphGuardScript, EVENT_SAFFRON_CITY_ROCKET_GROUP1
