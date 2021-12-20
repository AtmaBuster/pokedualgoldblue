; Pics are defined in gfx/pics.asm

TrainerPicPointers::
; entries correspond to trainer classes (see constants/trainer_constants.asm)
	table_width 3, TrainerPicPointers
	dba FalknerPic
	dba WhitneyPic
	dba BugsyPic
	dba MortyPic
	dba PrycePic
	dba JasminePic
	dba ChuckPic
	dba ClairPic
	dba Rival1Pic
	IF DEF(_GOLD)
		dba PokemonProfPic
	ELIF DEF(_BLUE)
		dba ProfOakGen1Pic
	ENDC
	dba WillPic
	dba CalPic
	IF DEF(_GOLD)
		dba BrunoPic
	ELIF DEF(_BLUE)
		dba BrunoGen1Pic
	ENDC
	dba KarenPic
	IF DEF(_GOLD)
		dba KogaPic
	ELIF DEF(_BLUE)
		dba KogaGen1Pic
	ENDC
	IF DEF(_GOLD)
		dba ChampionPic
	ELIF DEF(_BLUE)
		dba LanceGen1Pic
	ENDC
	IF DEF(_GOLD)
		dba BrockPic
	ELIF DEF(_BLUE)
		dba BrockGen1Pic
	ENDC
	IF DEF(_GOLD)
		dba MistyPic
	ELIF DEF(_BLUE)
		dba MistyGen1Pic
	ENDC
	IF DEF(_GOLD)
		dba LtSurgePic
	ELIF DEF(_BLUE)
		dba LtSurgeGen1Pic
	ENDC
	IF DEF(_GOLD)
		dba ScientistPic
	ELIF DEF(_BLUE)
		dba ScientistGen1Pic
	ENDC
	IF DEF(_GOLD)
		dba ErikaPic
	ELIF DEF(_BLUE)
		dba ErikaGen1Pic
	ENDC
	IF DEF(_GOLD)
		dba YoungsterPic
	ELIF DEF(_BLUE)
		dba YoungsterGen1Pic
	ENDC
	dba SchoolboyPic
	IF DEF(_GOLD)
		dba BirdKeeperPic
	ELIF DEF(_BLUE)
		dba BirdKeeperGen1Pic
	ENDC
	IF DEF(_GOLD)
		dba LassPic
	ELIF DEF(_BLUE)
		dba LassGen1Pic
	ENDC
	dba JaninePic
	IF DEF(_GOLD)
		dba CooltrainermPic
	ELIF DEF(_BLUE)
		dba CooltrainerMGen1Pic
	ENDC
	IF DEF(_GOLD)
		dba CooltrainerfPic
	ELIF DEF(_BLUE)
		dba CooltrainerFGen1Pic
	ENDC
	IF DEF(_GOLD)
		dba BeautyPic
	ELIF DEF(_BLUE)
		dba BeautyGen1Pic
	ENDC
	IF DEF(_GOLD)
		dba PokemaniacPic
	ELIF DEF(_BLUE)
		dba PokemaniacGen1Pic
	ENDC
	IF DEF(_GOLD)
		dba GruntmPic
	ELIF DEF(_BLUE)
		dba RocketGen1Pic
	ENDC
	IF DEF(_GOLD)
		dba GentlemanPic
	ELIF DEF(_BLUE)
		dba GentlemanGen1Pic
	ENDC
	dba SkierPic
	dba TeacherPic
	IF DEF(_GOLD)
		dba SabrinaPic
	ELIF DEF(_BLUE)
		dba SabrinaGen1Pic
	ENDC
	IF DEF(_GOLD)
		dba BugCatcherPic
	ELIF DEF(_BLUE)
		dba BugCatcherGen1Pic
	ENDC
	IF DEF(_GOLD)
		dba FisherPic
	ELIF DEF(_BLUE)
		dba FisherGen1Pic
	ENDC
	IF DEF(_GOLD)
		dba SwimmermPic
	ELIF DEF(_BLUE)
		dba SwimmerGen1Pic
	ENDC
	dba SwimmerfPic
	IF DEF(_GOLD)
		dba SailorPic
	ELIF DEF(_BLUE)
		dba SailorGen1Pic
	ENDC
	IF DEF(_GOLD)
		dba SuperNerdPic
	ELIF DEF(_BLUE)
		dba SuperNerdGen1Pic
	ENDC
	dba Rival2Pic
	dba GuitaristPic
	IF DEF(_GOLD)
		dba HikerPic
	ELIF DEF(_BLUE)
		dba HikerGen1Pic
	ENDC
	IF DEF(_GOLD)
		dba BikerPic
	ELIF DEF(_BLUE)
		dba BikerGen1Pic
	ENDC
	IF DEF(_GOLD)
		dba BlainePic
	ELIF DEF(_BLUE)
		dba BlaineGen1Pic
	ENDC
	IF DEF(_GOLD)
		dba BurglarPic
	ELIF DEF(_BLUE)
		dba BurglarGen1Pic
	ENDC
	dba FirebreatherPic
	IF DEF(_GOLD)
		dba JugglerPic
	ELIF DEF(_BLUE)
		dba JugglerGen1Pic
	ENDC
	IF DEF(_GOLD)
		dba BlackbeltTPic
	ELIF DEF(_BLUE)
		dba BlackbeltGen1Pic
	ENDC
	dba ExecutivemPic
	IF DEF(_GOLD)
		dba PsychicTPic
	ELIF DEF(_BLUE)
		dba PsychicGen1Pic
	ENDC
	IF DEF(_GOLD)
		dba PicnickerPic
	ELIF DEF(_BLUE)
		dba JrTrainerFGen1Pic
	ENDC
	IF DEF(_GOLD)
		dba CamperPic
	ELIF DEF(_BLUE)
		dba JrTrainerMGen1Pic
	ENDC
	dba ExecutivefPic
	dba SagePic
	IF DEF(_GOLD)
		dba MediumPic
	ELIF DEF(_BLUE)
		dba ChannelerGen1Pic
	ENDC
	dba BoarderPic
	dba PokefanmPic
	dba KimonoGirlPic
	dba TwinsPic
	dba PokefanfPic
	dba RedPic
	IF DEF(_GOLD)
		dba BluePic
	ELIF DEF(_BLUE)
		dba Rival1Gen1Pic
	ENDC
	dba OfficerPic
	dba GruntfPic

	IF DEF(_BLUE)
		dba YoungsterGen1Pic
	ELIF DEF(_GOLD)
		dba YoungsterPic
	ENDC
	IF DEF(_BLUE)
		dba BugCatcherGen1Pic
	ELIF DEF(_GOLD)
		dba BugCatcherPic
	ENDC
	IF DEF(_BLUE)
		dba LassGen1Pic
	ELIF DEF(_GOLD)
		dba LassPic
	ENDC
	IF DEF(_BLUE)
		dba SailorGen1Pic
	ELIF DEF(_GOLD)
		dba SailorPic
	ENDC
	IF DEF(_BLUE)
		dba JrTrainerMGen1Pic
	ELIF DEF(_GOLD)
		dba CamperPic
	ENDC
	IF DEF(_BLUE)
		dba JrTrainerFGen1Pic
	ELIF DEF(_GOLD)
		dba PicnickerPic
	ENDC
	IF DEF(_BLUE)
		dba PokemaniacGen1Pic
	ELIF DEF(_GOLD)
		dba PokemaniacPic
	ENDC
	IF DEF(_BLUE)
		dba SuperNerdGen1Pic
	ELIF DEF(_GOLD)
		dba SuperNerdPic
	ENDC
	IF DEF(_BLUE)
		dba HikerGen1Pic
	ELIF DEF(_GOLD)
		dba HikerPic
	ENDC
	IF DEF(_BLUE)
		dba BikerGen1Pic
	ELIF DEF(_GOLD)
		dba BikerPic
	ENDC
	IF DEF(_BLUE)
		dba BurglarGen1Pic
	ELIF DEF(_GOLD)
		dba BurglarPic
	ENDC
	dba EngineerGen1Pic
	IF DEF(_BLUE)
		dba FisherGen1Pic
	ELIF DEF(_GOLD)
		dba FisherPic
	ENDC
	IF DEF(_BLUE)
		dba SwimmerGen1Pic
	ELIF DEF(_GOLD)
		dba SwimmermPic
	ENDC
	dba CueBallGen1Pic
	dba GamblerGen1Pic
	IF DEF(_BLUE)
		dba BeautyGen1Pic
	ELIF DEF(_GOLD)
		dba BeautyPic
	ENDC
	IF DEF(_BLUE)
		dba PsychicGen1Pic
	ELIF DEF(_GOLD)
		dba PsychicTPic
	ENDC
	dba RockerGen1Pic
	IF DEF(_BLUE)
		dba JugglerGen1Pic
	ELIF DEF(_GOLD)
		dba JugglerPic
	ENDC
	dba TamerGen1Pic
	IF DEF(_BLUE)
		dba BirdKeeperGen1Pic
	ELIF DEF(_GOLD)
		dba BirdKeeperPic
	ENDC
	IF DEF(_BLUE)
		dba BlackbeltGen1Pic
	ELIF DEF(_GOLD)
		dba BlackbeltTPic
	ENDC
	IF DEF(_BLUE)
		dba Rival1Gen1Pic
	ELIF DEF(_GOLD)
		dba BluePic
	ENDC
	IF DEF(_BLUE)
		dba ProfOakGen1Pic
	ELIF DEF(_GOLD)
		dba PokemonProfPic
	ENDC
	IF DEF(_BLUE)
		dba ScientistGen1Pic
	ELIF DEF(_GOLD)
		dba ScientistPic
	ENDC
	dba GiovanniGen1Pic
	IF DEF(_BLUE)
		dba RocketGen1Pic
	ELIF DEF(_GOLD)
		dba GruntmPic
	ENDC
	IF DEF(_BLUE)
		dba CooltrainerMGen1Pic
	ELIF DEF(_GOLD)
		dba CooltrainermPic
	ENDC
	IF DEF(_BLUE)
		dba CooltrainerFGen1Pic
	ELIF DEF(_GOLD)
		dba CooltrainerfPic
	ENDC
	IF DEF(_BLUE)
		dba BrunoGen1Pic
	ELIF DEF(_GOLD)
		dba BrunoPic
	ENDC
	IF DEF(_BLUE)
		dba BrockGen1Pic
	ELIF DEF(_GOLD)
		dba BrockPic
	ENDC
	IF DEF(_BLUE)
		dba MistyGen1Pic
	ELIF DEF(_GOLD)
		dba MistyPic
	ENDC
	IF DEF(_BLUE)
		dba LtSurgeGen1Pic
	ELIF DEF(_GOLD)
		dba LtSurgePic
	ENDC
	IF DEF(_BLUE)
		dba ErikaGen1Pic
	ELIF DEF(_GOLD)
		dba ErikaPic
	ENDC
	IF DEF(_BLUE)
		dba KogaGen1Pic
	ELIF DEF(_GOLD)
		dba KogaPic
	ENDC
	IF DEF(_BLUE)
		dba BlaineGen1Pic
	ELIF DEF(_GOLD)
		dba BlainePic
	ENDC
	IF DEF(_BLUE)
		dba SabrinaGen1Pic
	ELIF DEF(_GOLD)
		dba SabrinaPic
	ENDC
	IF DEF(_BLUE)
		dba GentlemanGen1Pic
	ELIF DEF(_GOLD)
		dba GentlemanPic
	ENDC
	dba Rival2Gen1Pic
	dba Rival3Gen1Pic
	dba LoreleiGen1Pic
	IF DEF(_BLUE)
		dba ChannelerGen1Pic
	ELIF DEF(_GOLD)
		dba MediumPic
	ENDC
	dba AgathaGen1Pic
	IF DEF(_BLUE)
		dba LanceGen1Pic
	ELIF DEF(_GOLD)
		dba ChampionPic
	ENDC

	assert_table_length NUM_TRAINER_CLASSES
