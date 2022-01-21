GhostBattleScript::
	checkitem SILPH_SCOPE
	iffalse .Ghost
	farsjump WildBattleScript

.Ghost:
	loadvar VAR_BATTLETYPE, BATTLETYPE_GHOST
	randomwildmon
	startbattle
	reloadmapafterbattle
	end
