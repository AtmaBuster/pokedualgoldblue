; Kanto Pokémon in grass

KantoGrassWildMons:

	def_kanto_wildmons CERULEAN_CAVE_1F
	db 10 ; encounter rate
	db 46, GOLBAT
	db 46, HYPNO
	db 46, MAGNETON
	db 49, DODRIO
	db 49, VENOMOTH
IF DEF(_RED) || DEF(_GOLD)
	db 52, ARBOK
ENDC
IF DEF(_BLUE) || DEF(_SILVER)
	db 52, SANDSLASH
ENDC
	db 49, KADABRA
	db 52, PARASECT
	db 53, RAICHU
	db 53, DITTO
	end_kanto_wildmons

	def_kanto_wildmons CERULEAN_CAVE_2F
	db 15 ; encounter rate
	db 51, DODRIO
	db 51, VENOMOTH
	db 51, KADABRA
	db 52, RHYDON
	db 52, MAROWAK
	db 52, ELECTRODE
	db 56, CHANSEY
	db 54, WIGGLYTUFF
	db 55, DITTO
	db 60, DITTO
	end_kanto_wildmons

	def_kanto_wildmons CERULEAN_CAVE_B1F
	db 25 ; encounter rate
	db 55, RHYDON
	db 55, MAROWAK
	db 55, ELECTRODE
	db 64, CHANSEY
	db 64, PARASECT
	db 64, RAICHU
IF DEF(_RED) || DEF(_GOLD)
	db 57, ARBOK
ENDC
IF DEF(_BLUE) || DEF(_SILVER)
	db 57, SANDSLASH
ENDC
	db 65, DITTO
	db 63, DITTO
	db 67, DITTO
	end_kanto_wildmons

	def_kanto_wildmons DIGLETTS_CAVE
	db 20 ; encounter rate
	db 18, DIGLETT
	db 19, DIGLETT
	db 17, DIGLETT
	db 20, DIGLETT
	db 16, DIGLETT
	db 15, DIGLETT
	db 21, DIGLETT
	db 22, DIGLETT
	db 29, DUGTRIO
	db 31, DUGTRIO
	end_kanto_wildmons

	def_kanto_wildmons MT_MOON_1F
	db 10 ; encounter rate
	db  8, ZUBAT
	db  7, ZUBAT
	db  9, ZUBAT
	db  8, GEODUDE
	db  6, ZUBAT
	db 10, ZUBAT
	db 10, GEODUDE
	db  8, PARAS
	db 11, ZUBAT
	db  8, CLEFAIRY
	end_kanto_wildmons

	def_kanto_wildmons MT_MOON_B1F
	db 10 ; encounter rate
	db  8, ZUBAT
	db  7, ZUBAT
	db  7, GEODUDE
	db  8, GEODUDE
	db  9, ZUBAT
	db 10, PARAS
	db 10, ZUBAT
	db 11, ZUBAT
	db  9, CLEFAIRY
	db  9, GEODUDE
	end_kanto_wildmons

	def_kanto_wildmons MT_MOON_B2F
	db 10 ; encounter rate
	db  9, ZUBAT
	db  9, GEODUDE
	db 10, ZUBAT
	db 10, GEODUDE
	db 11, ZUBAT
	db 10, PARAS
	db 12, PARAS
	db 10, CLEFAIRY
	db 12, ZUBAT
	db 12, CLEFAIRY
	end_kanto_wildmons

	def_kanto_wildmons POKEMON_MANSION_1F
	db 10 ; encounter rate
IF DEF(_RED) || DEF(_GOLD)
	db 32, KOFFING
	db 30, KOFFING
	db 34, PONYTA
	db 30, PONYTA
	db 34, GROWLITHE
	db 32, PONYTA
	db 30, GRIMER
	db 28, PONYTA
	db 37, WEEZING
	db 39, MUK
ENDC
IF DEF(_BLUE) || DEF(_SILVER)
	db 32, GRIMER
	db 30, GRIMER
	db 34, PONYTA
	db 30, PONYTA
	db 34, VULPIX
	db 32, PONYTA
	db 30, KOFFING
	db 28, PONYTA
	db 37, MUK
	db 39, WEEZING
ENDC
	end_kanto_wildmons

	def_kanto_wildmons POKEMON_MANSION_2F
	db 10 ; encounter rate
IF DEF(_RED) || DEF(_GOLD)
	db 32, GROWLITHE
	db 34, KOFFING
	db 34, KOFFING
	db 30, PONYTA
	db 30, KOFFING
	db 32, PONYTA
	db 30, GRIMER
	db 28, PONYTA
	db 39, WEEZING
	db 37, MUK
ENDC
IF DEF(_BLUE) || DEF(_SILVER)
	db 32, VULPIX
	db 34, GRIMER
	db 34, GRIMER
	db 30, PONYTA
	db 30, GRIMER
	db 32, PONYTA
	db 30, KOFFING
	db 28, PONYTA
	db 39, MUK
	db 37, WEEZING
ENDC
	end_kanto_wildmons

	def_kanto_wildmons POKEMON_MANSION_3F
	db 10 ; encounter rate
IF DEF(_RED) || DEF(_GOLD)
	db 31, KOFFING
	db 33, GROWLITHE
	db 35, KOFFING
	db 32, PONYTA
	db 34, PONYTA
	db 40, WEEZING
	db 34, GRIMER
	db 38, WEEZING
	db 36, PONYTA
	db 42, MUK
ENDC
IF DEF(_BLUE) || DEF(_SILVER)
	db 31, GRIMER
	db 33, VULPIX
	db 35, GRIMER
	db 32, PONYTA
	db 34, MAGMAR
	db 40, MUK
	db 34, KOFFING
	db 38, MUK
	db 36, PONYTA
	db 42, WEEZING
ENDC
	end_kanto_wildmons

	def_kanto_wildmons POKEMON_MANSION_B1F
	db 10 ; encounter rate
IF DEF(_RED) || DEF(_GOLD)
	db 33, KOFFING
	db 31, KOFFING
	db 35, GROWLITHE
	db 32, PONYTA
	db 31, KOFFING
	db 40, WEEZING
	db 34, PONYTA
	db 35, GRIMER
	db 42, WEEZING
	db 42, MUK
ENDC
IF DEF(_BLUE) || DEF(_SILVER)
	db 33, GRIMER
	db 31, GRIMER
	db 35, VULPIX
	db 32, PONYTA
	db 31, GRIMER
	db 40, MUK
	db 34, PONYTA
	db 35, KOFFING
	db 38, MAGMAR
	db 42, WEEZING
ENDC
	end_kanto_wildmons

	def_kanto_wildmons POKEMON_TOWER_3F
	db 10 ; encounter rate
	db 20, GASTLY
	db 21, GASTLY
	db 22, GASTLY
	db 23, GASTLY
	db 19, GASTLY
	db 18, GASTLY
	db 24, GASTLY
	db 20, CUBONE
	db 22, CUBONE
	db 25, HAUNTER
	end_kanto_wildmons

	def_kanto_wildmons POKEMON_TOWER_4F
	db 10 ; encounter rate
	db 20, GASTLY
	db 21, GASTLY
	db 22, GASTLY
	db 23, GASTLY
	db 19, GASTLY
	db 18, GASTLY
	db 25, HAUNTER
	db 20, CUBONE
	db 22, CUBONE
	db 24, GASTLY
	end_kanto_wildmons

	def_kanto_wildmons POKEMON_TOWER_5F
	db 10 ; encounter rate
	db 20, GASTLY
	db 21, GASTLY
	db 22, GASTLY
	db 23, GASTLY
	db 19, GASTLY
	db 18, GASTLY
	db 25, HAUNTER
	db 20, CUBONE
	db 22, CUBONE
	db 24, GASTLY
	end_kanto_wildmons

	def_kanto_wildmons POKEMON_TOWER_6F
	db 15 ; encounter rate
	db 21, GASTLY
	db 22, GASTLY
	db 23, GASTLY
	db 24, GASTLY
	db 20, GASTLY
	db 19, GASTLY
	db 26, HAUNTER
	db 22, CUBONE
	db 24, CUBONE
	db 28, HAUNTER
	end_kanto_wildmons

	def_kanto_wildmons POKEMON_TOWER_7F
	db 15 ; encounter rate
	db 21, GASTLY
	db 22, GASTLY
	db 23, GASTLY
	db 24, GASTLY
	db 20, GASTLY
	db 28, HAUNTER
	db 22, CUBONE
	db 24, CUBONE
	db 28, HAUNTER
	db 30, HAUNTER
	end_kanto_wildmons

	def_kanto_wildmons POWER_PLANT
	db 10 ; encounter rate
	db 21, VOLTORB
	db 21, MAGNEMITE
	db 20, PIKACHU
	db 24, PIKACHU
	db 23, MAGNEMITE
	db 23, VOLTORB
	db 32, MAGNETON
	db 35, MAGNETON
IF DEF(_RED) || DEF(_GOLD)
	db 33, ELECTABUZZ
	db 36, ELECTABUZZ
ENDC
IF DEF(_BLUE) || DEF(_SILVER)
	db 33, RAICHU
	db 36, RAICHU
ENDC
	end_kanto_wildmons

	def_kanto_wildmons ROCK_TUNNEL_1F
	db 15 ; encounter rate
	db 16, ZUBAT
	db 17, ZUBAT
	db 17, GEODUDE
	db 15, MACHOP
	db 16, GEODUDE
	db 18, ZUBAT
	db 15, ZUBAT
	db 17, MACHOP
	db 13, ONIX
	db 15, ONIX
	end_kanto_wildmons

	def_kanto_wildmons ROCK_TUNNEL_B1F
	db 15 ; encounter rate
	db 16, ZUBAT
	db 17, ZUBAT
	db 17, GEODUDE
	db 15, MACHOP
	db 16, GEODUDE
	db 18, ZUBAT
	db 17, MACHOP
	db 17, ONIX
	db 13, ONIX
	db 18, GEODUDE
	end_kanto_wildmons

	def_kanto_wildmons ROUTE_1
	db 25 ; encounter rate
	db  3, PIDGEY
	db  3, RATTATA
	db  3, RATTATA
	db  2, RATTATA
	db  2, PIDGEY
	db  3, PIDGEY
	db  3, PIDGEY
	db  4, RATTATA
	db  4, PIDGEY
	db  5, PIDGEY
	end_kanto_wildmons

	def_kanto_wildmons ROUTE_2
	db 25 ; encounter rate
	db  3, RATTATA
	db  3, PIDGEY
	db  4, PIDGEY
	db  4, RATTATA
	db  5, PIDGEY
IF DEF(_RED) || DEF(_GOLD)
	db  3, WEEDLE
	db  2, RATTATA
	db  5, RATTATA
	db  4, WEEDLE
	db  5, WEEDLE
ENDC
IF DEF(_BLUE) || DEF(_SILVER)
	db  3, CATERPIE
	db  2, RATTATA
	db  5, RATTATA
	db  4, CATERPIE
	db  5, CATERPIE
ENDC
	end_kanto_wildmons

	def_kanto_wildmons ROUTE_3
	db 20 ; encounter rate
	db  6, PIDGEY
	db  5, SPEAROW
	db  7, PIDGEY
	db  6, SPEAROW
	db  7, SPEAROW
	db  8, PIDGEY
	db  8, SPEAROW
	db  3, JIGGLYPUFF
	db  5, JIGGLYPUFF
	db  7, JIGGLYPUFF
	end_kanto_wildmons

	def_kanto_wildmons ROUTE_4
	db 20 ; encounter rate
	db 10, RATTATA
	db 10, SPEAROW
	db  8, RATTATA
IF DEF(_RED) || DEF(_GOLD)
	db  6, EKANS
	db  8, SPEAROW
	db 10, EKANS
	db 12, RATTATA
	db 12, SPEAROW
	db  8, EKANS
	db 12, EKANS
ENDC
IF DEF(_BLUE) || DEF(_SILVER)
	db  6, SANDSHREW
	db  8, SPEAROW
	db 10, SANDSHREW
	db 12, RATTATA
	db 12, SPEAROW
	db  8, SANDSHREW
	db 12, SANDSHREW
ENDC
	end_kanto_wildmons

	def_kanto_wildmons ROUTE_5
	db 15 ; encounter rate
IF DEF(_RED) || DEF(_GOLD)
	db 13, ODDISH
	db 13, PIDGEY
	db 15, PIDGEY
	db 10, MANKEY
	db 12, MANKEY
	db 15, ODDISH
	db 16, ODDISH
	db 16, PIDGEY
	db 14, MANKEY
	db 16, MANKEY
ENDC
IF DEF(_BLUE) || DEF(_SILVER)
	db 13, BELLSPROUT
	db 13, PIDGEY
	db 15, PIDGEY
	db 10, MEOWTH
	db 12, MEOWTH
	db 15, BELLSPROUT
	db 16, BELLSPROUT
	db 16, PIDGEY
	db 14, MEOWTH
	db 16, MEOWTH
ENDC
	end_kanto_wildmons

	def_kanto_wildmons ROUTE_6
	db 15 ; encounter rate
IF DEF(_RED) || DEF(_GOLD)
	db 13, ODDISH
	db 13, PIDGEY
	db 15, PIDGEY
	db 10, MANKEY
	db 12, MANKEY
	db 15, ODDISH
	db 16, ODDISH
	db 16, PIDGEY
	db 14, MANKEY
	db 16, MANKEY
ENDC
IF DEF(_BLUE) || DEF(_SILVER)
	db 13, BELLSPROUT
	db 13, PIDGEY
	db 15, PIDGEY
	db 10, MEOWTH
	db 12, MEOWTH
	db 15, BELLSPROUT
	db 16, BELLSPROUT
	db 16, PIDGEY
	db 14, MEOWTH
	db 16, MEOWTH
ENDC
	end_kanto_wildmons

	def_kanto_wildmons ROUTE_7
	db 15 ; encounter rate
	db 19, PIDGEY
IF DEF(_RED) || DEF(_GOLD)
	db 19, ODDISH
	db 17, MANKEY
	db 22, ODDISH
	db 22, PIDGEY
	db 18, MANKEY
	db 18, GROWLITHE
	db 20, GROWLITHE
	db 19, MANKEY
	db 20, MANKEY
ENDC
IF DEF(_BLUE) || DEF(_SILVER)
	db 19, BELLSPROUT
	db 17, MEOWTH
	db 22, BELLSPROUT
	db 22, PIDGEY
	db 18, MEOWTH
	db 18, VULPIX
	db 20, VULPIX
	db 19, MEOWTH
	db 20, MEOWTH
ENDC
	end_kanto_wildmons

	def_kanto_wildmons ROUTE_8
	db 15 ; encounter rate
	db 18, PIDGEY
IF DEF(_RED) || DEF(_GOLD)
	db 18, MANKEY
	db 17, EKANS
	db 16, GROWLITHE
	db 20, PIDGEY
	db 20, MANKEY
	db 19, EKANS
	db 17, GROWLITHE
	db 15, GROWLITHE
	db 18, GROWLITHE
ENDC
IF DEF(_BLUE) || DEF(_SILVER)
	db 18, MEOWTH
	db 17, SANDSHREW
	db 16, VULPIX
	db 20, PIDGEY
	db 20, MEOWTH
	db 19, SANDSHREW
	db 17, VULPIX
	db 15, VULPIX
	db 18, VULPIX
ENDC
	end_kanto_wildmons

	def_kanto_wildmons ROUTE_9
	db 15 ; encounter rate
	db 16, RATTATA
	db 16, SPEAROW
	db 14, RATTATA
IF DEF(_RED) || DEF(_GOLD)
	db 11, EKANS
	db 13, SPEAROW
	db 15, EKANS
	db 17, RATTATA
	db 17, SPEAROW
	db 13, EKANS
	db 17, EKANS
ENDC
IF DEF(_BLUE) || DEF(_SILVER)
	db 11, SANDSHREW
	db 13, SPEAROW
	db 15, SANDSHREW
	db 17, RATTATA
	db 17, SPEAROW
	db 13, SANDSHREW
	db 17, SANDSHREW
ENDC
	end_kanto_wildmons

	def_kanto_wildmons ROUTE_10_NORTH
	db 15 ; encounter rate
	db 16, VOLTORB
	db 16, SPEAROW
	db 14, VOLTORB
IF DEF(_RED) || DEF(_GOLD)
	db 11, EKANS
	db 13, SPEAROW
	db 15, EKANS
	db 17, VOLTORB
	db 17, SPEAROW
	db 13, EKANS
	db 17, EKANS
ENDC
IF DEF(_BLUE) || DEF(_SILVER)
	db 11, SANDSHREW
	db 13, SPEAROW
	db 15, SANDSHREW
	db 17, VOLTORB
	db 17, SPEAROW
	db 13, SANDSHREW
	db 17, SANDSHREW
ENDC
	end_kanto_wildmons

	def_kanto_wildmons ROUTE_10_SOUTH
	db 15 ; encounter rate
	db 16, VOLTORB
	db 16, SPEAROW
	db 14, VOLTORB
IF DEF(_RED) || DEF(_GOLD)
	db 11, EKANS
	db 13, SPEAROW
	db 15, EKANS
	db 17, VOLTORB
	db 17, SPEAROW
	db 13, EKANS
	db 17, EKANS
ENDC
IF DEF(_BLUE) || DEF(_SILVER)
	db 11, SANDSHREW
	db 13, SPEAROW
	db 15, SANDSHREW
	db 17, VOLTORB
	db 17, SPEAROW
	db 13, SANDSHREW
	db 17, SANDSHREW
ENDC
	end_kanto_wildmons

	def_kanto_wildmons ROUTE_11
	db 15 ; encounter rate
IF DEF(_RED) || DEF(_GOLD)
	db 14, EKANS
	db 15, SPEAROW
	db 12, EKANS
	db  9, DROWZEE
	db 13, SPEAROW
	db 13, DROWZEE
	db 15, EKANS
ENDC
IF DEF(_BLUE) || DEF(_SILVER)
	db 14, SANDSHREW
	db 15, SPEAROW
	db 12, SANDSHREW
	db  9, DROWZEE
	db 13, SPEAROW
	db 13, DROWZEE
	db 15, SANDSHREW
ENDC
	db 17, SPEAROW
	db 11, DROWZEE
	db 15, DROWZEE
	end_kanto_wildmons

	def_kanto_wildmons ROUTE_12
	db 15 ; encounter rate
IF DEF(_RED) || DEF(_GOLD)
	db 24, ODDISH
	db 25, PIDGEY
	db 23, PIDGEY
	db 24, VENONAT
	db 22, ODDISH
	db 26, VENONAT
	db 26, ODDISH
	db 27, PIDGEY
	db 28, GLOOM
	db 30, GLOOM
ENDC
IF DEF(_BLUE) || DEF(_SILVER)
	db 24, BELLSPROUT
	db 25, PIDGEY
	db 23, PIDGEY
	db 24, VENONAT
	db 22, BELLSPROUT
	db 26, VENONAT
	db 26, BELLSPROUT
	db 27, PIDGEY
	db 28, WEEPINBELL
	db 30, WEEPINBELL
ENDC
	end_kanto_wildmons

	def_kanto_wildmons ROUTE_13
	db 20 ; encounter rate
IF DEF(_RED) || DEF(_GOLD)
	db 24, ODDISH
	db 25, PIDGEY
	db 27, PIDGEY
	db 24, VENONAT
	db 22, ODDISH
	db 26, VENONAT
	db 26, ODDISH
	db 25, DITTO
	db 28, GLOOM
	db 30, GLOOM
ENDC
IF DEF(_BLUE) || DEF(_SILVER)
	db 24, BELLSPROUT
	db 25, PIDGEY
	db 27, PIDGEY
	db 24, VENONAT
	db 22, BELLSPROUT
	db 26, VENONAT
	db 26, BELLSPROUT
	db 25, DITTO
	db 28, WEEPINBELL
	db 30, WEEPINBELL
ENDC
	end_kanto_wildmons

	def_kanto_wildmons ROUTE_14
	db 15 ; encounter rate
IF DEF(_RED) || DEF(_GOLD)
	db 24, ODDISH
	db 26, PIDGEY
	db 23, DITTO
	db 24, VENONAT
	db 22, ODDISH
	db 26, VENONAT
	db 26, ODDISH
	db 30, GLOOM
ENDC
IF DEF(_BLUE) || DEF(_SILVER)
	db 24, BELLSPROUT
	db 26, PIDGEY
	db 23, DITTO
	db 24, VENONAT
	db 22, BELLSPROUT
	db 26, VENONAT
	db 26, BELLSPROUT
	db 30, WEEPINBELL
ENDC
	db 28, PIDGEOTTO
	db 30, PIDGEOTTO
	end_kanto_wildmons

	def_kanto_wildmons ROUTE_15
	db 15 ; encounter rate
IF DEF(_RED) || DEF(_GOLD)
	db 24, ODDISH
	db 26, DITTO
	db 23, PIDGEY
	db 26, VENONAT
	db 22, ODDISH
	db 28, VENONAT
	db 26, ODDISH
	db 30, GLOOM
ENDC
IF DEF(_BLUE) || DEF(_SILVER)
	db 24, BELLSPROUT
	db 26, DITTO
	db 23, PIDGEY
	db 26, VENONAT
	db 22, BELLSPROUT
	db 28, VENONAT
	db 26, BELLSPROUT
	db 30, WEEPINBELL
ENDC
	db 28, PIDGEOTTO
	db 30, PIDGEOTTO
	end_kanto_wildmons

	def_kanto_wildmons ROUTE_16
	db 25 ; encounter rate
	db 20, SPEAROW
	db 22, SPEAROW
	db 18, RATTATA
	db 20, DODUO
	db 20, RATTATA
	db 18, DODUO
	db 22, DODUO
	db 22, RATTATA
	db 23, RATICATE
	db 25, RATICATE
	end_kanto_wildmons

	def_kanto_wildmons ROUTE_17
	db 25 ; encounter rate
	db 20, SPEAROW
	db 22, SPEAROW
	db 25, RATICATE
	db 24, DODUO
	db 27, RATICATE
	db 26, DODUO
	db 28, DODUO
	db 29, RATICATE
	db 25, FEAROW
	db 27, FEAROW
	end_kanto_wildmons

	def_kanto_wildmons ROUTE_18
	db 25 ; encounter rate
	db 20, SPEAROW
	db 22, SPEAROW
	db 25, RATICATE
	db 24, DODUO
	db 25, FEAROW
	db 26, DODUO
	db 28, DODUO
	db 29, RATICATE
	db 27, FEAROW
	db 29, FEAROW
	end_kanto_wildmons

	def_kanto_wildmons ROUTE_21
	db 25 ; encounter rate
	db 21, RATTATA
	db 23, PIDGEY
	db 30, RATICATE
	db 23, RATTATA
	db 21, PIDGEY
	db 30, PIDGEOTTO
	db 32, PIDGEOTTO
	db 28, TANGELA
	db 30, TANGELA
	db 32, TANGELA
	end_kanto_wildmons

	def_kanto_wildmons ROUTE_22
	db 25 ; encounter rate
	db  3, RATTATA
IF DEF(_RED) || DEF(_GOLD)
	db  3, NIDORAN_M
	db  4, RATTATA
	db  4, NIDORAN_M
	db  2, RATTATA
	db  2, NIDORAN_M
	db  3, SPEAROW
	db  5, SPEAROW
	db  3, NIDORAN_F
	db  4, NIDORAN_F
ENDC
IF DEF(_BLUE) || DEF(_SILVER)
	db  3, NIDORAN_F
	db  4, RATTATA
	db  4, NIDORAN_F
	db  2, RATTATA
	db  2, NIDORAN_F
	db  3, SPEAROW
	db  5, SPEAROW
	db  3, NIDORAN_M
	db  4, NIDORAN_M
ENDC
	end_kanto_wildmons

	def_kanto_wildmons ROUTE_23
	db 10 ; encounter rate
IF DEF(_RED) || DEF(_GOLD)
	db 26, EKANS
ENDC
IF DEF(_BLUE) || DEF(_SILVER)
	db 26, SANDSHREW
ENDC
	db 33, DITTO
	db 26, SPEAROW
	db 38, FEAROW
	db 38, DITTO
	db 38, FEAROW
IF DEF(_RED) || DEF(_GOLD)
	db 41, ARBOK
ENDC
IF DEF(_BLUE) || DEF(_SILVER)
	db 41, SANDSLASH
ENDC
	db 43, DITTO
	db 41, FEAROW
	db 43, FEAROW
	end_kanto_wildmons

	def_kanto_wildmons ROUTE_24
	db 25 ; encounter rate
IF DEF(_RED) || DEF(_GOLD)
	db  7, WEEDLE
	db  8, KAKUNA
	db 12, PIDGEY
	db 12, ODDISH
	db 13, ODDISH
	db 10, ABRA
	db 14, ODDISH
ENDC
IF DEF(_BLUE) || DEF(_SILVER)
	db  7, CATERPIE
	db  8, METAPOD
	db 12, PIDGEY
	db 12, BELLSPROUT
	db 13, BELLSPROUT
	db 10, ABRA
	db 14, BELLSPROUT
ENDC
	db 13, PIDGEY
	db  8, ABRA
	db 12, ABRA
	end_kanto_wildmons

	def_kanto_wildmons ROUTE_25
	db 15 ; encounter rate
IF DEF(_RED) || DEF(_GOLD)
	db  8, WEEDLE
	db  9, KAKUNA
	db 13, PIDGEY
	db 12, ODDISH
	db 13, ODDISH
	db 12, ABRA
	db 14, ODDISH
	db 10, ABRA
	db  7, METAPOD
	db  8, CATERPIE
ENDC
IF DEF(_BLUE) || DEF(_SILVER)
	db  8, CATERPIE
	db  9, METAPOD
	db 13, PIDGEY
	db 12, BELLSPROUT
	db 13, BELLSPROUT
	db 12, ABRA
	db 14, BELLSPROUT
	db 10, ABRA
	db  7, KAKUNA
	db  8, WEEDLE
ENDC
	end_kanto_wildmons

	def_kanto_wildmons SAFARI_ZONE_CENTER
	db 30 ; encounter rate
IF DEF(_RED) || DEF(_GOLD)
	db 22, NIDORAN_M
	db 25, RHYHORN
	db 22, VENONAT
	db 24, EXEGGCUTE
	db 31, NIDORINO
	db 25, EXEGGCUTE
	db 31, NIDORINA
	db 30, PARASECT
	db 23, SCYTHER
ENDC
IF DEF(_BLUE) || DEF(_SILVER)
	db 22, NIDORAN_F
	db 25, RHYHORN
	db 22, VENONAT
	db 24, EXEGGCUTE
	db 31, NIDORINA
	db 25, EXEGGCUTE
	db 31, NIDORINO
	db 30, PARASECT
	db 23, PINSIR
ENDC
	db 23, CHANSEY
	end_kanto_wildmons

	def_kanto_wildmons SAFARI_ZONE_EAST
	db 30 ; encounter rate
IF DEF(_RED) || DEF(_GOLD)
	db 24, NIDORAN_M
	db 26, DODUO
	db 22, PARAS
	db 25, EXEGGCUTE
	db 33, NIDORINO
	db 23, EXEGGCUTE
	db 24, NIDORAN_F
	db 25, PARASECT
	db 25, KANGASKHAN
	db 28, SCYTHER
ENDC
IF DEF(_BLUE) || DEF(_SILVER)
	db 24, NIDORAN_F
	db 26, DODUO
	db 22, PARAS
	db 25, EXEGGCUTE
	db 33, NIDORINA
	db 23, EXEGGCUTE
	db 24, NIDORAN_M
	db 25, PARASECT
	db 25, KANGASKHAN
	db 28, PINSIR
ENDC
	end_kanto_wildmons

	def_kanto_wildmons SAFARI_ZONE_NORTH
	db 30 ; encounter rate
IF DEF(_RED) || DEF(_GOLD)
	db 22, NIDORAN_M
	db 26, RHYHORN
	db 23, PARAS
	db 25, EXEGGCUTE
	db 30, NIDORINO
	db 27, EXEGGCUTE
	db 30, NIDORINA
ENDC
IF DEF(_BLUE) || DEF(_SILVER)
	db 22, NIDORAN_F
	db 26, RHYHORN
	db 23, PARAS
	db 25, EXEGGCUTE
	db 30, NIDORINA
	db 27, EXEGGCUTE
	db 30, NIDORINO
ENDC
	db 32, VENOMOTH
	db 26, CHANSEY
	db 28, TAUROS
	end_kanto_wildmons

	def_kanto_wildmons SAFARI_ZONE_WEST
	db 30 ; encounter rate
IF DEF(_RED) || DEF(_GOLD)
	db 25, NIDORAN_M
	db 26, DODUO
	db 23, VENONAT
	db 24, EXEGGCUTE
	db 33, NIDORINO
	db 26, EXEGGCUTE
	db 25, NIDORAN_F
ENDC
IF DEF(_BLUE) || DEF(_SILVER)
	db 25, NIDORAN_F
	db 26, DODUO
	db 23, VENONAT
	db 24, EXEGGCUTE
	db 33, NIDORINA
	db 26, EXEGGCUTE
	db 25, NIDORAN_M
ENDC
	db 31, VENOMOTH
	db 26, TAUROS
	db 28, KANGASKHAN
	end_kanto_wildmons

	def_kanto_wildmons SEAFOAM_ISLANDS_1F
	db 15 ; encounter rate
	db 30, SEEL
IF DEF(_RED) || DEF(_GOLD)
	db 30, SLOWPOKE
	db 30, SHELLDER
	db 30, HORSEA
	db 28, HORSEA
	db 21, ZUBAT
	db 29, GOLBAT
	db 28, PSYDUCK
	db 28, SHELLDER
	db 38, GOLDUCK
ENDC
IF DEF(_BLUE) || DEF(_SILVER)
	db 30, PSYDUCK
	db 30, STARYU
	db 30, KRABBY
	db 28, KRABBY
	db 21, ZUBAT
	db 29, GOLBAT
	db 28, SLOWPOKE
	db 28, STARYU
	db 38, SLOWBRO
ENDC
	end_kanto_wildmons

	def_kanto_wildmons SEAFOAM_ISLANDS_B1F
	db 10 ; encounter rate
IF DEF(_RED) || DEF(_GOLD)
	db 30, STARYU
	db 30, HORSEA
	db 32, SHELLDER
	db 32, HORSEA
	db 28, SLOWPOKE
	db 30, SEEL
	db 30, SLOWPOKE
	db 28, SEEL
	db 38, DEWGONG
	db 37, SEADRA
ENDC
IF DEF(_BLUE) || DEF(_SILVER)
	db 30, SHELLDER
	db 30, KRABBY
	db 32, STARYU
	db 32, KRABBY
	db 28, PSYDUCK
	db 30, SEEL
	db 30, PSYDUCK
	db 28, SEEL
	db 38, DEWGONG
	db 37, KINGLER
ENDC
	end_kanto_wildmons

	def_kanto_wildmons SEAFOAM_ISLANDS_B2F
	db 10 ; encounter rate
	db 30, SEEL
IF DEF(_RED) || DEF(_GOLD)
	db 30, SLOWPOKE
	db 32, SEEL
	db 32, SLOWPOKE
	db 28, HORSEA
	db 30, STARYU
	db 30, HORSEA
	db 28, SHELLDER
	db 30, GOLBAT
	db 37, SLOWBRO
ENDC
IF DEF(_BLUE) || DEF(_SILVER)
	db 30, PSYDUCK
	db 32, SEEL
	db 32, PSYDUCK
	db 28, KRABBY
	db 30, SHELLDER
	db 30, KRABBY
	db 28, STARYU
	db 30, GOLBAT
	db 37, GOLDUCK
ENDC
	end_kanto_wildmons

	def_kanto_wildmons SEAFOAM_ISLANDS_B3F
	db 10 ; encounter rate
IF DEF(_RED) || DEF(_GOLD)
	db 31, SLOWPOKE
	db 31, SEEL
	db 33, SLOWPOKE
	db 33, SEEL
	db 29, HORSEA
	db 31, SHELLDER
	db 31, HORSEA
	db 29, SHELLDER
	db 39, SEADRA
ENDC
IF DEF(_BLUE) || DEF(_SILVER)
	db 31, PSYDUCK
	db 31, SEEL
	db 33, PSYDUCK
	db 33, SEEL
	db 29, KRABBY
	db 31, STARYU
	db 31, KRABBY
	db 29, STARYU
	db 39, KINGLER
ENDC
	db 37, DEWGONG
	end_kanto_wildmons

	def_kanto_wildmons SEAFOAM_ISLANDS_B4F
	db 10 ; encounter rate
IF DEF(_RED) || DEF(_GOLD)
	db 31, HORSEA
	db 31, SHELLDER
	db 33, HORSEA
	db 33, SHELLDER
	db 29, SLOWPOKE
	db 31, SEEL
	db 31, SLOWPOKE
	db 29, SEEL
	db 39, SLOWBRO
ENDC
IF DEF(_BLUE) || DEF(_SILVER)
	db 31, KRABBY
	db 31, STARYU
	db 33, KRABBY
	db 33, STARYU
	db 29, PSYDUCK
	db 31, SEEL
	db 31, PSYDUCK
	db 29, SEEL
	db 39, GOLDUCK
ENDC
	db 32, GOLBAT
	end_kanto_wildmons

	def_kanto_wildmons VICTORY_ROAD_1F
	db 15 ; encounter rate
	db 24, MACHOP
	db 26, GEODUDE
	db 22, ZUBAT
	db 36, ONIX
	db 39, ONIX
	db 42, ONIX
	db 41, GRAVELER
	db 41, GOLBAT
	db 42, MACHOKE
	db 43, MAROWAK
	end_kanto_wildmons

	def_kanto_wildmons VICTORY_ROAD_2F
	db 10 ; encounter rate
	db 22, MACHOP
	db 24, GEODUDE
	db 26, ZUBAT
	db 36, ONIX
	db 39, ONIX
	db 42, ONIX
	db 41, MACHOKE
	db 40, GOLBAT
	db 40, MAROWAK
	db 43, GRAVELER
	end_kanto_wildmons

	def_kanto_wildmons VICTORY_ROAD_3F
	db 15 ; encounter rate
	db 24, MACHOP
	db 26, GEODUDE
	db 22, ZUBAT
	db 42, ONIX
	db 40, VENOMOTH
	db 45, ONIX
	db 43, GRAVELER
	db 41, GOLBAT
	db 42, MACHOKE
	db 45, MACHOKE
	end_kanto_wildmons

	def_kanto_wildmons VIRIDIAN_FOREST
	db 8 ; encounter rate
IF DEF(_RED) || DEF(_GOLD)
	db  4, WEEDLE
	db  5, KAKUNA
	db  3, WEEDLE
	db  5, WEEDLE
	db  4, KAKUNA
	db  6, KAKUNA
	db  4, METAPOD
	db  3, CATERPIE
ENDC
IF DEF(_BLUE) || DEF(_SILVER)
	db  4, CATERPIE
	db  5, METAPOD
	db  3, CATERPIE
	db  5, CATERPIE
	db  4, METAPOD
	db  6, METAPOD
	db  4, KAKUNA
	db  3, WEEDLE
ENDC
	db  3, PIKACHU
	db  5, PIKACHU
	end_kanto_wildmons

	db -1 ; end
