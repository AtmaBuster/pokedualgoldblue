	db DODUO ; 084

	db  35,  85,  45,  75,  35,  35
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 190 ; catch rate
	db 96 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/doduo/front_gold.dimensions"
ELIF DEF(_BLUE)
	INCBIN "gfx/pokemon/doduo/front_blue.dimensions"
ENDC
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
IF DEF(_GOLD)
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, SNORE, PROTECT, ENDURE, FRUSTRATION, RETURN, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SWIFT, REST, ATTRACT, THIEF, STEEL_WING, FLY
ELIF DEF(_BLUE)
	tmhm WHIRLWIND, TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, RAGE, MIMIC, DOUBLE_TEAM, REFLECT, BIDE, SKULL_BASH, SKY_ATTACK, REST, TRI_ATTACK, SUBSTITUTE, FLY
ENDC
	; end
