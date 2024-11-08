	db ARBOK ; 024

	db  60,  85,  69,  80,  65,  79
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 90 ; catch rate
	db 147 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/arbok/front_gold.dimensions"
ELIF DEF(_BLUE)
	INCBIN "gfx/pokemon/arbok/front_blue.dimensions"
ENDC
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_DRAGON ; egg groups

	; tm/hm learnset
IF DEF(_GOLD)
	tmhm HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, SNORE, HYPER_BEAM, PROTECT, GIGA_DRAIN, ENDURE, FRUSTRATION, EARTHQUAKE, RETURN, DIG, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, REST, ATTRACT, THIEF, STRENGTH
ELIF DEF(_BLUE)
	tmhm TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, HYPER_BEAM, RAGE, MEGA_DRAIN, EARTHQUAKE, FISSURE, DIG, MIMIC, DOUBLE_TEAM, BIDE, SKULL_BASH, REST, ROCK_SLIDE, SUBSTITUTE, STRENGTH, HEADBUTT
ENDC
	; end
