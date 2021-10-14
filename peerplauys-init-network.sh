#!/usr/bin/expect -f

set timeout -1

system "touch ./after; /bin/rm ./after*"
system "touch ./before; /bin/rm ./before*"
system "touch ./wallet.json; /bin/rm ./wallet.json"

spawn ./cli_wallet --chain-id=a90afddb40ebf8b607311ffff5784d76c6f1a2ba0c35095719837e7f3ea1de02



expect "new >>> "
send "set_password password\r"

expect "locked >>> "
send "unlock password\r"

expect "unlocked >>> "
send "import_key nathan 5KQwrPbwdL6PhXujxW37FSSQZ1JiwsST4cqQzDeyXtP79zkvFD3\r"

expect "unlocked >>> "
send "import_balance nathan \[\"*\"\] true\r"

expect "unlocked >>> "
send "list_account_balances nathan\r"

expect "unlocked >>> "
send "reserve_asset nathan 5000000000 TEST true\r"

expect "unlocked >>> "
send "list_account_balances nathan\r"

expect "unlocked >>> "
send "upgrade_account nathan true\r"



expect "unlocked >>> "
send "create_account_with_brain_key \"CHARIER TAN HAFIZ PROPHET BREGMA PALLI MAGUARI DOSSAL MYXOMA RATABLY OWK SMALT CUARTA ACTIVIN CROUT CLOSURE\" witness01 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"TURBARY ABRASH CHILD KENNEL VIDYA RISSER EXCEPT TUNCA BROKING CHOKER SLEEKLY UNROOST OLOGY SETTLED CARET CREEM\" witness02 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"LASCAR RONDEAU PUXY ALLTUD PLUM WAIST ENFREE ARANEID MARSOON ANCHOVY HANSEL PALY BARDISH KADOS BUMMALO ERGUSIA\" witness03 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"NAIPKIN HYALITE TENNIS PENNAE VALEUR RAMMISH ANENT ATREPSY MALIC TALLOW LOUGH FURYL TALION HAEC REDSEAR AWALIM\" witness04 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"COCUISA COUPLE WRENLET TAAR MAPPER STREYNE SURVIVE TARYARD ERMELIN CHASER ANGARIA FOXSKIN UPRUSH UPHILL BULWARK ARARIBA\" witness05 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"TEMIN ENZONE TESTILY RECHURN KEBBUCK INKFISH HAPTEN ADONIN FOLIOT OWRELAY POLLAM REGAL FOULISH KIDSMAN TONK MALOUAH\" witness06 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"PETRE TOWNET HEXYL IMMUND PHONATE ELDRESS PANISCA INGROW ELBOWER REALLOT UNIQUE SONATA UNHUMID WARTY ARIEL STUPEND\" witness07 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"TIERED ECTENE OPERA ARRENT SINLESS PUSH KILNRIB OWLDOM BURLAP PEART FINISH RETAIN ENRAGE DUELIST XYSTER MINSTER\" witness08 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"QUICKLY SMIRCH BEELBOW SABURRA SOUCHET POLE SIZER JABBED OUTPLOT APELET TELERAN FICHU GUIBA CUPROSE TURNROW KYAH\" witness09 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"SCUNNER ABHENRY KIRMEW PORTIFY AIRFOIL WACE VIMEN FAY FACIA SMOODGE HUZZA ISOLOGY BILK TAPPAUL SEDGE INOGLIA\" witness10 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"SATYRIC YENI FARCIED FLASHY VOW ECHELON ONSTEAD ER WAMPUM WORKMAN PALMULA INAGILE OSONE KHIR HOP BEMOAN\" witness11 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"PARAPH TRINKET CUPROID MARLED MOODER BROMA AXMAN ZYMIC UNGLOOM SOWEL CHATI DIPPED IMBOWER FERRADO UNMERRY KRYPTOL\" witness12 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"GANAM POTGUN MEALMAN IDE PERFIDY MORASS LARIN CAUSAL SIGNET EYED GIANTRY PROPUPA SNIG VISTA TWASOME VIRAL\" witness13 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"MAXIMED STHENIA OLIVED SEBACIC GALIOT FINJAN MESS MUGWORT ZANDER APOGEE BATE CUPPY HEMASE BOOKFUL PERPLEX BRAKY\" witness14 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"MASTIC ONCOSIS BITT PROVOKE ORTHITE HAYMOW MATTERY INNATE WOBBLY MOORISH NUNNISH LAKER FITCHED VERANDA XYLOGEN GULLISH\" witness15 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"SCAT CRUMBLE ROOFY MARSH CUERDA NILGAI THYRSE ASPOUT BUXOMLY CALYPSO EMBLEMA STEROL SOOTER COY PUP TRICOT\" witness16 nathan nathan true\r"


sleep 0.2


expect "unlocked >>> "
send "create_account_with_brain_key \"CHOROGI EERIE RETUCK PRAECOX MUDDLER LITERAL ACRON CARBRO BABBY AGAZED UNBOLT ABASED HALA TEMBLOR EMANATE HEMIPIC\" sonaccount01 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"PATIENT PINDY NEARISH FATBIRD OVERCUP DEVOICE ORCHAT DURMAST HAFFET QUADRAT STUPA TUBIFER NIGGLER GUABA CHUMP BLUECAP\" sonaccount02 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"PINCHER KEELMAN PARI ULEXITE EXPECT PLOVER KAMIAS VINEAL KAWIKA STIPES KILDEE COLEUR NESTLE FAIPULE COTUTOR ACIER\" sonaccount03 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"FORFARS GYMEL THEASUM TOCHER BEWITCH GASHLY FALLING FARCING EYELINE RELBUN GIARRA SUBPLOW SPRITE FORPINE RUSSETY REGLOW\" sonaccount04 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"CYCLENE LUSK SHOPHAR SLABMAN GRAINY OUTSHOW TAXMAN DEICTIC PIQUE WEJACK ADEEP DINGHEE CREEDAL APAGOGE WINT FLEW\" sonaccount05 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"SMALLS UNVIVID AZOTIZE UNBASED HIGHTOP EDDY MOLTEN URARE COLUMN MUSCOID PUFFILY VENTAGE INDULT DEEPLY FU TOWNISH\" sonaccount06 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"DEPHASE LYXOSE KUVASZ GROOVER CARACOL FACIEND VEND BAINIE PALGAT HERO MUCONIC FULGENT LOBTAIL LOOSER NUMERO CERE\" sonaccount07 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"TIKLIN GOOK HAUNT UNITUDE ENDORAL ALOOF WAST AMPER FERULE OVERARM SIGMATE NYMPHLY ESTUARY VETOER WARDAY ROYAL\" sonaccount08 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"DEGUM BACLIN WROTE RANGED PREDOOM DESS HIDEOUS MUCIN UNGNAW ARRIVAL SKILLED ZINCO ONYMIZE BUNTON LAVANGA KRAUSEN\" sonaccount09 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"DULSE ANEPIA PRUNE PLIERS GABLE MACHILA MOWRA UNSNARE BABYDOM TIBET PACO BELAM RASP GLOTTIC SQUELCH OFFLET\" sonaccount10 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"TRIPARA DINGHEE NOOKLET GROANER TRINK CLOVERY CIVISM KEA GULAMAN UPGRADE ODDS TOFTMAN COATING PUCKREL NEIST VERVEL\" sonaccount11 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"SOCCER HAAB HATTOCK VEEP CLIMATE SIGIL VULTURN AVOW SAMAJ COVETER ALBUM ROTAN REREEVE ACROSE KOWTOW TERRINE\" sonaccount12 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"AIRAMPO BEAUTI DIANITE GROUP SKITE REIVER RADIAL YAFFLE FUNNY PHILTRA WERE UROLOGY PEAFOWL DIARIAN AUREOUS BELA\" sonaccount13 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"WOULDST RURBAN FLYFLAP UPFLASH BLEATY CHERUB KINGROW TACK TRUMPH VENT TEAMER PROTAX BEERAGE JARLDOM IMBAUBA UNPOWER\" sonaccount14 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"KAKKAK CACOON SOLOIST SWANGY RAISINY SHERIFA FOHAT FEIGHER BLOUT ISOTAC GROWER MOT MYELOID THRIPEL CHYLE FUROIC\" sonaccount15 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"ALGATE BICHY FELTER JAGRATA THENAL STUNK BALDEN WATT KINKLY BOYLIKE HUNGER INNET WAR RETTERY LANEY UNGIVEN\" sonaccount16 nathan nathan true\r"


sleep 0.2


expect "unlocked >>> "
send "create_account_with_brain_key \"NODDER FIAT BALSAMY MOBED SUFFETE NEEDLER JULOID GOITRAL WIRRAH BUMMED TINFUL SIRKI CASS DODDIE PISSANT FORGIVE\" account01 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"GAUNTY PLAYLET ORLO PELOTA KHIRKA TAGGED HYDRAZO ESTRADE SNUGGLE OASIS BLAND INHAUST GYPE POMATUM QUARLE SCUP\" account02 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"BIMALAR THOKE OUTWILL GRIZZLE REBUNCH CHAL HIRSE SPRONG MOURN AGAMI BOGEY BLAFF AKOASM MUSTANG RILE BUXOMLY\" account03 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"RECYCLE COAMING LAXLY CERRERO ROUNCY LINTY ENFELON ENDER BEESWAX ANURY LICK BUY BILDAR MEADOWY KERRIE JUT\" account04 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"STANG PEIXERE DOCKAGE MAHOLI ZINCKY TAPETAL TATSMAN FLATUS SHRAB VEDRO BURGLAR HIDED ASWAY ALCHERA LATENCE DOVELET\" account05 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"SWARFER SIDI THIASI BASION STYPTIC SEDUCT PLUMULA SNIDDLE MARCID SIVVENS COMA LOGIN AMNESIA PARLEY SCALT JINRIKI\" account06 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"SEMIBAY UPRAISE VISON LEGIT OUTHIT ACINUS GUAYABI PLEXAL EXCURSE SHADKAN ARAROBA CHIVE HURLED TWIGFUL CHESSEL SEBUM\" account07 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"MANOC BEAMISH CIPPUS ERRATIC BRIERED HOSEMAN EXHAUST LUSORY BETHINK ICECAP RUGATE PIRNY FANION BANIWA CAVIAR ANODIZE\" account08 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"LOOFAH EYING YERK TICKIE UNSAWED OCULARY BEWET FACTY SPONSOR REVETE TABLE TEOPAN BILDAR CUBEB BULBULE HOTEL\" account09 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"ORIEL THUJONE HEDERIC SUITY QUEER BEGALL SA MARBLES TWAL YOOP REDLEG IMPOOR PAHUTAN UNREBEL OCHRO INAJA\" account10 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"THONGED SEALINE SENILE TURFEN HOOKMAN SOSHED SKETCHY OVERPET LAXITY UPSPOUT FLORAN UNWIST HOOPOE RUNLESS METER NOKTA\" account11 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"BEEDGED SHUTOFF BANKY TANZY COOPER ABATOR RIBAND TOLYL TYPER UNWOUND DAYSMAN HOBBY HORY UNLENT LYRISM PICKUP\" account12 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"YELLOWS ENTAL SORA PAXWAX SEINE METATE PSHAW GONIAL MARROW BEGAUDY BIELDY VINED COROL TAYRA QUINOID JOWSER\" account13 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"BEERILY WUR JARG UNBRAID RAGGETY CHUREL CRETION COUCAL CRAIN ADAGIO KENAREH NURAGHE JECORAL LITOTES DUELLO BASSO\" account14 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"GROUNDY AURURE PAGAN RADMAN CRISPLY CHANTEY ATBASH HOLOUR QUOITS NEFAST NAKEDLY ROMPU KOSIN BIOS NOVELLY VOETEN\" account15 nathan nathan true\r"

sleep 0.2

expect "unlocked >>> "
send "create_account_with_brain_key \"GUARANI WHEER LIFELET WARN SOOK TWEEST SYLVA PREFORM MINNY GREMLIN THECA ASTAY TARROW GHOUL BASSIST PLAICE\" account16 nathan nathan true\r"



expect "unlocked >>> "
send "transfer nathan init0 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan init1 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan init2 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan init3 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan init4 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan init5 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan init6 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan init7 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan init8 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan init9 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan init10 50000000 TEST \"Wellcome payment\" true\r"



expect "unlocked >>> "
send "transfer nathan witness01 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan witness02 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan witness03 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan witness04 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan witness05 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan witness06 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan witness07 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan witness08 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan witness09 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan witness10 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan witness11 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan witness12 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan witness13 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan witness14 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan witness15 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan witness16 50000000 TEST \"Wellcome payment\" true\r"



expect "unlocked >>> "
send "transfer nathan sonaccount01 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan sonaccount02 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan sonaccount03 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan sonaccount04 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan sonaccount05 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan sonaccount06 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan sonaccount07 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan sonaccount08 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan sonaccount09 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan sonaccount10 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan sonaccount11 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan sonaccount12 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan sonaccount13 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan sonaccount14 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan sonaccount15 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan sonaccount16 50000000 TEST \"Wellcome payment\" true\r"



expect "unlocked >>> "
send "transfer nathan account01 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan account02 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan account03 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan account04 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan account05 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan account06 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan account07 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan account08 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan account09 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan account10 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan account11 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan account12 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan account13 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan account14 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan account15 50000000 TEST \"Wellcome payment\" true\r"

expect "unlocked >>> "
send "transfer nathan account16 50000000 TEST \"Wellcome payment\" true\r"



expect "unlocked >>> "
send "transfer nathan committee-account 50000000 TEST \"\" true\r"

expect "unlocked >>> "
send "transfer nathan witness-account 50000000 TEST \"\" true\r"

expect "unlocked >>> "
send "transfer nathan son-account 50000000 TEST \"\" true\r"

expect "unlocked >>> "
send "create_asset son-account PBTC 5 { \"max_supply\": \"1000000000000000\", \"market_fee_percent\": 0, \"max_market_fee\": \"1000000000000000\", \"issuer_permissions\": 79, \"flags\": 0, \"core_exchange_rate\": { \"base\": { \"amount\": 1, \"asset_id\": \"1.3.0\" }, \"quote\": { \"amount\": 1, \"asset_id\": \"1.3.1\" } }, \"whitelist_authorities\": \[\], \"blacklist_authorities\": \[\], \"whitelist_markets\": \[\], \"blacklist_markets\": \[\], \"description\": \"\", \"extensions\": \[\] } null true\r"

expect "unlocked >>> "
send "create_asset son-account PEOS 5 { \"max_supply\": \"1000000000000000\", \"market_fee_percent\": 0, \"max_market_fee\": \"1000000000000000\", \"issuer_permissions\": 79, \"flags\": 0, \"core_exchange_rate\": { \"base\": { \"amount\": 1, \"asset_id\": \"1.3.0\" }, \"quote\": { \"amount\": 2, \"asset_id\": \"1.3.1\" } }, \"whitelist_authorities\": \[\], \"blacklist_authorities\": \[\], \"whitelist_markets\": \[\], \"blacklist_markets\": \[\], \"description\": \"\", \"extensions\": \[\] } null true\r"

expect "unlocked >>> "
send "create_asset son-account PETH 5 { \"max_supply\": \"1000000000000000\", \"market_fee_percent\": 0, \"max_market_fee\": \"1000000000000000\", \"issuer_permissions\": 79, \"flags\": 0, \"core_exchange_rate\": { \"base\": { \"amount\": 1, \"asset_id\": \"1.3.0\" }, \"quote\": { \"amount\": 5, \"asset_id\": \"1.3.1\" } }, \"whitelist_authorities\": \[\], \"blacklist_authorities\": \[\], \"whitelist_markets\": \[\], \"blacklist_markets\": \[\], \"description\": \"\", \"extensions\": \[\] } null true\r"

sleep 0.2


expect "unlocked >>> "
send "issue_asset account01 1000000 PBTC \"\" true\r"

expect "unlocked >>> "
send "issue_asset account02 1000000 PBTC \"\" true\r"

expect "unlocked >>> "
send "issue_asset account03 1000000 PBTC \"\" true\r"

expect "unlocked >>> "
send "issue_asset account04 1000000 PBTC \"\" true\r"

expect "unlocked >>> "
send "issue_asset account05 1000000 PBTC \"\" true\r"

expect "unlocked >>> "
send "issue_asset account06 1000000 PBTC \"\" true\r"

expect "unlocked >>> "
send "issue_asset account07 1000000 PBTC \"\" true\r"

expect "unlocked >>> "
send "issue_asset account08 1000000 PBTC \"\" true\r"

expect "unlocked >>> "
send "issue_asset account09 1000000 PBTC \"\" true\r"

expect "unlocked >>> "
send "issue_asset account10 1000000 PBTC \"\" true\r"

expect "unlocked >>> "
send "issue_asset account11 1000000 PBTC \"\" true\r"

expect "unlocked >>> "
send "issue_asset account12 1000000 PBTC \"\" true\r"

expect "unlocked >>> "
send "issue_asset account13 1000000 PBTC \"\" true\r"

expect "unlocked >>> "
send "issue_asset account14 1000000 PBTC \"\" true\r"

expect "unlocked >>> "
send "issue_asset account15 1000000 PBTC \"\" true\r"

expect "unlocked >>> "
send "issue_asset account16 1000000 PBTC \"\" true\r"


expect "unlocked >>> "
send "issue_asset account01 1000000 PEOS \"\" true\r"

expect "unlocked >>> "
send "issue_asset account02 1000000 PEOS \"\" true\r"

expect "unlocked >>> "
send "issue_asset account03 1000000 PEOS \"\" true\r"

expect "unlocked >>> "
send "issue_asset account04 1000000 PEOS \"\" true\r"

expect "unlocked >>> "
send "issue_asset account05 1000000 PEOS \"\" true\r"

expect "unlocked >>> "
send "issue_asset account06 1000000 PEOS \"\" true\r"

expect "unlocked >>> "
send "issue_asset account07 1000000 PEOS \"\" true\r"

expect "unlocked >>> "
send "issue_asset account08 1000000 PEOS \"\" true\r"

expect "unlocked >>> "
send "issue_asset account09 1000000 PEOS \"\" true\r"

expect "unlocked >>> "
send "issue_asset account10 1000000 PEOS \"\" true\r"

expect "unlocked >>> "
send "issue_asset account11 1000000 PEOS \"\" true\r"

expect "unlocked >>> "
send "issue_asset account12 1000000 PEOS \"\" true\r"

expect "unlocked >>> "
send "issue_asset account13 1000000 PEOS \"\" true\r"

expect "unlocked >>> "
send "issue_asset account14 1000000 PEOS \"\" true\r"

expect "unlocked >>> "
send "issue_asset account15 1000000 PEOS \"\" true\r"

expect "unlocked >>> "
send "issue_asset account16 1000000 PEOS \"\" true\r"


expect "unlocked >>> "
send "issue_asset account01 1000000 PETH \"\" true\r"

expect "unlocked >>> "
send "issue_asset account02 1000000 PETH \"\" true\r"

expect "unlocked >>> "
send "issue_asset account03 1000000 PETH \"\" true\r"

expect "unlocked >>> "
send "issue_asset account04 1000000 PETH \"\" true\r"

expect "unlocked >>> "
send "issue_asset account05 1000000 PETH \"\" true\r"

expect "unlocked >>> "
send "issue_asset account06 1000000 PETH \"\" true\r"

expect "unlocked >>> "
send "issue_asset account07 1000000 PETH \"\" true\r"

expect "unlocked >>> "
send "issue_asset account08 1000000 PETH \"\" true\r"

expect "unlocked >>> "
send "issue_asset account09 1000000 PETH \"\" true\r"

expect "unlocked >>> "
send "issue_asset account10 1000000 PETH \"\" true\r"

expect "unlocked >>> "
send "issue_asset account11 1000000 PETH \"\" true\r"

expect "unlocked >>> "
send "issue_asset account12 1000000 PETH \"\" true\r"

expect "unlocked >>> "
send "issue_asset account13 1000000 PETH \"\" true\r"

expect "unlocked >>> "
send "issue_asset account14 1000000 PETH \"\" true\r"

expect "unlocked >>> "
send "issue_asset account15 1000000 PETH \"\" true\r"

expect "unlocked >>> "
send "issue_asset account16 1000000 PETH \"\" true\r"



sleep 5



expect "unlocked >>> "
send "upgrade_account witness01 true\r"

expect "unlocked >>> "
send "upgrade_account witness02 true\r"

expect "unlocked >>> "
send "upgrade_account witness03 true\r"

expect "unlocked >>> "
send "upgrade_account witness04 true\r"

expect "unlocked >>> "
send "upgrade_account witness05 true\r"

expect "unlocked >>> "
send "upgrade_account witness06 true\r"

expect "unlocked >>> "
send "upgrade_account witness07 true\r"

expect "unlocked >>> "
send "upgrade_account witness08 true\r"

expect "unlocked >>> "
send "upgrade_account witness09 true\r"

expect "unlocked >>> "
send "upgrade_account witness10 true\r"

expect "unlocked >>> "
send "upgrade_account witness11 true\r"

expect "unlocked >>> "
send "upgrade_account witness12 true\r"

expect "unlocked >>> "
send "upgrade_account witness13 true\r"

expect "unlocked >>> "
send "upgrade_account witness14 true\r"

expect "unlocked >>> "
send "upgrade_account witness15 true\r"

expect "unlocked >>> "
send "upgrade_account witness16 true\r"



expect "unlocked >>> "
send "upgrade_account sonaccount01 true\r"

expect "unlocked >>> "
send "upgrade_account sonaccount02 true\r"

expect "unlocked >>> "
send "upgrade_account sonaccount03 true\r"

expect "unlocked >>> "
send "upgrade_account sonaccount04 true\r"

expect "unlocked >>> "
send "upgrade_account sonaccount05 true\r"

expect "unlocked >>> "
send "upgrade_account sonaccount06 true\r"

expect "unlocked >>> "
send "upgrade_account sonaccount07 true\r"

expect "unlocked >>> "
send "upgrade_account sonaccount08 true\r"

expect "unlocked >>> "
send "upgrade_account sonaccount09 true\r"

expect "unlocked >>> "
send "upgrade_account sonaccount10 true\r"

expect "unlocked >>> "
send "upgrade_account sonaccount11 true\r"

expect "unlocked >>> "
send "upgrade_account sonaccount12 true\r"

expect "unlocked >>> "
send "upgrade_account sonaccount13 true\r"

expect "unlocked >>> "
send "upgrade_account sonaccount14 true\r"

expect "unlocked >>> "
send "upgrade_account sonaccount15 true\r"

expect "unlocked >>> "
send "upgrade_account sonaccount16 true\r"



#expect "unlocked >>> "
#send "add_sidechain_address account01 bitcoin \"2N5aFW5WFaYZLuJWx9RGziHBdEMj9Zf8s3J\" \"2MtTPtraZawsvNGc8eCdx98hXbi4gaYy8L6\" true\r"

#expect "unlocked >>> "
#send "add_sidechain_address account02 bitcoin \"2MxAnE469fhhdvUqUB7daU997VSearb2mn7\" \"2N75PEYXU6X556UU6VYNiHMgcCBL8XmWnc1\" true\r"

#expect "unlocked >>> "
#send "add_sidechain_address account03 bitcoin \"2NAYptFvTU8vJ1pC7CxvVA9R7D3NdBJHpwL\" \"2MzSFV6tEbtP8oK9uYR2KNZMPZHYR3ca9zn\" true\r"

#expect "unlocked >>> "
#send "add_sidechain_address account04 bitcoin \"2N9zPaLDfaJazUmVfr3wgn8BK75tid2kkzR\" \"2Myg6zawCKcWWgzVifntdJWGSbbQr3pCQNQ\" true\r"

#expect "unlocked >>> "
#send "add_sidechain_address account05 bitcoin \"2NDN7cDH3E57E1B8TwTYvBgF7CndL4FTBPL\" \"2N1fZ6hNJVV39sqHwVYrCrxBJhTxxSkbNLj\" true\r"

#expect "unlocked >>> "
#send "add_sidechain_address account06 bitcoin \"2MzEmSiwrRzozxE6gfZ14LAyDHZ4DYP1zVG\" \"2NBynoqwHvHDXh4aRjTUxBRndPUKzg4UFDG\" true\r"

#expect "unlocked >>> "
#send "add_sidechain_address account07 bitcoin \"2NDCdm1WVJVCMWJzRaSSy9NDvpNKiqkbrMg\" \"2N4MLWzLiWoUbs9YLtJ2UMG7NvE1CxtDHfm\" true\r"

#expect "unlocked >>> "
#send "add_sidechain_address account08 bitcoin \"2Mu2iz3Jfqjyv3hBQGQZSGmZGZxhJp91TNX\" \"2NAdtG6DSSj1jRMmxixg2sRcezRNrnLdAYR\" true\r"

#expect "unlocked >>> "
#send "add_sidechain_address account09 bitcoin \"2N1sFbwcn4QVbvjp7yRsN4mg4mBFbvC8gKM\" \"2NBKnLH9Shm6qwsbmvoSwL6dHb1Xok4Ekmr\" true\r"

#expect "unlocked >>> "
#send "add_sidechain_address account10 bitcoin \"2NDmxr6ufBE7Zgdgq9hShF2grx2YPEiTyNy\" \"2Mu4YXwmJjF9KfjBjv3sSAh1XEhr4HgP6GU\" true\r"

#expect "unlocked >>> "
#send "add_sidechain_address account11 bitcoin \"2MzggRgTXPK4zmMhnn2jYqpGYWohje6fvFa\" \"2MvMP1nBfKpToHEoeVntcSFTDvwNgDnLFN4\" true\r"

#expect "unlocked >>> "
#send "add_sidechain_address account12 bitcoin \"2NGAjHUgVpEXnW67aNdNw6bvPVgb7P8q1gW\" \"2N8suV5gbfCVcqmmnq3RW4X9zJGurQ6wSFt\" true\r"

#expect "unlocked >>> "
#send "add_sidechain_address account13 bitcoin \"2N5Bq98TJuPXdEh7GDqBYHFKSFDWA6z5AE6\" \"2N8trY5h3febNQB2V3vphKhshQsotuJ5XDU\" true\r"

#expect "unlocked >>> "
#send "add_sidechain_address account14 bitcoin \"2MtyuXAa4V5pZC5F8cNSUk9fxkqinoB1fc7\" \"2NAJ7QcQs6VNUL8XfQBwudMGegbW2hc1PM7\" true\r"

#expect "unlocked >>> "
#send "add_sidechain_address account15 bitcoin \"2N1UCrHR55A7epUrJ9yX5M3XAVwce9d5UZY\" \"2Mw8uyBQ2NcHsfYuMZ5GKUFUbC5YuGkK4mM\" true\r"

#expect "unlocked >>> "
#send "add_sidechain_address account16 bitcoin \"2NB4vbq385mXgHj98Hbak2RSbSWSL3MroqS\" \"2N91peqsGZTKk1Q8BqAzAHfDrqfGujh9J62\" true\r"


#expect "unlocked >>> "
#send "add_sidechain_address account01 peerplays \"account01\" \"account01\" true\r"

#expect "unlocked >>> "
#send "add_sidechain_address account02 peerplays \"account02\" \"account02\" true\r"

#expect "unlocked >>> "
#send "add_sidechain_address account03 peerplays \"account03\" \"account03\" true\r"

#expect "unlocked >>> "
#send "add_sidechain_address account04 peerplays \"account04\" \"account04\" true\r"

#expect "unlocked >>> "
#send "add_sidechain_address account05 peerplays \"account05\" \"account05\" true\r"

#expect "unlocked >>> "
#send "add_sidechain_address account06 peerplays \"account06\" \"account06\" true\r"

#expect "unlocked >>> "
#send "add_sidechain_address account07 peerplays \"account07\" \"account07\" true\r"

#expect "unlocked >>> "
#send "add_sidechain_address account08 peerplays \"account08\" \"account08\" true\r"

#expect "unlocked >>> "
#send "add_sidechain_address account09 peerplays \"account09\" \"account09\" true\r"

#expect "unlocked >>> "
#send "add_sidechain_address account10 peerplays \"account10\" \"account10\" true\r"

#expect "unlocked >>> "
#send "add_sidechain_address account11 peerplays \"account11\" \"account11\" true\r"

#expect "unlocked >>> "
#send "add_sidechain_address account12 peerplays \"account12\" \"account12\" true\r"

#expect "unlocked >>> "
#send "add_sidechain_address account13 peerplays \"account13\" \"account13\" true\r"

#expect "unlocked >>> "
#send "add_sidechain_address account14 peerplays \"account14\" \"account14\" true\r"

#expect "unlocked >>> "
#send "add_sidechain_address account15 peerplays \"account15\" \"account15\" true\r"

#expect "unlocked >>> "
#send "add_sidechain_address account16 peerplays \"account16\" \"account16\" true\r"



expect "unlocked >>> "
send "add_sidechain_address account01 bitcoin \"0368dc31b2b547c74f52abfc67c7fc768c68115d8ab96430d9bb4996fa660121cd\" null \"02743d4f24f88095de7921b8a8486cb46f009b7c034daa931821fb688c9c1e42a2\" \"2MtTPtraZawsvNGc8eCdx98hXbi4gaYy8L6\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account02 bitcoin \"02b510a452d6e80f943e4cc85af5cad6c528bda87fc92b821dd246a1a76c175b0d\" null \"0212cbe2f328ba614886ca01e1ef48688196f72fbd07b31726f160292c96da20d5\" \"2N75PEYXU6X556UU6VYNiHMgcCBL8XmWnc1\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account03 bitcoin \"020d771492947feb54abbcbc5f5e86ef26df3747c377573c709507a47f10636462\" null \"033a5b4fb5e6f3d1d5b3bf36692d4735bcbf89ee8fe79c59d9490312e42d8c6476\" \"2MzSFV6tEbtP8oK9uYR2KNZMPZHYR3ca9zn\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account04 bitcoin \"03585ae695cfbbc8e1a93feeb6438c62d744b2581ba36a1e5ca780edd35aedb8ce\" null \"031ba5a302060c1516189eb93e94d62f559215a050b83de9ae67a20394144d7125\" \"2Myg6zawCKcWWgzVifntdJWGSbbQr3pCQNQ\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account05 bitcoin \"028c78c069d3d6eeb73373eb54edfa61f2e974c01c21b979b0b3f7058805b95013\" null \"0377761d8af2ad0299ab43ebfc33819fe3a4c6244a7c55e454ac94edda9db21011\" \"2N1fZ6hNJVV39sqHwVYrCrxBJhTxxSkbNLj\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account06 bitcoin \"02f7d952e00d9c262c20c3526d4029245ab890a28dbdcbadfec964578c47719f7b\" null \"02dad754a5958a7cdacb8bf4aae35ab10f676f75acb8421f557f650e0bd605cff2\" \"2NBynoqwHvHDXh4aRjTUxBRndPUKzg4UFDG\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account07 bitcoin \"03b358000050ffc6318a44d08ee9da9484d5a7d95f509241adf8a52555a0fdde6b\" null \"03d9e5f8a7dd0910c7e988bb8f6c46b7318649a8d020f4fa1bdf5dc6baf4d253be\" \"2N4MLWzLiWoUbs9YLtJ2UMG7NvE1CxtDHfm\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account08 bitcoin \"022752cd513f04f68074bd90a96a82b523a197171376382dedf3413bbdccae0dac\" null \"034cc9c0e7cd3690eba9f64f28eadf29dbb67ad6b8c2cc3ee4c8d74290c1513d61\" \"2NAdtG6DSSj1jRMmxixg2sRcezRNrnLdAYR\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account09 bitcoin \"03114bf9794439221c0f7e910d7b64f242847184381a5ef238cef8d70f8868b4af\" null \"02ce8d09140a5867bf2b1b7d875222231c62bdd6b6e14198abc53194d94baa8035\" \"2NBKnLH9Shm6qwsbmvoSwL6dHb1Xok4Ekmr\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account10 bitcoin \"02eb6e43fb6ad9f1bf23bf821a25d5a1e84550380e0973ea5b00b087b3e9059c7b\" null \"035e2f0618ed6ffd1f5717e87860a43d3483b94ff4f7015d8d07b68780fe0f890a\" \"2Mu4YXwmJjF9KfjBjv3sSAh1XEhr4HgP6GU\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account11 bitcoin \"037ac9105afd66210cae3117ffa8f3337c494e98c596c0402190fed3ec98441041\" null \"03cdf18abf48bd8e387726acac8dd742dff511ab10ee089051a9869baacd698263\" \"2MvMP1nBfKpToHEoeVntcSFTDvwNgDnLFN4\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account12 bitcoin \"03dc6848c4c3ef619375d3af270c0d62a96814b93f6640268ae0aea505ceac1ede\" null \"034b84f0f7b9d73b98b8ccc71e98288b18e34d1d2f734f0497cdbbd45402c84254\" \"2N8suV5gbfCVcqmmnq3RW4X9zJGurQ6wSFt\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account13 bitcoin \"020f4901eb63fb1104386a2b33dd49ed3b613693cae90fb8df580bc1744fc6fd43\" null \"0234e5a73116376ea99bd3e48764fd24fad4b6a97f165f8b43c2857dc1e0d293a9\" \"2N8trY5h3febNQB2V3vphKhshQsotuJ5XDU\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account14 bitcoin \"037c47fea3e8a1d23c1f9d6a109a8d8ed55391a7850c43444dc6a3a0dee8313b60\" null \"0287b4bb4d64481799e24f8b72194acd8c896f0302f81113cb81d80bd1e305379b\" \"2NAJ7QcQs6VNUL8XfQBwudMGegbW2hc1PM7\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account15 bitcoin \"03287d9ded047686b22df8ba13961ca2133906884aa0e6cc4b8c5164b71f33cc2f\" null \"022c4092aadc99dcd4a3fbb8cdb9c720cda19afc20b4c32db5729400cb3430a600\" \"2Mw8uyBQ2NcHsfYuMZ5GKUFUbC5YuGkK4mM\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account16 bitcoin \"039270e4ec4f7cdecf9de30a8cf7830262aa5e7a14c0d26556b20e2f5c879f138f\" null \"0224e46c2203d99c8219f684691c1ab01f78e5168c59fa3569fc8682a9c620c88c\" \"2N91peqsGZTKk1Q8BqAzAHfDrqfGujh9J62\" true\r"


expect "unlocked >>> "
send "add_sidechain_address account01 hive \"TST5quk5Brh16v9RhdK6uCFxy4j3T9Dsz7krCUPwuAgvTzghQBG7s\" \"account01\" \"TST5quk5Brh16v9RhdK6uCFxy4j3T9Dsz7krCUPwuAgvTzghQBG7s\" \"account01\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account02 hive \"TST7wbT9MNNRcpv9QD6N4NhKxbrC2yhD39t9wDSis3nJjh9nDdA6w\" \"account02\" \"TST7wbT9MNNRcpv9QD6N4NhKxbrC2yhD39t9wDSis3nJjh9nDdA6w\" \"account02\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account03 hive \"TST6zv44ESLXujSiiZP5MfJQrfi2aKS3cGQXfPSkr3EwG3zABRYL9\" \"account03\" \"TST6zv44ESLXujSiiZP5MfJQrfi2aKS3cGQXfPSkr3EwG3zABRYL9\" \"account03\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account04 hive \"TST8AGnBvd2BAfpS6T8bVogAbvucpUtYbc9BJVAYJbAYHLZyRzm4e\" \"account04\" \"TST8AGnBvd2BAfpS6T8bVogAbvucpUtYbc9BJVAYJbAYHLZyRzm4e\" \"account04\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account05 hive \"TST7y33ssbgFfCZinfT5B7wWXiKK3E259MiXiKRUef22b3ijCbmPn\" \"account05\" \"TST7y33ssbgFfCZinfT5B7wWXiKK3E259MiXiKRUef22b3ijCbmPn\" \"account05\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account06 hive \"TST6BvdjGHVS6pbWBgo2aHy7zeHySvsdEcKCFNpGLT9dmQJUS2xLA\" \"account06\" \"TST6BvdjGHVS6pbWBgo2aHy7zeHySvsdEcKCFNpGLT9dmQJUS2xLA\" \"account06\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account07 hive \"TST8UdKL5WSQnHzaobqJhXhraJ6iT85EeezQKnHeRhdvNyyCVTELJ\" \"account07\" \"TST8UdKL5WSQnHzaobqJhXhraJ6iT85EeezQKnHeRhdvNyyCVTELJ\" \"account07\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account08 hive \"TST8jsAJEoUExDboAdtZErZXSfsW2tqd7JbRN9FUBDQHyGWKEHDMh\" \"account08\" \"TST8jsAJEoUExDboAdtZErZXSfsW2tqd7JbRN9FUBDQHyGWKEHDMh\" \"account08\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account09 hive \"TST62i1AyZ6r85SjMzUNS8ebUh5qBv3jPp6TcYPTpeAwh1VXtHTjT\" \"account09\" \"TST62i1AyZ6r85SjMzUNS8ebUh5qBv3jPp6TcYPTpeAwh1VXtHTjT\" \"account09\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account10 hive \"TST6kgKMwMqLcM8K13p6oVMxkJzgATPtCJH6bvHpeTkfyApDnUdGx\" \"account10\" \"TST6kgKMwMqLcM8K13p6oVMxkJzgATPtCJH6bvHpeTkfyApDnUdGx\" \"account10\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account11 hive \"TST7grfQgocddnpjFiHA4yJCBSuYCvdQAoicKz7qMsbWwwx3hfNB7\" \"account11\" \"TST7grfQgocddnpjFiHA4yJCBSuYCvdQAoicKz7qMsbWwwx3hfNB7\" \"account11\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account12 hive \"TST6heQE5oNYwDVqkkJJucNPWXULEJggZmeU6muTyXErzz42Te83g\" \"account12\" \"TST6heQE5oNYwDVqkkJJucNPWXULEJggZmeU6muTyXErzz42Te83g\" \"account12\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account13 hive \"TST56ZbuF7KzTwNaXo8Tsjr2KgdMzMGtxgkyyKKLac4gkcnQM3Kvd\" \"account13\" \"TST56ZbuF7KzTwNaXo8Tsjr2KgdMzMGtxgkyyKKLac4gkcnQM3Kvd\" \"account13\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account14 hive \"TST5rZKvsKvbLuj8RAEkKeDPTUH4UFkBX77Xd9DLTGvn5P5gTm88g\" \"account14\" \"TST5rZKvsKvbLuj8RAEkKeDPTUH4UFkBX77Xd9DLTGvn5P5gTm88g\" \"account14\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account15 hive \"TST7As5gquuBDFe1Amh4Xc1W5WzxbATfqUnMvnYpRPfNSRZNPhat5\" \"account15\" \"TST7As5gquuBDFe1Amh4Xc1W5WzxbATfqUnMvnYpRPfNSRZNPhat5\" \"account15\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account16 hive \"TST8Gm7Bmna2Hkcep3j6uc1G6jAkSwWEr6NeCBYx7jy7C4SobGUy4\" \"account16\" \"TST8Gm7Bmna2Hkcep3j6uc1G6jAkSwWEr6NeCBYx7jy7C4SobGUy4\" \"account16\" true\r"


expect "unlocked >>> "
send "add_sidechain_address account01 peerplays \"TEST8TCQFzyYDp3DPgWZ24261fMPSCzXxVyoF3miWeTj6JTi2DZdrL\" \"account01\" \"TEST8TCQFzyYDp3DPgWZ24261fMPSCzXxVyoF3miWeTj6JTi2DZdrL\" \"account01\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account02 peerplays \"TEST82qv1LKFvwVKD9pg5JQf6qqwLcoeqUniQjWJ3wKTodyWa7gHUs\" \"account02\" \"TEST82qv1LKFvwVKD9pg5JQf6qqwLcoeqUniQjWJ3wKTodyWa7gHUs\" \"account02\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account03 peerplays \"TEST6xdp7MrEPnaNK9GuF3KTeTizgGN6JC5nPmxx81higFepSZ8N7r\" \"account03\" \"TEST6xdp7MrEPnaNK9GuF3KTeTizgGN6JC5nPmxx81higFepSZ8N7r\" \"account03\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account04 peerplays \"TEST55j32Up75gHCxJBPN18vEytL9anDgEVFtsaCii38keGQG71X22\" \"account04\" \"TEST55j32Up75gHCxJBPN18vEytL9anDgEVFtsaCii38keGQG71X22\" \"account04\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account05 peerplays \"TEST68bX5bB16GkEAig6w2WTh9NbM9nHa66CemnDRx2njRY9bbWXhU\" \"account05\" \"TEST68bX5bB16GkEAig6w2WTh9NbM9nHa66CemnDRx2njRY9bbWXhU\" \"account05\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account06 peerplays \"TEST7mtTyM2rD18xDTtLTxWhq6W6zFgAgPFu9KHSFNsfWJXZNT8Wc8\" \"account06\" \"TEST7mtTyM2rD18xDTtLTxWhq6W6zFgAgPFu9KHSFNsfWJXZNT8Wc8\" \"account06\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account07 peerplays \"TEST7RMDnipLkFaQ4vtDyVvgyCedRoxyT9JWpAoM9mrE7rwVSyezoB\" \"account07\" \"TEST7RMDnipLkFaQ4vtDyVvgyCedRoxyT9JWpAoM9mrE7rwVSyezoB\" \"account07\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account08 peerplays \"TEST51nSJ2q1C9htnYWfTv73JxEc4nBWPNxJtUGPGpD4XwxeLzAd8t\" \"account08\" \"TEST51nSJ2q1C9htnYWfTv73JxEc4nBWPNxJtUGPGpD4XwxeLzAd8t\" \"account08\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account09 peerplays \"TEST8EmMMvQdAPzcnxymRUpbYdg8fArUY473QosCQpuPtWXxXtoNp4\" \"account09\" \"TEST8EmMMvQdAPzcnxymRUpbYdg8fArUY473QosCQpuPtWXxXtoNp4\" \"account09\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account10 peerplays \"TEST5815xbKy73Bx1LJWW1jg7GshWSEFWub3uoiEFP7FtP6z4YZtkU\" \"account10\" \"TEST5815xbKy73Bx1LJWW1jg7GshWSEFWub3uoiEFP7FtP6z4YZtkU\" \"account10\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account11 peerplays \"TEST61qgG2v6JArygFiQCKypymxhBqg1wKmmbdkHeNkXhYDvkZmBtY\" \"account11\" \"TEST61qgG2v6JArygFiQCKypymxhBqg1wKmmbdkHeNkXhYDvkZmBtY\" \"account11\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account12 peerplays \"TEST6z33kHxQxyGvFWfpAnL3X3MvLtPEBknkNeFFJyk63PvRtaN1Xo\" \"account12\" \"TEST6z33kHxQxyGvFWfpAnL3X3MvLtPEBknkNeFFJyk63PvRtaN1Xo\" \"account12\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account13 peerplays \"TEST55eCWenoKmZct5YvUYv7aphMmSVkroZTJZWFHGTVj8r8bKEPMd\" \"account13\" \"TEST55eCWenoKmZct5YvUYv7aphMmSVkroZTJZWFHGTVj8r8bKEPMd\" \"account13\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account14 peerplays \"TEST5e4HXhA4yBEGzaXVyjuVabKhG1qGghi6rypvq5fLxAmU9XLRHT\" \"account14\" \"TEST5e4HXhA4yBEGzaXVyjuVabKhG1qGghi6rypvq5fLxAmU9XLRHT\" \"account14\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account15 peerplays \"TEST89qMuZejYeeGvjr3bMEcGyvhD4dyUchmxbLNUBFbPodqJKJPZc\" \"account15\" \"TEST89qMuZejYeeGvjr3bMEcGyvhD4dyUchmxbLNUBFbPodqJKJPZc\" \"account15\" true\r"

expect "unlocked >>> "
send "add_sidechain_address account16 peerplays \"TEST6KRpHxYJSE5vXvoeVMLbKSYnVspt2nnGV2enncRzHgLQ9dez5v\" \"account16\" \"TEST6KRpHxYJSE5vXvoeVMLbKSYnVspt2nnGV2enncRzHgLQ9dez5v\" \"account16\" true\r"



expect "unlocked >>> "
send "create_witness witness01 \"http://witnessaddress01.com\" true\r"

sleep 0.2

expect "unlocked >>> "
send "create_witness witness02 \"http://witnessaddress02.com\" true\r"

sleep 0.2

expect "unlocked >>> "
send "create_witness witness03 \"http://witnessaddress03.com\" true\r"

sleep 0.2

expect "unlocked >>> "
send "create_witness witness04 \"http://witnessaddress04.com\" true\r"

sleep 0.2

expect "unlocked >>> "
send "create_witness witness05 \"http://witnessaddress05.com\" true\r"

sleep 0.2

expect "unlocked >>> "
send "create_witness witness06 \"http://witnessaddress06.com\" true\r"

sleep 0.2

expect "unlocked >>> "
send "create_witness witness07 \"http://witnessaddress07.com\" true\r"

sleep 0.2

expect "unlocked >>> "
send "create_witness witness08 \"http://witnessaddress08.com\" true\r"

sleep 0.2

expect "unlocked >>> "
send "create_witness witness09 \"http://witnessaddress09.com\" true\r"

sleep 0.2

expect "unlocked >>> "
send "create_witness witness10 \"http://witnessaddress10.com\" true\r"

sleep 0.2

expect "unlocked >>> "
send "create_witness witness11 \"http://witnessaddress11.com\" true\r"

sleep 0.2

expect "unlocked >>> "
send "create_witness witness12 \"http://witnessaddress12.com\" true\r"

sleep 0.2

expect "unlocked >>> "
send "create_witness witness13 \"http://witnessaddress13.com\" true\r"

sleep 0.2

expect "unlocked >>> "
send "create_witness witness14 \"http://witnessaddress14.com\" true\r"

sleep 0.2

expect "unlocked >>> "
send "create_witness witness15 \"http://witnessaddress15.com\" true\r"

sleep 0.2

expect "unlocked >>> "
send "create_witness witness16 \"http://witnessaddress16.com\" true\r"



expect "unlocked >>> "
send "update_witness witness01 \"\" \"TEST5VEMezMNjQNs7jGsqrAYaf717KBxqgsJVW7crj1jyJD7f74WSz\" true\r"

expect "unlocked >>> "
send "update_witness witness02 \"\" \"TEST8YgGjPfpnnK5rS1T21cd8CGtLxi8VvygpBCU2SvDZNBwkTApso\" true\r"

expect "unlocked >>> "
send "update_witness witness03 \"\" \"TEST6bsLVw3PXzU5fpLbzc65zauPDr9Fr2Dam1ajJrg11rTtgd8kGv\" true\r"

expect "unlocked >>> "
send "update_witness witness04 \"\" \"TEST7gt2dGGm6BBpqJ1B9hzPk7swu5afnPR5p6nxt6EwRMYQfPE7y6\" true\r"

expect "unlocked >>> "
send "update_witness witness05 \"\" \"TEST7b71sb2eZyemoRLuD7r2kwhb3erxnm83U6VDiL7ArkJsDqTeZ1\" true\r"

expect "unlocked >>> "
send "update_witness witness06 \"\" \"TEST7cycUsXEdXubwwv7XuJ15n7y4sHzx22tjijiUVBRK7DxdBcdia\" true\r"

expect "unlocked >>> "
send "update_witness witness07 \"\" \"TEST6VeyMca1RPYwFf4TUhxwph4u51R5RurVtCLPoT7YiXE5DU17e1\" true\r"

expect "unlocked >>> "
send "update_witness witness08 \"\" \"TEST6mi9oujSjWQWwwa9Wh828wVRnsM3mAbgenMabUT8qcbDakDnbH\" true\r"

expect "unlocked >>> "
send "update_witness witness09 \"\" \"TEST5hwkj6FE6L3kgbyoGTbfVa2W1Dg4xjqBrnjGUHtBTyek6V4VxP\" true\r"

expect "unlocked >>> "
send "update_witness witness10 \"\" \"TEST67sAReBFozV5uMGqTeeiWHKLoS7h1QXT13UyuHHKYPBX72BqqZ\" true\r"

expect "unlocked >>> "
send "update_witness witness11 \"\" \"TEST5Jnq9LjreRbeMVZrx63h71R1pEL8tr7QiNHykH8qpFRh4y6ZCW\" true\r"

expect "unlocked >>> "
send "update_witness witness12 \"\" \"TEST8AVAG4xdaQLi84wjibu2Zw7678gDEBPgZGYitBstLrtNHVBqzL\" true\r"

expect "unlocked >>> "
send "update_witness witness13 \"\" \"TEST73Zi6sUtZrwNwNcmDjzLvgKVkpYwCnNaGeBiN5kbnBfUxZWHpZ\" true\r"

expect "unlocked >>> "
send "update_witness witness14 \"\" \"TEST51a97eZtRv4Ekq1qZXaXfnQbZ1G3hmh9yva1NJTCdWNYrx3p24\" true\r"

expect "unlocked >>> "
send "update_witness witness15 \"\" \"TEST6wbXLfEMkKY4aD9sqk3jNHo5wkxTQYgGHTfHVDUJCEQxWsfGDD\" true\r"

expect "unlocked >>> "
send "update_witness witness16 \"\" \"TEST6HJpTxUzUePcRo2rLDjZwKpdBDWeHLXcYGSK9QVDPAn6yjXJBG\" true\r"



#expect "unlocked >>> "
#send "create_vesting_balance sonaccount01 50 TEST gpos true\r"

expect "unlocked >>> "
send "create_vesting_balance sonaccount01 50 TEST normal true\r"

expect "unlocked >>> "
send "create_vesting_balance sonaccount01 50 TEST son true\r"

#expect "unlocked >>> "
#send "create_vesting_balance sonaccount02 50 TEST gpos true\r"

expect "unlocked >>> "
send "create_vesting_balance sonaccount02 50 TEST normal true\r"

expect "unlocked >>> "
send "create_vesting_balance sonaccount02 50 TEST son true\r"

#expect "unlocked >>> "
#send "create_vesting_balance sonaccount03 50 TEST gpos true\r"

expect "unlocked >>> "
send "create_vesting_balance sonaccount03 50 TEST normal true\r"

expect "unlocked >>> "
send "create_vesting_balance sonaccount03 50 TEST son true\r"

#expect "unlocked >>> "
#send "create_vesting_balance sonaccount04 50 TEST gpos true\r"

expect "unlocked >>> "
send "create_vesting_balance sonaccount04 50 TEST normal true\r"

expect "unlocked >>> "
send "create_vesting_balance sonaccount04 50 TEST son true\r"

#expect "unlocked >>> "
#send "create_vesting_balance sonaccount05 50 TEST gpos true\r"

expect "unlocked >>> "
send "create_vesting_balance sonaccount05 50 TEST normal true\r"

expect "unlocked >>> "
send "create_vesting_balance sonaccount05 50 TEST son true\r"

#expect "unlocked >>> "
#send "create_vesting_balance sonaccount06 50 TEST gpos true\r"

expect "unlocked >>> "
send "create_vesting_balance sonaccount06 50 TEST normal true\r"

expect "unlocked >>> "
send "create_vesting_balance sonaccount06 50 TEST son true\r"

#expect "unlocked >>> "
#send "create_vesting_balance sonaccount07 50 TEST gpos true\r"

expect "unlocked >>> "
send "create_vesting_balance sonaccount07 50 TEST normal true\r"

expect "unlocked >>> "
send "create_vesting_balance sonaccount07 50 TEST son true\r"

#expect "unlocked >>> "
#send "create_vesting_balance sonaccount08 50 TEST gpos true\r"

expect "unlocked >>> "
send "create_vesting_balance sonaccount08 50 TEST normal true\r"

expect "unlocked >>> "
send "create_vesting_balance sonaccount08 50 TEST son true\r"

#expect "unlocked >>> "
#send "create_vesting_balance sonaccount09 50 TEST gpos true\r"

expect "unlocked >>> "
send "create_vesting_balance sonaccount09 50 TEST normal true\r"

expect "unlocked >>> "
send "create_vesting_balance sonaccount09 50 TEST son true\r"

#expect "unlocked >>> "
#send "create_vesting_balance sonaccount10 50 TEST gpos true\r"

expect "unlocked >>> "
send "create_vesting_balance sonaccount10 50 TEST normal true\r"

expect "unlocked >>> "
send "create_vesting_balance sonaccount10 50 TEST son true\r"

#expect "unlocked >>> "
#send "create_vesting_balance sonaccount11 50 TEST gpos true\r"

expect "unlocked >>> "
send "create_vesting_balance sonaccount11 50 TEST normal true\r"

expect "unlocked >>> "
send "create_vesting_balance sonaccount11 50 TEST son true\r"

#expect "unlocked >>> "
#send "create_vesting_balance sonaccount12 50 TEST gpos true\r"

expect "unlocked >>> "
send "create_vesting_balance sonaccount12 50 TEST normal true\r"

expect "unlocked >>> "
send "create_vesting_balance sonaccount12 50 TEST son true\r"

#expect "unlocked >>> "
#send "create_vesting_balance sonaccount13 50 TEST gpos true\r"

expect "unlocked >>> "
send "create_vesting_balance sonaccount13 50 TEST normal true\r"

expect "unlocked >>> "
send "create_vesting_balance sonaccount13 50 TEST son true\r"

#expect "unlocked >>> "
#send "create_vesting_balance sonaccount14 50 TEST gpos true\r"

expect "unlocked >>> "
send "create_vesting_balance sonaccount14 50 TEST normal true\r"

expect "unlocked >>> "
send "create_vesting_balance sonaccount14 50 TEST son true\r"

#expect "unlocked >>> "
#send "create_vesting_balance sonaccount15 50 TEST gpos true\r"

expect "unlocked >>> "
send "create_vesting_balance sonaccount15 50 TEST normal true\r"

expect "unlocked >>> "
send "create_vesting_balance sonaccount15 50 TEST son true\r"

#expect "unlocked >>> "
#send "create_vesting_balance sonaccount16 50 TEST gpos true\r"

expect "unlocked >>> "
send "create_vesting_balance sonaccount16 50 TEST normal true\r"

expect "unlocked >>> "
send "create_vesting_balance sonaccount16 50 TEST son true\r"

#expect "unlocked >>> "
#send "create_vesting_balance account01 50 TEST gpos true\r"

#expect "unlocked >>> "
#send "create_vesting_balance account02 50 TEST gpos true\r"

#expect "unlocked >>> "
#send "create_vesting_balance account03 50 TEST gpos true\r"

#expect "unlocked >>> "
#send "create_vesting_balance account04 50 TEST gpos true\r"

#expect "unlocked >>> "
#send "create_vesting_balance account05 50 TEST gpos true\r"

#expect "unlocked >>> "
#send "create_vesting_balance account06 50 TEST gpos true\r"

#expect "unlocked >>> "
#send "create_vesting_balance account07 50 TEST gpos true\r"

#expect "unlocked >>> "
#send "create_vesting_balance account08 50 TEST gpos true\r"

#expect "unlocked >>> "
#send "create_vesting_balance account09 50 TEST gpos true\r"

#expect "unlocked >>> "
#send "create_vesting_balance account10 50 TEST gpos true\r"

#expect "unlocked >>> "
#send "create_vesting_balance account11 50 TEST gpos true\r"

#expect "unlocked >>> "
#send "create_vesting_balance account12 50 TEST gpos true\r"

#expect "unlocked >>> "
#send "create_vesting_balance account13 50 TEST gpos true\r"

#expect "unlocked >>> "
#send "create_vesting_balance account14 50 TEST gpos true\r"

#expect "unlocked >>> "
#send "create_vesting_balance account15 50 TEST gpos true\r"

#expect "unlocked >>> "
#send "create_vesting_balance account16 50 TEST gpos true\r"

#sleep 5


expect "unlocked >>> "
send "try_create_son sonaccount01 \"http://sonaddreess01.com\" \[\[bitcoin, 03456772301e221026269d3095ab5cb623fc239835b583ae4632f99a15107ef275\], \[peerplays, TEST8TCQFzyYDp3DPgWZ24261fMPSCzXxVyoF3miWeTj6JTi2DZdrL\], \[hive, sonaccount01\]\] true\r"

sleep 0.2

expect "unlocked >>> "
send "try_create_son sonaccount02 \"http://sonaddreess02.com\" \[\[bitcoin, 02d67c26cf20153fe7625ca1454222d3b3aeb53b122d8a0f7d32a3dd4b2c2016f4\], \[peerplays, TEST82qv1LKFvwVKD9pg5JQf6qqwLcoeqUniQjWJ3wKTodyWa7gHUs\], \[hive, sonaccount02\]\] true\r"

sleep 0.2

expect "unlocked >>> "
send "try_create_son sonaccount03 \"http://sonaddreess03.com\" \[\[bitcoin, 025f7cfda933516fd590c5a34ad4a68e3143b6f4155a64b3aab2c55fb851150f61\], \[peerplays, TEST6xdp7MrEPnaNK9GuF3KTeTizgGN6JC5nPmxx81higFepSZ8N7r\], \[hive, sonaccount03\]\] true\r"

sleep 0.2

expect "unlocked >>> "
send "try_create_son sonaccount04 \"http://sonaddreess04.com\" \[\[bitcoin, 0228155bb1ddcd11c7f14a2752565178023aa963f84ea6b6a052bddebad6fe9866\], \[peerplays, TEST55j32Up75gHCxJBPN18vEytL9anDgEVFtsaCii38keGQG71X22\], \[hive, sonaccount04\]\] true\r"

sleep 0.2

expect "unlocked >>> "
send "try_create_son sonaccount05 \"http://sonaddreess05.com\" \[\[bitcoin, 037500441cfb4484da377073459511823b344f1ef0d46bac1efd4c7c466746f666\], \[peerplays, TEST68bX5bB16GkEAig6w2WTh9NbM9nHa66CemnDRx2njRY9bbWXhU\], \[hive, sonaccount05\]\] true\r"

sleep 0.2

expect "unlocked >>> "
send "try_create_son sonaccount06 \"http://sonaddreess06.com\" \[\[bitcoin, 02ef0d79bfdb99ab0be674b1d5d06c24debd74bffdc28d466633d6668cc281cccf\], \[peerplays, TEST7mtTyM2rD18xDTtLTxWhq6W6zFgAgPFu9KHSFNsfWJXZNT8Wc8\], \[hive, sonaccount06\]\] true\r"

sleep 0.2

expect "unlocked >>> "
send "try_create_son sonaccount07 \"http://sonaddreess07.com\" \[\[bitcoin, 0317941e4219548682fb8d8e172f0a8ce4d83ce21272435c85d598558c8e060b7f\], \[peerplays, TEST7RMDnipLkFaQ4vtDyVvgyCedRoxyT9JWpAoM9mrE7rwVSyezoB\], \[hive, sonaccount07\]\] true\r"

sleep 0.2

expect "unlocked >>> "
send "try_create_son sonaccount08 \"http://sonaddreess08.com\" \[\[bitcoin, 0266065b27f7e3d3ad45b471b1cd4e02de73fc4737dc2679915a45e293c5adcf84\], \[peerplays, TEST51nSJ2q1C9htnYWfTv73JxEc4nBWPNxJtUGPGpD4XwxeLzAd8t\], \[hive, sonaccount08\]\] true\r"

sleep 0.2

expect "unlocked >>> "
send "try_create_son sonaccount09 \"http://sonaddreess09.com\" \[\[bitcoin, 023821cc3da7be9e8cdceb8f146e9ddd78a9519875ecc5b42fe645af690544bccf\], \[peerplays, TEST8EmMMvQdAPzcnxymRUpbYdg8fArUY473QosCQpuPtWXxXtoNp4\], \[hive, sonaccount09\]\] true\r"

sleep 0.2

expect "unlocked >>> "
send "try_create_son sonaccount10 \"http://sonaddreess10.com\" \[\[bitcoin, 0229ff2b2106b76c27c393e82d71c20eec32bcf1f0cf1a9aca8a237269a67ff3e5\], \[peerplays, TEST5815xbKy73Bx1LJWW1jg7GshWSEFWub3uoiEFP7FtP6z4YZtkU\], \[hive, sonaccount10\]\] true\r"

sleep 0.2

expect "unlocked >>> "
send "try_create_son sonaccount11 \"http://sonaddreess11.com\" \[\[bitcoin, 024d113381cc09deb8a6da62e0470644d1a06de82be2725b5052668c8845a4a8da\], \[peerplays, TEST61qgG2v6JArygFiQCKypymxhBqg1wKmmbdkHeNkXhYDvkZmBtY\], \[hive, sonaccount11\]\] true\r"

sleep 0.2

expect "unlocked >>> "
send "try_create_son sonaccount12 \"http://sonaddreess12.com\" \[\[bitcoin, 03df2462a5a2f681a3896f61964a65566ff77448be9a55a6da18506fd9c6c051c1\], \[peerplays, TEST6z33kHxQxyGvFWfpAnL3X3MvLtPEBknkNeFFJyk63PvRtaN1Xo\], \[hive, sonaccount12\]\] true\r"

sleep 0.2

expect "unlocked >>> "
send "try_create_son sonaccount13 \"http://sonaddreess13.com\" \[\[bitcoin, 02bafba3096f546cc5831ce1e49ba7142478a659f2d689bbc70ed37235255172a8\], \[peerplays, TEST55eCWenoKmZct5YvUYv7aphMmSVkroZTJZWFHGTVj8r8bKEPMd\], \[hive, sonaccount13\]\] true\r"

sleep 0.2

expect "unlocked >>> "
send "try_create_son sonaccount14 \"http://sonaddreess14.com\" \[\[bitcoin, 0287bcbd4f5d357f89a86979b386402445d7e9a5dccfd16146d1d2ab0dc2c32ae8\], \[peerplays, TEST5e4HXhA4yBEGzaXVyjuVabKhG1qGghi6rypvq5fLxAmU9XLRHT\], \[hive, sonaccount14\]\] true\r"

sleep 0.2

expect "unlocked >>> "
send "try_create_son sonaccount15 \"http://sonaddreess15.com\" \[\[bitcoin, 02053859d76aa375d6f343a60e3678e906c008015e32fe4712b1fd2b26473bdd73\], \[peerplays, TEST89qMuZejYeeGvjr3bMEcGyvhD4dyUchmxbLNUBFbPodqJKJPZc\], \[hive, sonaccount15\]\] true\r"

sleep 0.2

expect "unlocked >>> "
send "try_create_son sonaccount16 \"http://sonaddreess16.com\" \[\[bitcoin, 03c880baffd37471f3c7e712e51b339dd08e2056757fc8499ea3d41d4fa1801247\], \[peerplays, TEST6KRpHxYJSE5vXvoeVMLbKSYnVspt2nnGV2enncRzHgLQ9dez5v\], \[hive, sonaccount16\]\] true\r"



#expect "unlocked >>> "
#send "vote_for_witness witness01 witness01 true true\r"

#expect "unlocked >>> "
#send "vote_for_witness witness02 witness02 true true\r"

#expect "unlocked >>> "
#send "vote_for_witness witness03 witness03 true true\r"

#expect "unlocked >>> "
#send "vote_for_witness witness04 witness04 true true\r"

#expect "unlocked >>> "
#send "vote_for_witness witness05 witness05 true true\r"

#expect "unlocked >>> "
#send "vote_for_witness witness06 witness06 true true\r"

#expect "unlocked >>> "
#send "vote_for_witness witness07 witness07 true true\r"

#expect "unlocked >>> "
#send "vote_for_witness witness08 witness08 true true\r"

#expect "unlocked >>> "
#send "vote_for_witness witness09 witness09 true true\r"

#expect "unlocked >>> "
#send "vote_for_witness witness10 witness10 true true\r"

#expect "unlocked >>> "
#send "vote_for_witness witness11 witness11 true true\r"

#expect "unlocked >>> "
#send "vote_for_witness witness12 witness12 true true\r"

#expect "unlocked >>> "
#send "vote_for_witness witness13 witness13 true true\r"

#expect "unlocked >>> "
#send "vote_for_witness witness14 witness14 true true\r"

#expect "unlocked >>> "
#send "vote_for_witness witness15 witness15 true true\r"

#expect "unlocked >>> "
#send "vote_for_witness witness16 witness16 true true\r"



#expect "unlocked >>> "
#send "vote_for_son sonaccount01 sonaccount01 true true\r"

#expect "unlocked >>> "
#send "vote_for_son sonaccount02 sonaccount02 true true\r"

#expect "unlocked >>> "
#send "vote_for_son sonaccount03 sonaccount03 true true\r"

#expect "unlocked >>> "
#send "vote_for_son sonaccount04 sonaccount04 true true\r"

#expect "unlocked >>> "
#send "vote_for_son sonaccount05 sonaccount05 true true\r"

#expect "unlocked >>> "
#send "vote_for_son sonaccount06 sonaccount06 true true\r"

#expect "unlocked >>> "
#send "vote_for_son sonaccount07 sonaccount07 true true\r"

#expect "unlocked >>> "
#send "vote_for_son sonaccount08 sonaccount08 true true\r"

#expect "unlocked >>> "
#send "vote_for_son sonaccount09 sonaccount09 true true\r"

#expect "unlocked >>> "
#send "vote_for_son sonaccount10 sonaccount10 true true\r"

#expect "unlocked >>> "
#send "vote_for_son sonaccount11 sonaccount11 true true\r"

#expect "unlocked >>> "
#send "vote_for_son sonaccount12 sonaccount12 true true\r"

#expect "unlocked >>> "
#send "vote_for_son sonaccount13 sonaccount13 true true\r"

#expect "unlocked >>> "
#send "vote_for_son sonaccount14 sonaccount14 true true\r"

#expect "unlocked >>> "
#send "vote_for_son sonaccount15 sonaccount15 true true\r"

#expect "unlocked >>> "
#send "vote_for_son sonaccount16 sonaccount16 true true\r"



expect "unlocked >>> "
close



