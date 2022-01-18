; These lists determine the battle music and victory music, and whether to
; award HAPPINESS_GYMBATTLE for winning.

; Note: CHAMPION and RED are unused for battle music checks, since they are
; accounted for prior to the list check.

GymLeaders:
	db FALKNER
	db WHITNEY
	db BUGSY
	db MORTY
	db PRYCE
	db JASMINE
	db CHUCK
	db CLAIR
	db WILL
	db BRUNO
	db KAREN
	db KOGA
	db CHAMPION
	db RED
; fallthrough
KantoGymLeaders:
	db BROCK
	db MISTY
	db LT_SURGE
	db ERIKA
	db JANINE
	db SABRINA
	db BLAINE
	db BLUE
	db BROCK_GEN1
	db MISTY_GEN1
	db LT_SURGE_GEN1
	db ERIKA_GEN1
	db KOGA_GEN1
	db SABRINA_GEN1
	db BLAINE_GEN1
	db LEADER_GIOVANNI_GEN1
	db LORELEI_GEN1
	db BRUNO_GEN1
	db AGATHA_GEN1
	db LANCE_GEN1
	db -1
