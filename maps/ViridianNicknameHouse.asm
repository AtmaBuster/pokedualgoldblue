	object_const_def
	const VIRIDIANNICKNAMEHOUSE_BALDING_GUY
	const VIRIDIANNICKNAMEHOUSE_LITTLE_GIRL
	const VIRIDIANNICKNAMEHOUSE_KANTO_BIRD
	const VIRIDIANNICKNAMEHOUSE_CLIPBOARD

ViridianNicknameHouse_MapScripts:
	def_scene_scripts

	def_callbacks

ViridianNicknameHouse_ManScript:
	jumptextfaceplayer .Text
.Text:
	text "Coming up with"
	line "nicknames is fun,"
	cont "but hard."

	para "Simple names are"
	line "the easiest to"
	cont "remember."
	done

ViridianNicknameHouse_GirlScript:
	jumptextfaceplayer .Text
.Text:
	text "My Daddy loves"
	line "#MON too."
	done

ViridianNicknameHouse_SpearowScript:
	faceplayer
	opentext
	writetext .Text
	cry SPEAROW
	waitbutton
	closetext
	end

.Text:
	text "SPEARY: Tetweet!"
	done

ViridianNicknameHouse_ClipboardScript:
	jumptext .Text
.Text:
	text "SPEAROW"
	line "Name: SPEARY"
	done

ViridianNicknameHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VIRIDIAN_CITY, 4
	warp_event  3,  7, VIRIDIAN_CITY, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_BALDING_GUY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianNicknameHouse_ManScript, -1
	object_event  1,  4, SPRITE_LITTLE_GIRL, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianNicknameHouse_GirlScript, -1
	object_event  5,  5, SPRITE_KANTO_BIRD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianNicknameHouse_SpearowScript, -1
	object_event  4,  0, SPRITE_CLIPBOARD, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianNicknameHouse_ClipboardScript, -1
