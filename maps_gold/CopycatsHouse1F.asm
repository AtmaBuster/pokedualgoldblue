	object_const_def
	const COPYCATSHOUSE1F_MIDDLE_AGED_WOMAN
	const COPYCATSHOUSE1F_POKEFAN_M
	const COPYCATSHOUSE1F_FAIRY

CopycatsHouse1F_MapScripts:
	def_scene_scripts

	def_callbacks

CopycatsHouse1F_DadScript:
	jumptextfaceplayer .Text
.Text:
	text "My daughter is so"
	line "self-centered."
	cont "She only has a"
	cont "few friends."
	done

CopycatsHouse1F_MomScript:
	jumptextfaceplayer .Text
.Text:
	text "My daughter likes"
	line "to mimic people."

	para "Her mimicry has"
	line "earned her the"
	cont "nickname COPYCAT"
	cont "around here!"
	done

CopycatsHouse1F_ChanseyScript:
	faceplayer
	opentext
	writetext .Text
	cry CHANSEY
	waitsfx
	closetext
	end

.Text:
	text "CHANSEY: Chaan!"
	line "Sii!"
	done

CopycatsHouse1F_MapEvents:
	def_warp_events
	warp_event  2,  7, SAFFRON_CITY, 1
	warp_event  3,  7, SAFFRON_CITY, 1
	warp_event  7,  1, COPYCATS_HOUSE_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  2, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CopycatsHouse1F_DadScript, -1
	object_event  5,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CopycatsHouse1F_MomScript, -1
	object_event  1,  4, SPRITE_FAIRY, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CopycatsHouse1F_ChanseyScript, -1
