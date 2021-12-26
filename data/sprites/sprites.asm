overworld_sprite: MACRO
; pointer, length, type, palette
	dw \1
	db \2 tiles, BANK(\1), \3, \4
ENDM

OverworldSprites:
; entries correspond to SPRITE_* constants
	table_width NUM_SPRITEDATA_FIELDS, OverworldSprites
	overworld_sprite ChrisSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite ChrisBikeSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite GameboyKidSpriteGFX, 12, STANDING_SPRITE, PAL_OW_GREEN
	overworld_sprite SilverSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite OakSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite RedSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite BlueSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite BillSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite ElderSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite JanineSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite KurtSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite MomSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite BlaineSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite RedsMomSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite DaisySpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite ElmSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite WillSpriteGFX, 12, STANDING_SPRITE, PAL_OW_RED
	overworld_sprite FalknerSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite WhitneySpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite BugsySpriteGFX, 12, WALKING_SPRITE, PAL_OW_GREEN
	overworld_sprite MortySpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite ChuckSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite JasmineSpriteGFX, 12, WALKING_SPRITE, PAL_OW_GREEN
	overworld_sprite PryceSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite ClairSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite BrockSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite KarenSpriteGFX, 12, STANDING_SPRITE, PAL_OW_BLUE
	overworld_sprite BrunoSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite MistySpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite LanceSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite SurgeSpriteGFX, 12, WALKING_SPRITE, PAL_OW_GREEN
	overworld_sprite ErikaSpriteGFX, 12, WALKING_SPRITE, PAL_OW_GREEN
	overworld_sprite KogaSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite SabrinaSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite CooltrainerMSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite CooltrainerFSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite BugCatcherSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite TwinSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite YoungsterSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite LassSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite TeacherSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite BeautySpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite SuperNerdSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite RockerSpriteGFX, 12, WALKING_SPRITE, PAL_OW_GREEN
	overworld_sprite PokefanMSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite PokefanFSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite GrampsSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite GrannySpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite SwimmerGuySpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite SwimmerGirlSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite BigSnorlaxSpriteGFX, 12, STANDING_SPRITE, PAL_OW_BLUE
	overworld_sprite SurfingPikachuSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite RocketSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite RocketGirlSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite NurseSpriteGFX, 12, STANDING_SPRITE, PAL_OW_RED
	overworld_sprite LinkReceptionistSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite ClerkSpriteGFX, 12, WALKING_SPRITE, PAL_OW_GREEN
	overworld_sprite FisherSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite FishingGuruSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite ScientistSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite KimonoGirlSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite SageSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite UnusedGuySpriteGFX, 12, STANDING_SPRITE, PAL_OW_RED
	overworld_sprite GentlemanSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite BlackBeltSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite ReceptionistSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite OfficerSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite CalSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite SlowpokeSpriteGFX, 4, STILL_SPRITE, PAL_OW_RED
	overworld_sprite CaptainSpriteGFX, 12, STANDING_SPRITE, PAL_OW_BROWN
	overworld_sprite BigLaprasSpriteGFX, 12, STANDING_SPRITE, PAL_OW_BLUE
	overworld_sprite GymGuideSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite SailorSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite BikerSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite PharmacistSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite MonsterSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite FairySpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite BirdSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite DragonSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite BigOnixSpriteGFX, 12, STANDING_SPRITE, PAL_OW_BROWN
	overworld_sprite N64SpriteGFX, 4, STILL_SPRITE, PAL_OW_BROWN
	overworld_sprite SudowoodoSpriteGFX, 12, STANDING_SPRITE, PAL_OW_GREEN
	overworld_sprite SurfSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite PokeBallSpriteGFX, 4, STILL_SPRITE, PAL_OW_RED
	overworld_sprite PokedexSpriteGFX, 4, STILL_SPRITE, PAL_OW_BROWN
	overworld_sprite PaperSpriteGFX, 4, STILL_SPRITE, PAL_OW_BLUE
	overworld_sprite VirtualBoySpriteGFX, 4, STILL_SPRITE, PAL_OW_RED
	overworld_sprite OldLinkReceptionistSpriteGFX, 12, STANDING_SPRITE, PAL_OW_RED
	overworld_sprite RockSpriteGFX, 4, STILL_SPRITE, PAL_OW_ROCK
	overworld_sprite BoulderSpriteGFX, 4, STILL_SPRITE, PAL_OW_ROCK
	overworld_sprite SnesSpriteGFX, 4, STILL_SPRITE, PAL_OW_BLUE
	overworld_sprite FamicomSpriteGFX, 4, STILL_SPRITE, PAL_OW_RED
	overworld_sprite FruitTreeSpriteGFX, 4, STILL_SPRITE, PAL_OW_TREE
	overworld_sprite GoldTrophySpriteGFX, 4, STILL_SPRITE, PAL_OW_BROWN
	overworld_sprite SilverTrophySpriteGFX, 4, STILL_SPRITE, PAL_OW_SILVER
	overworld_sprite KantoBlueSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite KantoYoungsterSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite LittleGirlSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite KantoBirdSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite GamblerSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite KantoSuperNerdSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite GirlSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite HikerSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite KantoBeautySpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite KantoSailorSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite CookSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite BikeShopClerkSpriteGFX, 12, STANDING_SPRITE, PAL_OW_GREEN
	overworld_sprite GiovanniSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite KantoRocketSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite ChannelerSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite WaiterSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite KantoErikaSpriteGFX, 12, WALKING_SPRITE, PAL_OW_GREEN
	overworld_sprite BrunetteGirlSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite KantoScientistSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite KantoRockerSpriteGFX, 12, WALKING_SPRITE, PAL_OW_GREEN
	overworld_sprite SafariZoneWorkerSpriteGFX, 12, STANDING_SPRITE, PAL_OW_BROWN
	overworld_sprite KantoGymGuideSpriteGFX, 12, STANDING_SPRITE, PAL_OW_BLUE
	overworld_sprite KantoGrampsSpriteGFX, 12, STANDING_SPRITE, PAL_OW_BROWN
	overworld_sprite KantoClerkSpriteGFX, 12, STANDING_SPRITE, PAL_OW_GREEN
	overworld_sprite KantoGrannySpriteGFX, 12, STANDING_SPRITE, PAL_OW_BROWN
	overworld_sprite KantoNurseSpriteGFX, 12, STANDING_SPRITE, PAL_OW_RED
	overworld_sprite SilphPresidentSpriteGFX, 12, STANDING_SPRITE, PAL_OW_BLUE
	overworld_sprite SilphWorkerSpriteGFX, 12, STANDING_SPRITE, PAL_OW_BROWN
	overworld_sprite WardenSpriteGFX, 12, STANDING_SPRITE, PAL_OW_RED
	overworld_sprite KantoKogaSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite GuardSpriteGFX, 12, STANDING_SPRITE, PAL_OW_BLUE
	overworld_sprite KantoMomSpriteGFX, 12, STANDING_SPRITE, PAL_OW_RED
	overworld_sprite BaldingGuySpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite LittleBoySpriteGFX, 12, STANDING_SPRITE, PAL_OW_BLUE
	overworld_sprite AgathaSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite LoreleiSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite SeelSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite FossilSpriteGFX, 4, STILL_SPRITE, PAL_OW_BROWN
IF DEF(_BLUE)
	overworld_sprite KantoBoulderSpriteGFX, 4, STILL_SPRITE, PAL_OW_BROWN
ELIF DEF(_GOLD)
	overworld_sprite KantoBoulderSpriteGFX, 4, STILL_SPRITE, PAL_OW_ROCK
ENDC
	overworld_sprite ClipboardSpriteGFX, 4, STILL_SPRITE, PAL_OW_BROWN
	overworld_sprite KantoSnorlaxSpriteGFX, 4, STILL_SPRITE, PAL_OW_BLUE
	overworld_sprite OldAmberSpriteGFX, 4, STILL_SPRITE, PAL_OW_BROWN
	overworld_sprite GamblerAsleepSpriteGFX, 4, STILL_SPRITE, PAL_OW_RED
	overworld_sprite RedBikeSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
IF DEF(_GOLD)
	overworld_sprite CouchManSpriteGFX, 4, STILL_SPRITE, PAL_OW_RED
ENDC
	assert_table_length NUM_OVERWORLD_SPRITES
