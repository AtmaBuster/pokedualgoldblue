	db GLIGAR ; 207

	db  65,  75, 105,  85,  35,  65
	;   hp  atk  def  spd  sat  sdf

	db GROUND, FLYING ; type
	db 60 ; catch rate
	db 108 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/gligar/front_gold.dimensions"
ELIF DEF(_BLUE)
	INCBIN "gfx/pokemon/gligar/front_blue.dimensions"
ENDC
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
IF DEF(_GOLD)
	tmhm HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, SNORE, PROTECT, ENDURE, FRUSTRATION, IRON_TAIL, RETURN, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, SANDSTORM, SWIFT, DETECT, REST, ATTRACT, THIEF, FURY_CUTTER, CUT, STRENGTH
ELIF DEF(_BLUE)
	tmhm RAZOR_WIND, SWORDS_DANCE, WHIRLWIND, TOXIC, TAKE_DOWN, DOUBLE_EDGE, COUNTER, RAGE, MIMIC, DOUBLE_TEAM, BIDE, SWIFT, REST, ROCK_SLIDE, SUBSTITUTE, CUT, STRENGTH, HEADBUTT, ROCK_SMASH
ENDC
	; end
