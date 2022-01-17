__trainer_class__ = 0

trainerclass: MACRO
\1 EQU __trainer_class__
__trainer_class__ = __trainer_class__ + 1
	const_def 1
ENDM

; trainer class ids
; `trainerclass` indexes are for:
; - TrainerClassNames (see data/trainers/class_names.asm)
; - TrainerClassAttributes (see data/trainers/attributes.asm)
; - TrainerClassDVs (see data/trainers/dvs.asm)
; - TrainerGroups (see data/trainers/party_pointers.asm)
; - TrainerEncounterMusic (see data/trainers/encounter_music.asm)
; - TrainerPicPointers (see data/trainers/pic_pointers.asm)
; - TrainerPalettes (see data/trainers/palettes.asm)
; trainer constants are Trainers indexes, for the sub-tables of TrainerGroups (see data/trainers/parties.asm)
CHRIS EQU __trainer_class__
	trainerclass TRAINER_NONE ; 0
	const PHONECONTACT_MOM
	const PHONECONTACT_BIKESHOP
	const PHONECONTACT_BILL
	const PHONECONTACT_ELM
NUM_NONTRAINER_PHONECONTACTS EQU const_value - 1

	trainerclass FALKNER ; 1
	const FALKNER1

	trainerclass WHITNEY ; 2
	const WHITNEY1

	trainerclass BUGSY ; 3
	const BUGSY1

	trainerclass MORTY ; 4
	const MORTY1

	trainerclass PRYCE ; 5
	const PRYCE1

	trainerclass JASMINE ; 6
	const JASMINE1

	trainerclass CHUCK ; 7
	const CHUCK1

	trainerclass CLAIR ; 8
	const CLAIR1

	trainerclass RIVAL1 ; 9
	const RIVAL1_1_CHIKORITA
	const RIVAL1_1_CYNDAQUIL
	const RIVAL1_1_TOTODILE
	const RIVAL1_2_CHIKORITA
	const RIVAL1_2_CYNDAQUIL
	const RIVAL1_2_TOTODILE
	const RIVAL1_3_CHIKORITA
	const RIVAL1_3_CYNDAQUIL
	const RIVAL1_3_TOTODILE
	const RIVAL1_4_CHIKORITA
	const RIVAL1_4_CYNDAQUIL
	const RIVAL1_4_TOTODILE
	const RIVAL1_5_CHIKORITA
	const RIVAL1_5_CYNDAQUIL
	const RIVAL1_5_TOTODILE

	trainerclass POKEMON_PROF ; a

	trainerclass WILL ; b
	const WILL1

	trainerclass CAL ; c
	const CAL1
	const CAL2
	const CAL3

	trainerclass BRUNO ; d
	const BRUNO1

	trainerclass KAREN ; e
	const KAREN1

	trainerclass KOGA ; f
	const KOGA1

	trainerclass CHAMPION ; 10
	const LANCE

	trainerclass BROCK ; 11
	const BROCK1

	trainerclass MISTY ; 12
	const MISTY1

	trainerclass LT_SURGE ; 13
	const LT_SURGE1

	trainerclass SCIENTIST ; 14
	const ROSS
	const MITCH
	const JED
	const MARC
	const RICH

	trainerclass ERIKA ; 15
	const ERIKA1

	trainerclass YOUNGSTER ; 16
	const JOEY1
	const MIKEY
	const ALBERT
	const GORDON
	const SAMUEL
	const IAN
	const JOEY2
	const JOEY3
	const WARREN
	const JIMMY
	const OWEN
	const JASON

	trainerclass SCHOOLBOY ; 17
	const JACK1
	const KIPP
	const ALAN1
	const JOHNNY
	const DANNY
	const TOMMY
	const DUDLEY
	const JOE
	const BILLY
	const CHAD1
	const NATE
	const RICKY
	const JACK2
	const JACK3
	const ALAN2
	const ALAN3
	const CHAD2
	const CHAD3
	const JACK4
	const JACK5
	const ALAN4
	const ALAN5
	const CHAD4
	const CHAD5

	trainerclass BIRD_KEEPER ; 18
	const ROD
	const ABE
	const BRYAN
	const THEO
	const TOBY
	const DENIS
	const VANCE1
	const HANK
	const ROY
	const BORIS
	const BOB
	const JOSE1
	const PETER
	const JOSE2
	const PERRY
	const BRET
	const JOSE3
	const VANCE2
	const VANCE3

	trainerclass LASS ; 19
	const CARRIE
	const BRIDGET
	const ALICE
	const KRISE
	const CONNIE1
	const LINDA
	const LAURA
	const SHANNON
	const MICHELLE
	const DANA1
	const ELLEN
	const CONNIE2
	const CONNIE3
	const DANA2
	const DANA3

	trainerclass JANINE ; 1a
	const JANINE1

	trainerclass COOLTRAINERM ; 1b
	const NICK
	const AARON
	const PAUL
	const CODY
	const MIKE
	const GAVEN1
	const GAVEN2
	const RYAN
	const JAKE
	const GAVEN3
	const BLAKE
	const BRIAN
	const ERICK
	const ANDY
	const TYLER
	const SEAN
	const KEVIN
	const STEVE
	const ALLEN

	trainerclass COOLTRAINERF ; 1c
	const GWEN
	const LOIS
	const FRAN
	const LOLA
	const KATE
	const IRENE
	const KELLY
	const JOYCE
	const BETH1
	const REENA1
	const MEGAN
	const BETH2
	const CAROL
	const QUINN
	const EMMA
	const CYBIL
	const JENN
	const BETH3
	const REENA2
	const REENA3

	trainerclass BEAUTY ; 1d
	const VICTORIA
	const SAMANTHA
	const JULIE
	const JACLYN
	const BRENDA
	const CASSIE
	const CAROLINE
	const CARLENE
	const JESSICA
	const RACHAEL
	const ANGELICA
	const KENDRA
	const VERONICA
	const JULIA
	const THERESA
	const VALERIE

	trainerclass POKEMANIAC ; 1e
	const LARRY
	const ANDREW
	const CALVIN
	const SHANE
	const BEN
	const BRENT1
	const RON
	const ETHAN
	const BRENT2
	const BRENT3
	const ISSAC
	const DONALD
	const ZACH

	trainerclass GRUNTM ; 1f
	const GRUNTM_1
	const GRUNTM_2
	const GRUNTM_3
	const GRUNTM_4
	const GRUNTM_5
	const GRUNTM_6
	const GRUNTM_7
	const GRUNTM_8
	const GRUNTM_9
	const GRUNTM_10
	const GRUNTM_11
	const GRUNTM_12_UNUSED
	const GRUNTM_13
	const GRUNTM_14
	const GRUNTM_15
	const GRUNTM_16
	const GRUNTM_17
	const GRUNTM_18
	const GRUNTM_19
	const GRUNTM_20
	const GRUNTM_21
	const GRUNTM_22_UNUSED
	const GRUNTM_23_UNUSED
	const GRUNTM_24
	const GRUNTM_25
	const GRUNTM_26_UNUSED
	const GRUNTM_27_UNUSED
	const GRUNTM_28
	const GRUNTM_29
	const GRUNTM_30_UNUSED
	const GRUNTM_31

	trainerclass GENTLEMAN ; 20
	const PRESTON
	const EDWARD
	const GREGORY
	const VIRGIL
	const ALFRED

	trainerclass SKIER ; 21
	const ROXANNE
	const CLARISSA

	trainerclass TEACHER ; 22
	const COLETTE
	const HILLARY
	const SHIRLEY

	trainerclass SABRINA ; 23
	const SABRINA1

	trainerclass BUG_CATCHER ; 24
	const DON
	const ROB
	const ED
	const WADE1
	const BUG_CATCHER_BENNY
	const AL
	const JOSH
	const ARNIE1
	const KEN
	const WADE2
	const WADE3
	const DOUG
	const ARNIE2
	const ARNIE3

	trainerclass FISHER ; 25
	const JUSTIN
	const RALPH1
	const ARNOLD
	const KYLE
	const HENRY
	const MARVIN
	const CHRIS1
	const ANDRE
	const RAYMOND
	const WILTON1
	const EDGAR
	const JONAH
	const MARTIN
	const STEPHEN
	const BARNEY
	const RALPH2
	const RALPH3
	const CHRIS2
	const CHRIS3
	const WILTON2
	const SCOTT
	const WILTON3

	trainerclass SWIMMERM ; 26
	const HAROLD
	const SIMON
	const RANDALL
	const CHARLIE
	const GEORGE
	const BERKE
	const KIRK
	const MATHEW
	const HAL
	const PATON
	const DARYL
	const WALTER
	const TONY
	const JEROME
	const TUCKER
	const RICK
	const CAMERON
	const SETH
	const JAMES
	const LEWIS
	const PARKER

	trainerclass SWIMMERF ; 27
	const ELAINE
	const PAULA
	const KAYLEE
	const SUSIE
	const DENISE
	const KARA
	const WENDY
	const LISA
	const JILL
	const MARY
	const KATIE
	const DAWN
	const TARA
	const NICOLE
	const LORI
	const JODY
	const NIKKI
	const DIANA
	const BRIANA

	trainerclass SAILOR ; 28
	const EUGENE
	const HUEY1
	const TERRELL
	const KENT
	const ERNEST
	const JEFF
	const GARRETT
	const KENNETH
	const STANLY
	const HARRY
	const HUEY2
	const HUEY3

	trainerclass SUPER_NERD ; 29
	const STAN
	const ERIC
	const GREGG
	const JAY
	const DAVE
	const SAM
	const TOM
	const PAT
	const SHAWN
	const TERU
	const RUSS
	const NORTON

	trainerclass RIVAL2 ; 2a
	const RIVAL2_1_CHIKORITA
	const RIVAL2_1_CYNDAQUIL
	const RIVAL2_1_TOTODILE
	const RIVAL2_2_CHIKORITA
	const RIVAL2_2_CYNDAQUIL
	const RIVAL2_2_TOTODILE

	trainerclass GUITARIST ; 2b
	const CLYDE
	const VINCENT

	trainerclass HIKER ; 2c
	const ANTHONY1
	const RUSSELL
	const PHILLIP
	const LEONARD
	const ANTHONY2
	const BENJAMIN
	const ERIK
	const MICHAEL
	const PARRY1
	const TIMOTHY
	const BAILEY
	const ANTHONY3
	const TIM
	const NOLAND
	const SIDNEY
	const KENNY
	const JIM
	const DANIEL
	const PARRY2
	const PARRY3

	trainerclass BIKER ; 2d
	const KAZU1
	const KAZU2
	const DWAYNE
	const HARRIS
	const ZEKE
	const CHARLES
	const RILEY
	const JOEL
	const GLENN

	trainerclass BLAINE ; 2e
	const BLAINE1

	trainerclass BURGLAR ; 2f
	const DUNCAN
	const EDDIE
	const COREY

	trainerclass FIREBREATHER ; 30
	const OTIS
	const DICK
	const NED
	const BURT
	const BILL
	const WALT
	const RAY
	const LYLE

	trainerclass JUGGLER ; 31
	const IRWIN1
	const FRITZ
	const HORTON
	const IRWIN2
	const IRWIN3

	trainerclass BLACKBELT_T ; 32
	const KENJI1
	const YOSHI
	const KENJI2
	const LAO
	const NOB
	const KIYO
	const LUNG
	const KENJI3
	const WAI

	trainerclass EXECUTIVEM ; 33
	const EXECUTIVEM_1
	const EXECUTIVEM_2
	const EXECUTIVEM_3
	const EXECUTIVEM_4

	trainerclass PSYCHIC_T ; 34
	const NATHAN
	const FRANKLIN
	const HERMAN
	const FIDEL
	const GREG
	const NORMAN
	const MARK
	const PHIL
	const RICHARD
	const GILBERT
	const JARED
	const RODNEY

	trainerclass PICNICKER ; 35
	const LIZ1
	const GINA1
	const BROOKE
	const KIM
	const CINDY
	const HOPE
	const SHARON
	const DEBRA
	const GINA2
	const ERIN1
	const LIZ2
	const LIZ3
	const HEIDI
	const EDNA
	const GINA3
	const TIFFANY1
	const TIFFANY2
	const ERIN2
	const TANYA
	const TIFFANY3
	const ERIN3

	trainerclass CAMPER ; 36
	const ROLAND
	const TODD1
	const IVAN
	const ELLIOT
	const BARRY
	const LLOYD
	const DEAN
	const SID
	const HARVEY
	const DALE
	const TED
	const TODD2
	const TODD3
	const THOMAS
	const LEROY
	const DAVID
	const JOHN
	const JERRY
	const SPENCER

	trainerclass EXECUTIVEF ; 37
	const EXECUTIVEF_1
	const EXECUTIVEF_2

	trainerclass SAGE ; 38
	const CHOW
	const NICO
	const JIN
	const TROY
	const JEFFREY
	const PING
	const EDMOND
	const NEAL
	const LI

	trainerclass MEDIUM ; 39
	const MARTHA
	const GRACE
	const BETHANY
	const MARGRET
	const ETHEL
	const REBECCA
	const DORIS

	trainerclass BOARDER ; 3a
	const RONALD
	const BRAD
	const DOUGLAS

	trainerclass POKEFANM ; 3b
	const WILLIAM
	const DEREK1
	const ROBERT
	const JOSHUA
	const CARTER
	const TREVOR
	const BRANDON
	const JEREMY
	const COLIN
	const DEREK2
	const DEREK3
	const ALEX

	trainerclass KIMONO_GIRL ; 3c
	const KYOKO
	const NAOKO
	const SAYO
	const ZUKI
	const KUNI
	const MIKI

	trainerclass TWINS ; 3d
	const AMYANDMAY1
	const ANNANDANNE1
	const ANNANDANNE2
	const AMYANDMAY2
	const JOANDZOE1
	const JOANDZOE2
	const MEGANDPEG1
	const MEGANDPEG2

	trainerclass POKEFANF ; 3e
	const BEVERLY1
	const RUTH
	const BEVERLY2
	const BEVERLY3
	const GEORGIA

	trainerclass RED ; 3f
	const RED1

	trainerclass BLUE ; 40
	const BLUE1

	trainerclass OFFICER ; 41
	const KEITH
	const DIRK

	trainerclass GRUNTF ; 42
	const GRUNTF_1
	const GRUNTF_2
	const GRUNTF_3
	const GRUNTF_4
	const GRUNTF_5

	trainerclass YOUNGSTER_GEN1     ; 43
	const JIMMY_GEN1
	const WARREN_GEN1
	const JOSH_GEN1
	const TIMMY_GEN1
	const CALVIN_GEN1
	const DAN_GEN1
	const CHAD_GEN1
	const TYLER_GEN1
	const EDDIE_GEN1
	const DILLON_GEN1
	const YASU_GEN1
	const DAVE_GEN1

	trainerclass BUG_CATCHER_GEN1   ; 44
	const RICK1_GEN1
	const DOUG_GEN1
	const SAMMY_GEN1
	const RICK2_GEN1
	const GREG_GEN1
	const JAMES_GEN1
	const KENT_GEN1
	const ROBBY_GEN1
	const CALE_GEN1
	const KEIGO_GEN1
	const ELIJAH_GEN1
	const BRENT_GEN1
	const SID_GEN1

	trainerclass LASS_GEN1          ; 45
	const JANICE_GEN1
	const SALLY_GEN1
	const ROBIN_GEN1
	const CRISSY_GEN1
	const MIRIAM_GEN1
	const IRIS_GEN1
	const ALI_GEN1
	const RELI_GEN1
	const KELSEY_GEN1
	const HALEY_GEN1
	const ANN_GEN1
	const DAWN_GEN1
	const PAIGE_GEN1
	const ANDREA_GEN1
	const MEGAN_GEN1
	const JULIA_GEN1
	const KAY_GEN1
	const LISA_GEN1

	trainerclass SAILOR_GEN1        ; 46
	const EDMOND_GEN1
	const TREVOR_GEN1
	const LEONARD_GEN1
	const DUNCAN_GEN1
	const HUEY_GEN1
	const DYLAN_GEN1
	const PHILLIP_GEN1
	const DWAYNE_GEN1

	trainerclass JR_TRAINER_M_GEN1  ; 47
	const JERRY_GEN1
	const SHANE_GEN1
	const ETHAN_GEN1
	const RICKY_GEN1
	const JEFF_GEN1
	const FLINT_GEN1
	const CHRIS_GEN1
	const DREW_GEN1
	const JUSTIN_GEN1

	trainerclass JR_TRAINER_F_GEN1  ; 48
	const DIANA_GEN1
	const NANCY_GEN1
	const ISABEL_GEN1
	const ALICIA_GEN1
	const CAITY_GEN1
	const HEIDI_GEN1
	const CAROL_GEN1
	const SOFIA_GEN1
	const MARTHA_GEN1
	const TANYA_GEN1
	const SUSIE_GEN1
	const GINGER_GEN1
	const GWEN_GEN1
	const ALMA_GEN1
	const MISSY_GEN1
	const LEAH_GEN1
	const DANA_GEN1
	const ARIANA_GEN1
	const KINDRA_GEN1
	const BECKY_GEN1
	const CELIA_GEN1
	const YASMIN_GEN1
	const IRENE_GEN1

	trainerclass POKEMANIAC_GEN1    ; 49
	const MARK_GEN1
	const HERMAN_GEN1
	const COOPER_GEN1
	const STEVE_GEN1
	const WINSTON_GEN1
	const DAWSON_GEN1
	const ASHTON_GEN1

	trainerclass SUPER_NERD_GEN1    ; 4a
	const JOVAN_GEN1
	const MIGUEL_GEN1
	const AIDAN_GEN1
	const GLENN_GEN1
	const LESLIE_GEN1
	const ERIK_GEN1
	const AVERY_GEN1
	const DEREK_GEN1
	const ZAC_GEN1

	trainerclass HIKER_GEN1         ; 4b
	const MARCOS_GEN1
	const FRANKLIN_GEN1
	const NOB_GEN1
	const WAYNE_GEN1
	const ALAN_GEN1
	const SIDNEY_GEN1
	const CLARK_GEN1
	const TRENT_GEN1
	const DUDLEY_GEN1
	const ALLEN_GEN1
	const JEREMY_GEN1
	const LENNY_GEN1
	const OLIVER_GEN1
	const LUCAS_GEN1
	const ERIC_GEN1

	trainerclass BIKER_GEN1         ; 4c
	const JARED_GEN1
	const MALIK_GEN1
	const ERNEST_GEN1
	const ALEX_GEN1
	const LAO_GEN1
	const HIDEO_GEN1
	const RUBEN_GEN1
	const VIRGIL_GEN1
	const BILLY_GEN1
	const NIKOLAS_GEN1
	const JAXON_GEN1
	const WILLIAM_GEN1
	const LUKAS_GEN1
	const ISAAC_GEN1
	const GERALD_GEN1

	trainerclass BURGLAR_GEN1       ; 4d
	const QUINN_GEN1
	const RAMON_GEN1
	const DUSTY_GEN1
	const ARNIE_GEN1
	const SIMON_GEN1
	const LEWIS_GEN1

	trainerclass ENGINEER_GEN1      ; 4e
	const BRAXTON_GEN1
	const BERNIE_GEN1

	trainerclass FISHER_GEN1        ; 4f
	const DALE_GEN1
	const ELLIOT_GEN1
	const KYLE_GEN1
	const MARTIN_GEN1
	const STEPHEN_GEN1
	const BARNEY_GEN1
	const RONALD_GEN1
	const CLAUDE_GEN1
	const WADE_GEN1
	const NOLAN_GEN1
	const ANDREW_GEN1

	trainerclass SWIMMER_GEN1       ; 50
	const LUIS_GEN1
	const RICHARD_GEN1
	const REECE_GEN1
	const MATTHEW_GEN1
	const DOUGLAS_GEN1
	const DAVID_GEN1
	const TONY_GEN1
	const AXLE_GEN1
	const TUCKER1_GEN1
	const DEAN_GEN1
	const DARRIN_GEN1
	const SPENCER_GEN1
	const JACK_GEN1
	const JEROME_GEN1
	const ROLAND_GEN1

	trainerclass CUE_BALL_GEN1      ; 51
	const KOJI_GEN1
	const LUKE_GEN1
	const CAMRON_GEN1
	const RAUL_GEN1
	const ISAIAH_GEN1
	const ZEKE_GEN1
	const JAMAL_GEN1
	const COREY_GEN1
	const IAN_GEN1

	trainerclass GAMBLER_GEN1       ; 52
	const HUGO_GEN1
	const JASPER_GEN1
	const DIRK_GEN1
	const DARIAN_GEN1
	const STAN_GEN1
	const RICH_GEN1

	trainerclass BEAUTY_GEN1        ; 53
	const BRIDGET_GEN1
	const TAMIA_GEN1
	const LORI_GEN1
	const LOLA_GEN1
	const SHEILA_GEN1
	const TIFFANY_GEN1
	const NORA_GEN1
	const MELISSA_GEN1
	const GRACE_GEN1
	const OLIVIA_GEN1
	const ANYA_GEN1
	const ALICE_GEN1
	const CONNIE_GEN1
	const SHIRLEY_GEN1

	trainerclass PSYCHIC_TR_GEN1    ; 54
	const JOHAN_GEN1
	const TYRON_GEN1
	const CAMERON_GEN1
	const PRESTON_GEN1

	trainerclass ROCKER_GEN1        ; 55
	const VINCENT1_GEN1
	const LUCA_GEN1

	trainerclass JUGGLER_GEN1       ; 56
	const DALTON_GEN1
	const NELSON_GEN1
	const KIRK_GEN1
	const SHAWN_GEN1
	const GREGORY_GEN1
	const KAYDEN_GEN1
	const NATE_GEN1

	trainerclass TAMER_GEN1         ; 57
	const PHIL_GEN1
	const EDGAR_GEN1
	const JASON_GEN1
	const COLE_GEN1
	const VINCENT2_GEN1

	trainerclass BIRD_KEEPER_GEN1   ; 58
	const BRET_GEN1
	const PERRY_GEN1
	const ROBERT_GEN1
	const DONALD_GEN1
	const BENNY_GEN1
	const CHIP_GEN1
	const EDWIN_GEN1
	const WILTON_GEN1
	const BORIS_GEN1
	const JACOB_GEN1
	const ROGER_GEN1
	const CARTER_GEN1
	const MITCH_GEN1
	const BECK_GEN1
	const MARLON_GEN1

	trainerclass BLACKBELT_GEN1     ; 59
	const KIYO_GEN1
	const MIKE_GEN1
	const HIDEKI_GEN1
	const AARON_GEN1
	const HITOSHI_GEN1
	const ATSUSHI_GEN1
	const KOICHI_GEN1
	const TAKASHI_GEN1
	const DAISUKE_GEN1

	trainerclass RIVAL1_GEN1        ; 5a
	const RIVAL1_1_SQUIRTLE_GEN1
	const RIVAL1_1_BULBASAUR_GEN1
	const RIVAL1_1_CHARMANDER_GEN1
	const RIVAL1_2_SQUIRTLE_GEN1
	const RIVAL1_2_BULBASAUR_GEN1
	const RIVAL1_2_CHARMANDER_GEN1
	const RIVAL1_3_SQUIRTLE_GEN1
	const RIVAL1_3_BULBASAUR_GEN1
	const RIVAL1_3_CHARMANDER_GEN1

	trainerclass PROF_OAK_GEN1      ; 5b
	const OAK1_GEN1
	const OAK2_GEN1
	const OAK3_GEN1

	trainerclass SCIENTIST_GEN1     ; 5c
	const TED_GEN1
	const CONNOR_GEN1
	const LIAM_GEN1
	const JOSE_GEN1
	const RODNEY_GEN1
	const BEAU_GEN1
	const TAYLOR_GEN1
	const JOSHUA_GEN1
	const PARKER_GEN1
	const ED_GEN1
	const TRAVIS_GEN1
	const BRAYDON_GEN1
	const IVAN_GEN1

	trainerclass BOSS_GIOVANNI_GEN1 ; 5d
	const GIOVANNI1_GEN1
	const GIOVANNI2_GEN1

	trainerclass LEADER_GIOVANNI_GEN1 ; 5e
	const GIOVANNI3_GEN1

	trainerclass ROCKET_GEN1        ; 5f
	const GRUNT1_GEN1
	const GRUNT2_GEN1
	const GRUNT3_GEN1
	const GRUNT4_GEN1
	const GRUNT5_GEN1
	const GRUNT6_GEN1
	const GRUNT7_GEN1
	const GRUNT8_GEN1
	const GRUNT9_GEN1
	const GRUNT10_GEN1
	const GRUNT11_GEN1
	const GRUNT12_GEN1
	const GRUNT13_GEN1
	const GRUNT14_GEN1
	const GRUNT15_GEN1
	const GRUNT16_GEN1
	const GRUNT17_GEN1
	const GRUNT18_GEN1
	const GRUNT19_GEN1
	const GRUNT20_GEN1
	const GRUNT21_GEN1
	const GRUNT22_GEN1
	const GRUNT23_GEN1
	const GRUNT24_GEN1
	const GRUNT25_GEN1
	const GRUNT26_GEN1
	const GRUNT27_GEN1
	const GRUNT28_GEN1
	const GRUNT29_GEN1
	const GRUNT30_GEN1
	const GRUNT31_GEN1
	const GRUNT32_GEN1
	const GRUNT33_GEN1
	const GRUNT34_GEN1
	const GRUNT35_GEN1
	const GRUNT36_GEN1
	const GRUNT37_GEN1
	const GRUNT38_GEN1
	const GRUNT39_GEN1
	const GRUNT40_GEN1

	trainerclass COOLTRAINER_M_GEN1 ; 60
	const SAUL_GEN1
	const BEN_GEN1
	const COLBY_GEN1
	const HANK_GEN1
	const YUJI_GEN1
	const WREN_GEN1

	trainerclass COOLTRAINER_F_GEN1 ; 61
	const MARY_GEN1
	const TINA_GEN1
	const ALEXA_GEN1
	const NAOMI_GEN1

	trainerclass BRUNO_GEN1         ; 62
	const BRUNO1_GEN1

	trainerclass BROCK_GEN1         ; 63
	const BROCK1_GEN1

	trainerclass MISTY_GEN1         ; 64
	const MISTY1_GEN1

	trainerclass LT_SURGE_GEN1      ; 65
	const LT_SURGE1_GEN1

	trainerclass ERIKA_GEN1         ; 66
	const ERIKA1_GEN1

	trainerclass KOGA_GEN1          ; 67
	const KOGA1_GEN1

	trainerclass BLAINE_GEN1        ; 68
	const BLAINE1_GEN1

	trainerclass SABRINA_GEN1       ; 69
	const SABRINA1_GEN1

	trainerclass GENTLEMAN_GEN1     ; 6a
	const THOMAS_GEN1
	const ARTHUR_GEN1
	const BROOKS_GEN1
	const TUCKER2_GEN1
	const LAMAR_GEN1

	trainerclass RIVAL2_GEN1        ; 6b
	const RIVAL2_1_SQUIRTLE_GEN1
	const RIVAL2_1_BULBASAUR_GEN1
	const RIVAL2_1_CHARMANDER_GEN1
	const RIVAL2_2_SQUIRTLE_GEN1
	const RIVAL2_2_BULBASAUR_GEN1
	const RIVAL2_2_CHARMANDER_GEN1
	const RIVAL2_3_SQUIRTLE_GEN1
	const RIVAL2_3_BULBASAUR_GEN1
	const RIVAL2_3_CHARMANDER_GEN1
	const RIVAL2_4_SQUIRTLE_GEN1
	const RIVAL2_4_BULBASAUR_GEN1
	const RIVAL2_4_CHARMANDER_GEN1

	trainerclass RIVAL3_GEN1        ; 6c
	const RIVAL3_1_SQUIRTLE_GEN1
	const RIVAL3_1_BULBASAUR_GEN1
	const RIVAL3_1_CHARMANDER_GEN1

	trainerclass LORELEI_GEN1       ; 6d
	const LORELEI1_GEN1

	trainerclass CHANNELER_GEN1     ; 6e
	const HOPE_GEN1
	const CARLY_GEN1
	const PATRICIA_GEN1
	const PAULA_GEN1
	const LAUREL_GEN1
	const JODY_GEN1
	const TAMMY_GEN1
	const RUTH_GEN1
	const KARINA_GEN1
	const JANAE_GEN1
	const ANGEL_GEN1
	const JENNY_GEN1
	const EMILIA_GEN1
	const AMANDA_GEN1
	const STACY_GEN1
	const TASHA_GEN1

	trainerclass AGATHA_GEN1        ; 6f
	const AGATHA1_GEN1

	trainerclass LANCE_GEN1         ; 70
	const LANCE1_GEN1

NUM_TRAINER_CLASSES EQU __trainer_class__ - 1
