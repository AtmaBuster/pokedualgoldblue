	object_const_def
	const LAVENDERTOWN_LITTLE_GIRL
	const LAVENDERTOWN_COOLTRAINER_M
	const LAVENDERTOWN_KANTO_SUPER_NERD

LavenderTown_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_LAVENDER
	endcallback

LavenderTown_GhostGirlsScript:
	faceplayer
	opentext
	writetext .Text1
	yesorno
	iffalse .SaidNo
	writetext .Text2
	waitbutton
	closetext
	end

.SaidNo:
	writetext .Text3
	waitbutton
	closetext
	end

.Text1:
	text "Do you believe in"
	line "GHOSTs?"
	done

.Text2:
	text "Really? So there"
	line "are believers..."
	done

.Text3:
	text "Hahaha, I guess"
	line "not."

	para "That white hand"
	line "on your shoulder,"
	cont "it's not real."
	done

LavenderTown_CooltrainerScript:
	jumptextfaceplayer .Text
.Text:
	text "This town is known"
	line "as the grave site"
	cont "of #MON."

	para "Memorial services"
	line "are held in"
	cont "#MON TOWER."
	done

LavenderTown_SuperNerdScript:
	jumptextfaceplayer .Text
.Text:
	text "GHOSTs appeared"
	line "in #MON TOWER."

	para "I think they're"
	line "the spirits of"
	cont "#MON that the"
	cont "ROCKETs killed."
	done


LavenderTown_NameSignScript:
	jumptext .Text
.Text:
	text "LAVENDER TOWN"
	line "The Noble Purple"
	cont "Town"
	done

LavenderTown_SilphScopeSignScript:
	jumptext .Text
.Text:
	text "New SILPH SCOPE!"

	para "Make the Invisible"
	line "Plain to See!"

	para "SILPH CO."
	done

LavenderTown_MartSignScript:
	jumptext .Text
.Text:
	text "All your item"
	line "needs fulfilled!"
	cont "#MON MART"
	done

LavenderTown_PMCSignScript:
	jumptext .Text
.Text:
	text "Heal your #MON!"
	line "#MON CENTER"
	done

LavenderTown_VolunteerSignScript:
	jumptext .Text
.Text:
	text "LAVENDER VOLUNTEER"
	line "#MON HOUSE"
	done

LavenderTown_TowerSignScript:
	jumptext .Text
.Text:
	text "May the Souls of"
	line "#MON Rest Easy"
	cont "#MON TOWER"
	done


LavenderTown_MapEvents:
	def_warp_events
	warp_event  3,  5, LAVENDER_POKECENTER, 1
	warp_event 14,  5, POKEMON_TOWER_1F, 1
	warp_event  7,  9, MR_FUJIS_HOUSE, 1
	warp_event 15, 13, LAVENDER_MART, 1
	warp_event  3, 13, LAVENDER_CUBONE_HOUSE, 1
	warp_event  7, 13, NAME_RATERS_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 11,  9, BGEVENT_READ, LavenderTown_NameSignScript
	bg_event  9,  3, BGEVENT_READ, LavenderTown_SilphScopeSignScript
	bg_event 16, 13, BGEVENT_READ, LavenderTown_MartSignScript
	bg_event  4,  5, BGEVENT_READ, LavenderTown_PMCSignScript
	bg_event  5,  9, BGEVENT_READ, LavenderTown_VolunteerSignScript
	bg_event 17,  7, BGEVENT_READ, LavenderTown_TowerSignScript

	def_object_events
	object_event 15,  9, SPRITE_LITTLE_GIRL, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavenderTown_GhostGirlsScript, -1
	object_event  9, 10, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavenderTown_CooltrainerScript, -1
	object_event  8,  7, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavenderTown_SuperNerdScript, -1
