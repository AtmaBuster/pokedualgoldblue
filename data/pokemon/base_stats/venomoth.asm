	db VENOMOTH ; 049

	db  70,  65,  60,  90,  90,  75
	;   hp  atk  def  spd  sat  sdf

	db BUG, POISON ; type
	db 75 ; catch rate
	db 138 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/venomoth/front_gold.dimensions"
ELIF DEF(_BLUE)
	INCBIN "gfx/pokemon/venomoth/front_blue.dimensions"
ENDC
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
IF DEF(_GOLD)
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, SWEET_SCENT, SNORE, HYPER_BEAM, PROTECT, GIGA_DRAIN, ENDURE, FRUSTRATION, SOLARBEAM, RETURN, PSYCHIC_M, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, SWIFT, REST, ATTRACT, THIEF, FLASH
ELIF DEF(_BLUE)
	tmhm RAZOR_WIND, WHIRLWIND, TOXIC, TAKE_DOWN, DOUBLE_EDGE, HYPER_BEAM, RAGE, MEGA_DRAIN, SOLARBEAM, PSYCHIC_M, TELEPORT, MIMIC, DOUBLE_TEAM, REFLECT, BIDE, SWIFT, REST, PSYWAVE, SUBSTITUTE
ENDC
	; end
