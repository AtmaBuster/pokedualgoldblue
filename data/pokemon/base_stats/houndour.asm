	db HOUNDOUR ; 228

	db  45,  60,  30,  65,  80,  50
	;   hp  atk  def  spd  sat  sdf

	db DARK, FIRE ; type
	db 120 ; catch rate
	db 114 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/houndour/front_gold.dimensions"
ELIF DEF(_BLUE)
	INCBIN "gfx/pokemon/houndour/front_blue.dimensions"
ENDC
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
IF DEF(_GOLD)
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, SNORE, PROTECT, ENDURE, FRUSTRATION, SOLARBEAM, IRON_TAIL, RETURN, SHADOW_BALL, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, FIRE_BLAST, SWIFT, DREAM_EATER, DETECT, REST, ATTRACT, THIEF, NIGHTMARE
ELIF DEF(_BLUE)
	tmhm TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, COUNTER, RAGE, SOLARBEAM, MIMIC, DOUBLE_TEAM, BIDE, FIRE_BLAST, SWIFT, DREAM_EATER, REST, SUBSTITUTE, HEADBUTT, ROCK_SMASH
ENDC
	; end
