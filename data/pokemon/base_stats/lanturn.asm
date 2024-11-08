	db LANTURN ; 171

	db 125,  58,  58,  67,  76,  76
	;   hp  atk  def  spd  sat  sdf

	db WATER, ELECTRIC ; type
	db 75 ; catch rate
	db 156 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/lanturn/front_gold.dimensions"
ELIF DEF(_BLUE)
	INCBIN "gfx/pokemon/lanturn/front_blue.dimensions"
ENDC
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	; tm/hm learnset
IF DEF(_GOLD)
	tmhm CURSE, TOXIC, ZAP_CANNON, HIDDEN_POWER, SNORE, HYPER_BEAM, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, THUNDER, RETURN, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, REST, ATTRACT, SURF, FLASH, WHIRLPOOL, WATERFALL
ELIF DEF(_BLUE)
	tmhm TOXIC, TAKE_DOWN, DOUBLE_EDGE, BUBBLEBEAM, WATER_GUN, ICE_BEAM, HYPER_BEAM, RAGE, THUNDERBOLT, THUNDER, MIMIC, DOUBLE_TEAM, BIDE, REST, THUNDER_WAVE, SUBSTITUTE, SURF, FLASH
ENDC
	; end
