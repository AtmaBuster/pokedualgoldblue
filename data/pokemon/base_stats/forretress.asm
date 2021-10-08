	db FORRETRESS ; 205

	db  75,  90, 140,  40,  60,  60
	;   hp  atk  def  spd  sat  sdf

	db BUG, STEEL ; type
	db 75 ; catch rate
	db 118 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/forretress/front_gold.dimensions"
ELIF DEF(_BLUE)
	INCBIN "gfx/pokemon/forretress/front_blue.dimensions"
ENDC
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
IF DEF(_GOLD)
	tmhm HEADBUTT, CURSE, ROLLOUT, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, SWEET_SCENT, SNORE, HYPER_BEAM, PROTECT, GIGA_DRAIN, ENDURE, FRUSTRATION, SOLARBEAM, RETURN, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SANDSTORM, DEFENSE_CURL, REST, ATTRACT, STRENGTH
ELIF DEF(_BLUE)
	tmhm TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, HYPER_BEAM, COUNTER, RAGE, MEGA_DRAIN, FISSURE, MIMIC, DOUBLE_TEAM, REFLECT, BIDE, SELFDESTRUCT, SWIFT, REST, EXPLOSION, ROCK_SLIDE, SUBSTITUTE, STRENGTH
ENDC
	; end
