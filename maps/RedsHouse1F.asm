	object_const_def
	const REDSHOUSE1F_KANTO_MOM

RedsHouse1F_MapScripts:
	def_scene_scripts

	def_callbacks

RedsHouse1FTVScript:
	jumptext .Text
.Text
	text "There's a movie"
	line "on TV. Four boys"
	cont "are walking on"
	cont "railroad tracks."

	para "I better go too."
	done

RedsHouse1FRedsMom:
	faceplayer
	opentext
	checkevent EVENT_GOT_STARTER
	iftrue .Heal
	writetext .LeaveHomeText
	waitbutton
	closetext
	end

.Heal
	writetext .HealText1
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special FadeInQuickly
	special RestartMapMusic
	opentext
	writetext .HealText2
	waitbutton
	closetext
	end

.LeaveHomeText
	text "MOM: Right."
	line "All boys leave"
	cont "home some day."
	cont "It said so on TV."

	para "PROF.OAK, next"
	line "door, is looking"
	cont "for you."
	done

.HealText1
	text "MOM: <PLAYER>!"
	line "You should take a"
	cont "quick rest."
	prompt

.HealText2
	text "MOM: Oh good!"
	line "You and your"
	cont "#MON are"
	cont "looking great!"
	cont "Take care now!"
	done

RedsHouse1F_MapEvents:
	def_warp_events
	warp_event  2,  7, PALLET_TOWN, 1
	warp_event  3,  7, PALLET_TOWN, 1
	warp_event  7,  1, REDS_HOUSE_2F, 1

	def_coord_events

	def_bg_events
	bg_event  3,  1, BGEVENT_UP, RedsHouse1FTVScript

	def_object_events
	object_event  5,  4, SPRITE_KANTO_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RedsHouse1FRedsMom, -1
