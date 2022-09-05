	object_const_def
	const POWERPLANT_POKE_BALL1
	const POWERPLANT_POKE_BALL2
	const POWERPLANT_POKE_BALL3
	const POWERPLANT_POKE_BALL4
	const POWERPLANT_POKE_BALL5
	const POWERPLANT_POKE_BALL6
	const POWERPLANT_POKE_BALL7
	const POWERPLANT_POKE_BALL8
	const POWERPLANT_KANTO_BIRD
	const POWERPLANT_POKE_BALL9
	const POWERPLANT_POKE_BALL10
	const POWERPLANT_POKE_BALL11
	const POWERPLANT_POKE_BALL12
	const POWERPLANT_POKE_BALL13

PowerPlant_MapScripts:
	def_scene_scripts

	def_callbacks

PowerPlant_VoltorbScript:
	opentext
	writetext PowerPlant_VoltorbElectrodeText
	cry VOLTORB
	pause 15
	closetext
	loadwildmon VOLTORB, 40
	startbattle
	disappear LAST_TALKED
	reloadmapafterbattle
	end

PowerPlant_ElectrodeScript:
	opentext
	writetext PowerPlant_VoltorbElectrodeText
	cry ELECTRODE
	pause 15
	closetext
	loadwildmon ELECTRODE, 43
	startbattle
	disappear LAST_TALKED
	reloadmapafterbattle
	end

PowerPlant_VoltorbElectrodeText:
	text "Bzzzt!"
	done

PowerPlant_ZapdosScript:
	opentext
	writetext .Text
	cry ZAPDOS
	pause 15
	closetext
	loadwildmon ZAPDOS, 50
	startbattle
	disappear POWERPLANT_KANTO_BIRD
	reloadmapafterbattle
	end

.Text:
	text "Gyaoo!"
	done

PowerPlant_CarbosScript:
	itemball CARBOS

PowerPlant_HPUpScript:
	itemball HP_UP

PowerPlant_RareCandyScript:
	itemball RARE_CANDY

PowerPlant_TMThunderScript:
	itemball TM_THUNDER

PowerPlant_TMReflectScript:
IF DEF(_GOLD)
	itemball TM_DYNAMICPUNCH
ELIF DEF(_BLUE)
	itemball TM_REFLECT
ENDC

PowerPlant_MapEvents:
	def_warp_events
	warp_event  4, 35, ROUTE_10_NORTH, 3
	warp_event  5, 35, ROUTE_10_NORTH, 3
	warp_event  0, 11, ROUTE_10_NORTH, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlant_VoltorbScript, EVENT_POWER_PLANT_VOLTORB1
	object_event 32, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlant_VoltorbScript, EVENT_POWER_PLANT_VOLTORB2
	object_event 21, 25, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlant_VoltorbScript, EVENT_POWER_PLANT_VOLTORB3
	object_event 25, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlant_ElectrodeScript, EVENT_POWER_PLANT_ELECTRODE1
	object_event 23, 34, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlant_VoltorbScript, EVENT_POWER_PLANT_VOLTORB4
	object_event 26, 28, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlant_VoltorbScript, EVENT_POWER_PLANT_VOLTORB5
	object_event 21, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlant_ElectrodeScript, EVENT_POWER_PLANT_ELECTRODE2
	object_event 37, 32, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlant_VoltorbScript, EVENT_POWER_PLANT_VOLTORB6
	object_event  4,  9, SPRITE_KANTO_BIRD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlant_ZapdosScript, EVENT_POWER_PLANT_ZAPDOS
	object_event  7, 25, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PowerPlant_CarbosScript, EVENT_POWER_PLANT_CARBOS
	object_event 28,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PowerPlant_HPUpScript, EVENT_POWER_PLANT_HP_UP
	object_event 34,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PowerPlant_RareCandyScript, EVENT_POWER_PLANT_RARE_CANDY
	object_event 26, 32, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PowerPlant_TMThunderScript, EVENT_POWER_PLANT_TM_THUNDER
	object_event 20, 32, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PowerPlant_TMReflectScript, EVENT_POWER_PLANT_TM_REFLECT
