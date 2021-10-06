CreditsStrings:: ; used for BANK(CreditsStrings)

Credits_SatoshiTajiri::       db "   SATOSHI TAJIRI@"         ; "たじり　さとし@"
Credits_JunichiMasuda::       db "   JUNICHI MASUDA@"         ; "ますだ　じゅんいち@"
Credits_TetsuyaWatanabe::     db "  TETSUYA WATANABE@"        ; "わたなべ　てつや@"
Credits_ShigekiMorimoto::     db "  SHIGEKI MORIMOTO@"        ; "もりもと　しげき@"
Credits_SousukeTamada::       db "   SOUSUKE TAMADA@"         ; "たまだ　そうすけ@"
Credits_TakenoriOota::        db "   TAKENORI OOTA@"          ; "おおた　たけのり@"
Credits_KenSugimori::         db "    KEN SUGIMORI@"          ; "すぎもり　けん@"
Credits_MotofumiFujiwara::    db " MOTOFUMI FUJIWARA@"        ; "ふじわら　もとふみ@"
Credits_AtsukoNishida::       db "   ATSUKO NISHIDA@"         ; "にしだ　あつこ@"
Credits_MuneoSaito::          db "    MUNEO SAITO@"           ; "さいとう　むねお@"
Credits_SatoshiOota::         db "    SATOSHI OOTA@"          ; "おおた　さとし@"
Credits_RenaYoshikawa::       db "   RENA YOSHIKAWA@"         ; "よしかわ　れな@"
Credits_JunOkutani::          db "    JUN OKUTANI@"           ; "おくたに　じゅん@"
Credits_HironobuYoshida::     db "  HIRONOBU YOSHIDA@"        ; "よしだ　ひろのぶ@"
Credits_AsukaIwashita::       db "   ASUKA IWASHITA@"         ; "いわした　あすか@"
Credits_GoIchinose::          db "    GO ICHINOSE@"           ; "いちのせ　ごう@"
Credits_MorikazuAoki::        db "   MORIKAZU AOKI@"          ; "あおき　もりかず@"
Credits_KohjiNishino::        db "   KOHJI NISHINO@"          ; "にしの　こうじ@"
Credits_KenjiMatsushima::     db "  KENJI MATSUSHIMA@"        ; "まつしま　けんじ@"
Credits_ToshinobuMatsumiya::  db "TOSHINOBU MATSUMIYA@"       ; "まつみや　としのぶ@"
Credits_SatoruIwata::         db "    SATORU IWATA@"          ; "いわた　さとる@"
Credits_NobuhiroSeya::        db "   NOBUHIRO SEYA@"          ; "せや　のぶひろ@"
Credits_KazuhitoSekine::      db "  KAZUHITO SEKINE@"         ; "せきね　かずひと@"
Credits_TetsujiOota::         db "    TETSUJI OOTA@"          ; "おおた　てつじ@"
Credits_NclSuperMarioClub::   db "NCL SUPER MARIO CLUB@"      ; "スーパーマりオクラブ@"
Credits_Sarugakucho::         db "    SARUGAKUCHO@"           ; "さるがくちょう@"
Credits_AkitoMori::           db "     AKITO MORI@"           ; "もり　あきと@"
Credits_TakahiroHarada::      db "  TAKAHIRO HARADA@"         ; "はらだ　たかひろ@"
Credits_TohruHashimoto::      db "  TOHRU HASHIMOTO@"         ; "はしもと　とおる@"
Credits_NoboruMatsumoto::     db "  NOBORU MATSUMOTO@"        ; "まつもと　のぼる@"
Credits_TakehiroIzushi::      db "  TAKEHIRO IZUSHI@"         ; "いずし　たけひろ@"
Credits_TakashiKawaguchi::    db " TAKASHI KAWAGUCHI@"        ; "かわぐち　たかし@"
Credits_TsunekazuIshihara::   db " TSUNEKAZU ISHIHARA@"       ; "いしはら　つねかず@"
Credits_HiroshiYamauchi::     db "  HIROSHI YAMAUCHI@"        ; "やまうち　ひろし@"
Credits_KenjiSaiki::          db "    KENJI SAIKI@"           ; "さいき　けんじ@"
Credits_AtsushiTada::         db "    ATSUSHI TADA@"          ; "ただ　あつし@"
Credits_NaokoKawakami::       db "   NAOKO KAWAKAMI@"         ; "かわかみ　なおこ@"
Credits_HiroyukiZinnai::      db "  HIROYUKI ZINNAI@"         ; "じんない　ひろゆき@"
Credits_KunimiKawamura::      db "  KUNIMI KAWAMURA@"         ; "かわむら　くにみ@"
Credits_GailTilden::          db "    GAIL TILDEN@"
Credits_HiroNakamura::        db "   HIRO NAKAMURA@"
Credits_JeffKalles::          db "    JEFF KALLES@"
Credits_WilliamGiese::        db "   WILLIAM GIESE@"
Credits_NobOgasawara::        db "   NOB OGASAWARA@"
Credits_RandyShoemake::       db "   RANDY SHOEMAKE@"
Credits_KathyHuguenard::      db "  KATHY HUGUENARD@"
Credits_JoelSimon::           db "     JOEL SIMON@"
Credits_TerukiMurakawa::      db "  TERUKI MURAKAWA@"
Credits_KazuyoshiOsawa::      db "  KAZUYOSHI OSAWA@"
Credits_KimikoNakamichi::     db "  KIMIKO NAKAMICHI@"
Credits_End::                 db "END@"                       ; "おしまい@"
Credits_Staff::               db "      #MON"                 ; "ポケットモンスター"
                            IF DEF(_GOLD)
                            next "    GOLD VERSION"
                            ELIF DEF(_BLUE)
                            next "   SILVER VERSION"
                            ENDC
                            next "       STAFF@"
Credits_Director::            db "      DIRECTOR@"            ; "エグゼクティブ　ディレクター@"
Credits_SubDirector::         db "    SUB DIRECTOR@"
Credits_Programmers::         db "    PROGRAMMERS@"           ; "プログラム@"
Credits_GraphicsDirector::    db " GRAPHICS DIRECTOR@"        ; "グラフィック　ディレクター@"
Credits_MonsterDesign::       db "   MONSTER DESIGN@"         ; "#　デザイン@"
Credits_GraphicsDesign::      db "  GRAPHICS DESIGN@"         ; "グラフィック　デザイン@"
Credits_Music::               db "       MUSIC@"              ; "おんがく@"
Credits_SoundEffects::        db "   SOUND EFFECTS@"          ; "サウンド　エフェクト@"
Credits_GameDesign::          db "    GAME DESIGN@"           ; "ゲームデザイン@"
Credits_GameScenario::        db "   GAME SCENARIO@"          ; "シナりオ@"
Credits_ToolProgramming::     db "  TOOL PROGRAMMING@"        ; "ツール　プログラム@"
Credits_ParametricDesign::    db " PARAMETRIC DESIGN@"        ; "パラメーター　せってい@"
Credits_ScriptDesign::        db "   SCRIPT DESIGN@"          ; "スクりプト　せってい@"
Credits_MapDataDesign::       db "  MAP DATA DESIGN@"         ; "マップデータ　せってい@"
Credits_MapDesign::           db "     MAP DESIGN@"           ; "マップ　デザイン@"
Credits_ProductTesting::      db "  PRODUCT TESTING@"         ; "デバッグプレイ@"
Credits_SpecialThanks::       db "   SPECIAL THANKS@"         ; "スぺシャルサンクス@"
Credits_Producers::           db "     PRODUCERS@"            ; "プロデューサー@"
Credits_ExecutiveProducer::   db " EXECUTIVE PRODUCER@"       ; "エグゼクティブ　プロデューサー@"
Credits_UsVersionStaff::      db "  US VERSION STAFF@"
Credits_UsCoordination::      db "  US COORDINATION@"
Credits_TextTranslation::     db "  TEXT TRANSLATION@"
Credits_PaadTesting::         db "    PAAD TESTING@"

Credits_Copyright::
	;    (C) 1  9  9  5 - 2  0  0  0     N  i  n  t  e  n  d  o
	db   $60,$61,$62,$63,$7a,$7b,$7c,$7d,$65,$66,$67,$68,$69,$6a
	;    (C) 1  9  9  5 - 2  0  0  0    C  r  e  a  t  u  r  e  s     i  n  c .
	next $60,$61,$62,$63,$7a,$7b,$7c,$7d,$6b,$6c,$6d,$6e,$6f,  $70,$71,$72
	;    (C) 1  9  9  5 - 2  0  0  0  G  A  M  E  F  R  E  A  K     i  n  c .
	next $60,$61,$62,$63,$7a,$7b,$7c,$7d,$73,$74,$75,$76,$77,$78,  $79,$71,$72
	db "@"
