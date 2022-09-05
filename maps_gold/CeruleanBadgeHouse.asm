	object_const_def
	const CERULEANBADGEHOUSE_POKEFAN_M

CeruleanBadgeHouse_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanBadgeHouse_BadgeGuyScript:
	faceplayer
	opentext
	writetext .Text1
.Loop:
	writetext .Text2
	special BadgeMenu
	ifequal 0, .BoulderBadge
	ifequal 1, .CascadeBadge
	ifequal 2, .ThunderBadge
	ifequal 3, .RainbowBadge
	ifequal 4, .SoulBadge
	ifequal 5, .MarshBadge
	ifequal 6, .VolcanoBadge
	ifequal 7, .EarthBadge
	writetext .Text3
	waitbutton
	closetext
	end

.BoulderBadge:
	writetext .BoulderBadgeText
	sjump .Loop

.CascadeBadge:
	writetext .CascadeBadgeText
	sjump .Loop

.ThunderBadge:
	writetext .ThunderBadgeText
	sjump .Loop

.RainbowBadge:
	writetext .RainbowBadgeText
	sjump .Loop

.SoulBadge:
	writetext .SoulBadgeText
	sjump .Loop

.MarshBadge:
	writetext .MarshBadgeText
	sjump .Loop

.VolcanoBadge:
	writetext .VolcanoBadgeText
	sjump .Loop

.EarthBadge:
	writetext .EarthBadgeText
	sjump .Loop

.Text1:
	text "#MON BADGEs"
	line "are owned only by"
	cont "skilled trainers."

	para "I see you have"
	line "at least one."

	para "Those BADGEs have"
	line "amazing secrets!"
	prompt

.Text2:
	text "Now then..."

	para "Which of the 8"
	line "BADGEs should I"
	cont "describe?"
	done

.Text3:
	text "Come visit me any"
	line "time you wish."
	done

.BoulderBadgeText:
	text "The ATTACK of all"
	line "#MON increases"
	cont "a little bit."

	para "It also lets you"
	line "use FLASH any"
	cont "time you desire."
	prompt

.CascadeBadgeText:
	text "#MON up to L30"
	line "will obey you."

	para "Any higher, they"
	line "become unruly!"

	para "It also lets you"
	line "use CUT outside"
	cont "of battle."
	prompt

.ThunderBadgeText:
	text "The SPEED of all"
	line "#MON increases"
	cont "a little bit."

	para "It also lets you"
	line "use FLY outside"
	cont "of battle."
	prompt

.RainbowBadgeText:
	text "#MON up to L50"
	line "will obey you."

	para "Any higher, they"
	line "become unruly!"

	para "It also lets you"
	line "use STRENGTH out-"
	cont "side of battle."
	prompt

.SoulBadgeText:
	text "The DEFENSE of all"
	line "#MON increases"
	cont "a little bit."

	para "It also lets you"
	line "use SURF outside"
	cont "of battle."
	prompt

.MarshBadgeText:
	text "#MON up to L70"
	line "will obey you."

	para "Any higher, they"
	line "become unruly!"
	prompt

.VolcanoBadgeText:
	text "Your #MON's"
	line "SPECIAL abilities"
	cont "increase a bit."
	prompt

.EarthBadgeText:
	text "All #MON will"
	line "obey you!"
	prompt

CeruleanBadgeHouse_MapEvents:
	def_warp_events
	warp_event  2,  0, CERULEAN_CITY, 10
	warp_event  2,  7, CERULEAN_CITY, 9
	warp_event  3,  7, CERULEAN_CITY, 9

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanBadgeHouse_BadgeGuyScript, -1
