	object_const_def
	const LAVENDERCUBONEHOUSE_MONSTER
	const LAVENDERCUBONEHOUSE_BRUNETTE_GIRL

LavenderCuboneHouse_MapScripts:
	def_scene_scripts

	def_callbacks

LavenderCuboneHouse_CuboneScript:
	faceplayer
	opentext
	writetext .Text
	cry CUBONE
	waitsfx
	closetext
	end

.Text:
	text "CUBONE: Kyarugoo!"
	done

LavenderCuboneHouse_GirlScript:
	faceplayer
	opentext
	checkevent EVENT_RESCUED_MR_FUJI
	iftrue .RescuedMrFuji
	writetext .Text1
	waitbutton
	closetext
	end

.RescuedMrFuji:
	writetext .Text2
	waitbutton
	closetext
	end

.Text1:
	text "I hate those"
	line "horrible ROCKETs!"

	para "That poor CUBONE's"
	line "mother..."

	para "It was killed"
	line "trying to escape"
	cont "from TEAM ROCKET!"
	done

.Text2:
	text "The GHOST of"
	line "#MON TOWER is"
	cont "gone!"

	para "Someone must have"
	line "soothed its"
	cont "restless soul!"
	done

LavenderCuboneHouse_MapEvents:
	def_warp_events
	warp_event  2,  7, LAVENDER_TOWN, 5
	warp_event  3,  7, LAVENDER_TOWN, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  5, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavenderCuboneHouse_CuboneScript, -1
	object_event  2,  4, SPRITE_BRUNETTE_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavenderCuboneHouse_GirlScript, -1
