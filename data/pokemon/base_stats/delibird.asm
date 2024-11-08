	db DELIBIRD ; 225

	db  45,  55,  45,  75,  65,  45
	;   hp  atk  def  spd  sat  sdf

	db ICE, FLYING ; type
	db 45 ; catch rate
	db 183 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/delibird/front_gold.dimensions"
ELIF DEF(_BLUE)
	INCBIN "gfx/pokemon/delibird/front_blue.dimensions"
ENDC
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	; tm/hm learnset
IF DEF(_GOLD)
	tmhm HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, SNORE, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, RETURN, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SWIFT, DETECT, REST, ATTRACT, THIEF, FLY
ELIF DEF(_BLUE)
	tmhm MEGA_PUNCH, RAZOR_WIND, WHIRLWIND, MEGA_KICK, TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, ICE_BEAM, BLIZZARD, PAY_DAY, COUNTER, SEISMIC_TOSS, RAGE, MIMIC, DOUBLE_TEAM, BIDE, SWIFT, SKY_ATTACK, REST, SUBSTITUTE, FLY, HEADBUTT
ENDC
	; end
