	object_const_def
	const NAMERATERSHOUSE_SILPH_PRESIDENT

NameRatersHouse_MapScripts:
	def_scene_scripts

	def_callbacks

NameRatersHouse_NameRaterScript:
	faceplayer
	opentext
	special NameRater
	waitbutton
	closetext
	end

NameRatersHouse_MapEvents:
	def_warp_events
	warp_event  2,  7, LAVENDER_TOWN, 6
	warp_event  3,  7, LAVENDER_TOWN, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_SILPH_PRESIDENT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NameRatersHouse_NameRaterScript, -1
