	db ZAPDOS ; 145

	db  90,  90,  85, 100, 125,  90
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, FLYING ; type
	db 3 ; catch rate
	db 216 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 80 ; step cycles to hatch
	db 5 ; unknown 2
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/zapdos/front_gold.dimensions"
ELIF DEF(_BLUE)
	INCBIN "gfx/pokemon/zapdos/front_blue.dimensions"
ENDC
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
IF DEF(_GOLD)
	tmhm CURSE, ROAR, TOXIC, ZAP_CANNON, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, SNORE, HYPER_BEAM, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, THUNDER, RETURN, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SANDSTORM, SWIFT, DETECT, REST, STEEL_WING, FLY, FLASH
ELIF DEF(_BLUE)
	tmhm RAZOR_WIND, WHIRLWIND, TOXIC, TAKE_DOWN, DOUBLE_EDGE, HYPER_BEAM, RAGE, THUNDERBOLT, THUNDER, MIMIC, DOUBLE_TEAM, REFLECT, BIDE, SWIFT, SKY_ATTACK, REST, THUNDER_WAVE, SUBSTITUTE, FLY, FLASH
ENDC
	; end
