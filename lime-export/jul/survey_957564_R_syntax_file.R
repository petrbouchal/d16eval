data_jul <- read.csv("survey_957564_R_data_file.csv", quote = "'\"", na.strings=c("", "\"\""), stringsAsFactors=FALSE)


# LimeSurvey Field type: F
data[, 1] <- as.numeric(data[, 1])
attributes(data)$variable.labels[1] <- "id"
names(data)[1] <- "id"
# LimeSurvey Field type: DATETIME23.2
data[, 2] <- as.character(data[, 2])
attributes(data)$variable.labels[2] <- "submitdate"
names(data)[2] <- "submitdate"
# LimeSurvey Field type: F
data[, 3] <- as.numeric(data[, 3])
attributes(data)$variable.labels[3] <- "lastpage"
names(data)[3] <- "lastpage"
# LimeSurvey Field type: A
data[, 4] <- as.character(data[, 4])
attributes(data)$variable.labels[4] <- "startlanguage"
names(data)[4] <- "startlanguage"
# LimeSurvey Field type: DATETIME23.2
data[, 5] <- as.character(data[, 5])
attributes(data)$variable.labels[5] <- "startdate"
names(data)[5] <- "startdate"
# LimeSurvey Field type: DATETIME23.2
data[, 6] <- as.character(data[, 6])
attributes(data)$variable.labels[6] <- "datestamp"
names(data)[6] <- "datestamp"
# LimeSurvey Field type: F
data[, 7] <- as.numeric(data[, 7])
attributes(data)$variable.labels[7] <- "Ovlivnila účast na Discover tvoje plány do budoucna?"
data[, 7] <- factor(data[, 7], levels=c(1,2),labels=c("Ano", "Ne"))
names(data)[7] <- "ovlivlilaucastplany"
# LimeSurvey Field type: A
data[, 8] <- as.character(data[, 8])
attributes(data)$variable.labels[8] <- "Proč ne?"
names(data)[8] <- "ovlivnilaucastProcNe"
# LimeSurvey Field type: A
data[, 9] <- as.character(data[, 9])
attributes(data)$variable.labels[9] <- "V čem?"
names(data)[9] <- "ovlivnilaucastVCem"
# LimeSurvey Field type: F
data[, 10] <- as.numeric(data[, 10])
attributes(data)$variable.labels[10] <- "Doporučil/a bys Discover kamarádovi nebo kamarádce?"
data[, 10] <- factor(data[, 10], levels=c(1,2),labels=c("Ano", "Ne"))
names(data)[10] <- "doporucilkamaradovi"
# LimeSurvey Field type: A
data[, 11] <- as.character(data[, 11])
attributes(data)$variable.labels[11] <- "Proč?"
names(data)[11] <- "doporucilProc"
# LimeSurvey Field type: A
data[, 12] <- as.character(data[, 12])
attributes(data)$variable.labels[12] <- "Proč ne?"
names(data)[12] <- "doporucilProcNe"
# LimeSurvey Field type: A
data[, 13] <- as.character(data[, 13])
attributes(data)$variable.labels[13] <- "Proč podle tebe Letní akademii Discover děláme?"
names(data)[13] <- "proctodelame"
# LimeSurvey Field type: A
data[, 14] <- as.character(data[, 14])
attributes(data)$variable.labels[14] <- "Co bylo pro tebe nejdůležitější při rozhodování, na který turnus se přihlásit?"
data[, 14] <- factor(data[, 14], levels=c("lekto","kurz","cas","58406","kamar"),labels=c("Účast konkrétních lektorů", "Dostupnost konkrétního kurzu", "Moje časové možnosti", "Účast spoludiscoveráků z minulých ročníků", "Účast kamarádů ze školy/odjinud"))
names(data)[14] <- "jakvybirasturnus"
# LimeSurvey Field type: A
data[, 15] <- as.character(data[, 15])
attributes(data)$variable.labels[15] <- "Byl/a jsi spokojený/á s komunikací s organizátory před Discover?"
data[, 15] <- factor(data[, 15], levels=c("A1","A2","A3","A4","A5"),labels=c("Určitě ano", "Spíše ano", "Spíše ne", "Určitě ne", "Nevím"))
names(data)[15] <- "komunikacepred"
# LimeSurvey Field type: A
data[, 16] <- as.character(data[, 16])
attributes(data)$variable.labels[16] <- "Co bychom mohli na komunikaci před Discover zlepšit?"
names(data)[16] <- "komunikacecozlepsit"
# LimeSurvey Field type: A
data[, 17] <- as.character(data[, 17])
attributes(data)$variable.labels[17] <- "Byla užitečná brožurka s popisy lektorů? Jak bychom ji mohli zlepšit?"
data[, 17] <- factor(data[, 17], levels=c("A1","A2","A3","A4","A5"),labels=c("Určitě ano", "Spíše ano", "Spíše ne", "Určitě ne", "Nevím"))
names(data)[17] <- "brozurka"
# LimeSurvey Field type: F
data[, 18] <- as.numeric(data[, 18])
attributes(data)$variable.labels[18] <- "[Komentář] Byla užitečná brožurka s popisy lektorů? Jak bychom ji mohli zlepšit?"
names(data)[18] <- "brozurka_comment"
# LimeSurvey Field type: A
data[, 19] <- as.character(data[, 19])
attributes(data)$variable.labels[19] <- "Byla přítomnost psychologa užitečná?Pokud ano, proč? Pokud ne, proč ne?"
data[, 19] <- factor(data[, 19], levels=c("A1","A2","A3","A4","A5"),labels=c("Určitě ano", "Spíše ano", "Spíše ne", "Určitě ne", "Nevím"))
names(data)[19] <- "rolepsychologa"
# LimeSurvey Field type: A
data[, 20] <- as.character(data[, 20])
attributes(data)$variable.labels[20] <- "V čem?"
names(data)[20] <- "rolepsychVcem"
# LimeSurvey Field type: A
data[, 21] <- as.character(data[, 21])
attributes(data)$variable.labels[21] <- "Jak na Tebe zapůsobila Noc za oponou? Co sis z ní odnesl/a?"
names(data)[21] <- "zaoponou"
# LimeSurvey Field type: F
data[, 22] <- as.numeric(data[, 22])
attributes(data)$variable.labels[22] <- "[Seznamovací hry (neděle)] Jak se ti líbil volnočasový program? (Známkuj jako ve škole: 1 nejlepší, 5 nejhorší)"
names(data)[22] <- "volnocasovyProgram_ne"
# LimeSurvey Field type: F
data[, 23] <- as.numeric(data[, 23])
attributes(data)$variable.labels[23] <- "[Pevnost Podskalie (pondělí)] Jak se ti líbil volnočasový program? (Známkuj jako ve škole: 1 nejlepší, 5 nejhorší)"
names(data)[23] <- "volnocasovyProgram_po"
# LimeSurvey Field type: F
data[, 24] <- as.numeric(data[, 24])
attributes(data)$variable.labels[24] <- "[Večer za oponou (úterý)] Jak se ti líbil volnočasový program? (Známkuj jako ve škole: 1 nejlepší, 5 nejhorší)"
names(data)[24] <- "volnocasovyProgram_ut"
# LimeSurvey Field type: F
data[, 25] <- as.numeric(data[, 25])
attributes(data)$variable.labels[25] <- "[Debata/vernisáž/filmy (středa)] Jak se ti líbil volnočasový program? (Známkuj jako ve škole: 1 nejlepší, 5 nejhorší)"
names(data)[25] <- "volnocasovyProgram_st"
# LimeSurvey Field type: F
data[, 26] <- as.numeric(data[, 26])
attributes(data)$variable.labels[26] <- "[Výlet] Jak se ti líbil volnočasový program? (Známkuj jako ve škole: 1 nejlepší, 5 nejhorší)"
names(data)[26] <- "volnocasovyProgram_ct"
# LimeSurvey Field type: F
data[, 27] <- as.numeric(data[, 27])
attributes(data)$variable.labels[27] <- "[Pub quiz (pátek)] Jak se ti líbil volnočasový program? (Známkuj jako ve škole: 1 nejlepší, 5 nejhorší)"
names(data)[27] <- "volnocasovyProgram_pa"
# LimeSurvey Field type: F
data[, 28] <- as.numeric(data[, 28])
attributes(data)$variable.labels[28] <- "[Táborák (sobota)] Jak se ti líbil volnočasový program? (Známkuj jako ve škole: 1 nejlepší, 5 nejhorší)"
names(data)[28] <- "volnocasovyProgram_so"
# LimeSurvey Field type: A
data[, 29] <- as.character(data[, 29])
attributes(data)$variable.labels[29] <- "Co se ti nejvíc líbilo na volnočasovém programu (vše kromě kurzů a workshopů) a proč?"
names(data)[29] <- "volnycasnejlepsi"
# LimeSurvey Field type: A
data[, 30] <- as.character(data[, 30])
attributes(data)$variable.labels[30] <- "Co bychom naopak na volnočasových aktivitách měli změnit? (Napadají tě například nějaké aktivity, které bychom mohli přidat nebo obměnit?)"
names(data)[30] <- "volnycascozmenit"
# LimeSurvey Field type: F
data[, 31] <- as.numeric(data[, 31])
attributes(data)$variable.labels[31] <- "Měl by se měnit program letní akademie - například změnit načasování aktivit nebo přidat či ubrat aktivity?"
data[, 31] <- factor(data[, 31], levels=c(1,2),labels=c("Ano", "Ne"))
names(data)[31] <- "menitprogram"
# LimeSurvey Field type: A
data[, 32] <- as.character(data[, 32])
attributes(data)$variable.labels[32] <- "Jak? Proč?"
names(data)[32] <- "meniprogramJak"
# LimeSurvey Field type: A
data[, 33] <- as.character(data[, 33])
attributes(data)$variable.labels[33] <- "Byl poměr mezi nevýukovými aktivitami a výukou (kurzy a workshopy) vhodný? "
data[, 33] <- factor(data[, 33], levels=c("hvicf","ok","hvicv"),labels=c("Mělo by být víc volného času", "Poměr byl vhodný", "Mělo by být víc výuky"))
names(data)[33] <- "volnycasvsvyuka"
# LimeSurvey Field type: A
data[, 34] <- as.character(data[, 34])
attributes(data)$variable.labels[34] <- "Máš připomínky k jídlu, ubytování nebo lokalitě?"
names(data)[34] <- "jidloatd"
# LimeSurvey Field type: A
data[, 35] <- as.character(data[, 35])
attributes(data)$variable.labels[35] <- "Jaká by měla být velikost (počet účastníků, ne délka) letní akademie?"
data[, 35] <- factor(data[, 35], levels=c("uvets","svets","stejn","smens","uvet"),labels=c("Určitě větší", "Spíš větší", "Stejná", "Spíš menší", "Určitě větší"))
names(data)[35] <- "velikost"
# LimeSurvey Field type: A
data[, 36] <- as.character(data[, 36])
attributes(data)$variable.labels[36] <- "Co pro tebe bylo nejdůležitější při výběru kurzů?"
data[, 36] <- factor(data[, 36], levels=c("lekpr","lekzn","vysok","nedos","nezna","vyluc"),labels=c("Profil lektora", "Vybírám si lektory, které znám", "Vybírám si předměty, o kterých uvažuju ke studiu na vysoké škole", "Vybírám si témata a obory, ke kterým se jinak nedostanu", "Vybírám si témata, o kterých vím málo/nic", "Hodně už jsem jich absolvovat - vybírám si mezi zbylými"))
names(data)[36] <- "jakvybiraskurzy"
# LimeSurvey Field type: A
data[, 37] <- as.character(data[, 37])
attributes(data)$variable.labels[37] <- "[Jiné] Co pro tebe bylo nejdůležitější při výběru kurzů?"
names(data)[37] <- "jakvybiraskurzy_other"
# LimeSurvey Field type: A
data[, 38] <- as.character(data[, 38])
attributes(data)$variable.labels[38] <- "Byla nabídka kurzů dostatečně pestrá na to, aby sis vybral/a?"
data[, 38] <- factor(data[, 38], levels=c("A1","A2","A3","A4"),labels=c("Určitě ano", "Spíše ano", "Spíše ne", "Určitě ne"))
names(data)[38] <- "nabidkakurzurozmanit"
# LimeSurvey Field type: A
data[, 39] <- as.character(data[, 39])
attributes(data)$variable.labels[39] <- "Který kurz jsi měl/a v prvním bloku?"
data[, 39] <- factor(data[, 39], levels=c("behav","bioet","debat","altru","fyzik","infor","matem","medic","metod","migra","polit","psych","robot","socio","game","vytva"),labels=c("Behaviorální ekonomie", "Bioetika", "Debata pro začátečníky", "Efektivní altruismus", "Fyzika", "Informatika", "Matematika", "Medicína", "Metodologie vědy", "Migrace a migrační politika", "Politologie", "Psychologie", "Robotika", "Sociologie", "Teorie her", "Výtvarné umění"))
names(data)[39] <- "kurz1ktery"
# LimeSurvey Field type: A
data[, 40] <- as.character(data[, 40])
attributes(data)$variable.labels[40] <- "Který kurz jsi měl/a v druhém bloku?"
data[, 40] <- factor(data[, 40], levels=c("behav","bioet","debat","altru","fyzik","infor","matem","medic","metod","migra","polit","psych","robot","socio","game","vytva"),labels=c("Behaviorální ekonomie", "Bioetika", "Debata pro začátečníky", "Efektivní altruismus", "Fyzika", "Informatika", "Matematika", "Medicína", "Metodologie vědy", "Migrace a migrační politika", "Politologie", "Psychologie", "Robotika", "Sociologie", "Teorie her", "Výtvarné umění"))
names(data)[40] <- "kurz2ktery"
# LimeSurvey Field type: A
data[, 41] <- as.character(data[, 41])
attributes(data)$variable.labels[41] <- "Jaké další kurzy bys v nabídce přivítal/a? (pokud nějaké) "
names(data)[41] <- "kurzyjakedalsi"
# LimeSurvey Field type: F
data[, 42] <- as.numeric(data[, 42])
attributes(data)$variable.labels[42] <- "Jak celkově hodnotíš kurz? (Známkuj jako ve škole: 1 nejlepší, 5 nejhorší)"
names(data)[42] <- "kurz1hodnoceni"
# LimeSurvey Field type: F
data[, 43] <- as.numeric(data[, 43])
attributes(data)$variable.labels[43] <- "Ovlivnil tě kurz v něčem?"
data[, 43] <- factor(data[, 43], levels=c(1,2),labels=c("Ano", "Ne"))
names(data)[43] <- "kurz1ovlivnil"
# LimeSurvey Field type: A
data[, 44] <- as.character(data[, 44])
attributes(data)$variable.labels[44] <- "V čem?"
names(data)[44] <- "kurz1ovlivnilVCem"
# LimeSurvey Field type: A
data[, 45] <- as.character(data[, 45])
attributes(data)$variable.labels[45] <- "Proč ne?"
names(data)[45] <- "kurz1ovlivnilProcNe"
# LimeSurvey Field type: A
data[, 46] <- as.character(data[, 46])
attributes(data)$variable.labels[46] <- "Co se ti na kurzu {INSERTANS:957564X65X595} nejvíce líbilo a proč?"
names(data)[46] <- "kurz1libilo"
# LimeSurvey Field type: A
data[, 47] <- as.character(data[, 47])
attributes(data)$variable.labels[47] <- "Co bychom na tomto kurzu měli v budoucnosti změnit a proč? (Obsah, formu...? Pokud tě napadá, zmiň i konkrétní hodinu nebo aktivitu)."
names(data)[47] <- "kurz1zmenit"
# LimeSurvey Field type: A
data[, 48] <- as.character(data[, 48])
attributes(data)$variable.labels[48] <- "[pochopit materiál na kurzu?] Jak náročné bylo..."
data[, 48] <- factor(data[, 48], levels=c("vlehk","slehk","vhodn","stezk","vtezk","na","nevim"),labels=c("Velmi lehké", "Spíše lehké", "Vhodně náročné", "Spíše těžké", "Velmi těžké", "Mého kurzu se netýká", "Nevím"))
names(data)[48] <- "kurz1narocnost_narocmater"
# LimeSurvey Field type: A
data[, 49] <- as.character(data[, 49])
attributes(data)$variable.labels[49] <- "[přečíst kurzové materiály před Discoverem?] Jak náročné bylo..."
data[, 49] <- factor(data[, 49], levels=c("vlehk","slehk","vhodn","stezk","vtezk","na","nevim"),labels=c("Velmi lehké", "Spíše lehké", "Vhodně náročné", "Spíše těžké", "Velmi těžké", "Mého kurzu se netýká", "Nevím"))
names(data)[49] <- "kurz1narocnost_narochod"
# LimeSurvey Field type: A
data[, 50] <- as.character(data[, 50])
attributes(data)$variable.labels[50] <- "Obsahoval kurz dostatek aktivit, které ti umožňovaly se zapojit do dění v kurzu?"
data[, 50] <- factor(data[, 50], levels=c("A1","A2","A3","A4"),labels=c("Určitě ano", "Spíše ano", "Spíše ne", "Určitě ne"))
names(data)[50] <- "kurz1zapoj"
# LimeSurvey Field type: A
data[, 51] <- as.character(data[, 51])
attributes(data)$variable.labels[51] <- "[Byl lektor dostatečný odborník pro tento kurz?] Jak hodnotíš tyto aspekty kurzu?"
data[, 51] <- factor(data[, 51], levels=c("A1","A2","A3","A4","A5"),labels=c("Určitě ano", "Spíše ano", "Spíše ne", "Určitě ne", "Nevím"))
names(data)[51] <- "kurz1obsah_lekodbornik"
# LimeSurvey Field type: A
data[, 52] <- as.character(data[, 52])
attributes(data)$variable.labels[52] <- "[Byl lektor dobře připravený na tento kurz?] Jak hodnotíš tyto aspekty kurzu?"
data[, 52] <- factor(data[, 52], levels=c("A1","A2","A3","A4","A5"),labels=c("Určitě ano", "Spíše ano", "Spíše ne", "Určitě ne", "Nevím"))
names(data)[52] <- "kurz1obsah_lekpripraveny"
# LimeSurvey Field type: A
data[, 53] <- as.character(data[, 53])
attributes(data)$variable.labels[53] <- "[Byly aktivity v kurzu zajímavé?] Jak hodnotíš tyto aspekty kurzu?"
data[, 53] <- factor(data[, 53], levels=c("A1","A2","A3","A4","A5"),labels=c("Určitě ano", "Spíše ano", "Spíše ne", "Určitě ne", "Nevím"))
names(data)[53] <- "kurz1obsah_lekpoutave"
# LimeSurvey Field type: A
data[, 54] <- as.character(data[, 54])
attributes(data)$variable.labels[54] <- "Pokud máš poznámky k lektorovi nebo ke způsobu, jak učil, poděl se o ně prosím tady:"
names(data)[54] <- "kurz1lektorpoznamky"
# LimeSurvey Field type: F
data[, 55] <- as.numeric(data[, 55])
attributes(data)$variable.labels[55] <- "Jak celkově hodnodíš tento kurz? (Známkuj jako ve škole: 1 nejlepší, 5 nejhorší)"
names(data)[55] <- "kurz2hodnoceni"
# LimeSurvey Field type: F
data[, 56] <- as.numeric(data[, 56])
attributes(data)$variable.labels[56] <- "Ovlivnil tě kurz v něčem?"
data[, 56] <- factor(data[, 56], levels=c(1,2),labels=c("Ano", "Ne"))
names(data)[56] <- "kurz2ovlivnil"
# LimeSurvey Field type: A
data[, 57] <- as.character(data[, 57])
attributes(data)$variable.labels[57] <- "V čem?"
names(data)[57] <- "kurz2ovlivnilVCem"
# LimeSurvey Field type: A
data[, 58] <- as.character(data[, 58])
attributes(data)$variable.labels[58] <- "Proč ne?"
names(data)[58] <- "kurz2ovlivnilProcNe"
# LimeSurvey Field type: A
data[, 59] <- as.character(data[, 59])
attributes(data)$variable.labels[59] <- "Co se ti na kurzu {INSERTANS:957564X65X656} nejvíce líbilo a proč?"
names(data)[59] <- "kurz2libilo"
# LimeSurvey Field type: A
data[, 60] <- as.character(data[, 60])
attributes(data)$variable.labels[60] <- "Co bychom na tomto kurzu měli v budoucnosti změnit a proč? (Obsah, formu...? Pokud tě napadá, zmiň i konkrétní hodinu nebo aktivitu)."
names(data)[60] <- "kurz2zmenit"
# LimeSurvey Field type: A
data[, 61] <- as.character(data[, 61])
attributes(data)$variable.labels[61] <- "[pochopit materiál na kurzu?] Jak náročné bylo..."
data[, 61] <- factor(data[, 61], levels=c("vlehk","slehk","vhodn","stezk","vtezk","na","nevim"),labels=c("Velmi lehké", "Spíše lehké", "Vhodně náročné", "Spíše těžké", "Velmi těžké", "Mého kurzu se netýká", "Nevím"))
names(data)[61] <- "kurz2narocnost_narocmater"
# LimeSurvey Field type: A
data[, 62] <- as.character(data[, 62])
attributes(data)$variable.labels[62] <- "[přečíst kurzové materiály před Discoverem?] Jak náročné bylo..."
data[, 62] <- factor(data[, 62], levels=c("vlehk","slehk","vhodn","stezk","vtezk","na","nevim"),labels=c("Velmi lehké", "Spíše lehké", "Vhodně náročné", "Spíše těžké", "Velmi těžké", "Mého kurzu se netýká", "Nevím"))
names(data)[62] <- "kurz2narocnost_narochod"
# LimeSurvey Field type: A
data[, 63] <- as.character(data[, 63])
attributes(data)$variable.labels[63] <- "Obsahoval kurz dostatek aktivit, které ti umožňovaly se zapojit do dění v kurzu?"
data[, 63] <- factor(data[, 63], levels=c("A1","A2","A3","A4"),labels=c("Určitě ano", "Spíše ano", "Spíše ne", "Určitě ne"))
names(data)[63] <- "kurz2zapoj"
# LimeSurvey Field type: A
data[, 64] <- as.character(data[, 64])
attributes(data)$variable.labels[64] <- "[Byl lektor dostatečný odborník pro tento kurz?] Jak hodnotíš tyto aspekty kurzu?"
data[, 64] <- factor(data[, 64], levels=c("A1","A2","A3","A4","A5"),labels=c("Určitě ano", "Spíše ano", "Spíše ne", "Určitě ne", "Nevím"))
names(data)[64] <- "kurz2obsah_lekodbornik"
# LimeSurvey Field type: A
data[, 65] <- as.character(data[, 65])
attributes(data)$variable.labels[65] <- "[Byl lektor dobře připravený na tento kurz?] Jak hodnotíš tyto aspekty kurzu?"
data[, 65] <- factor(data[, 65], levels=c("A1","A2","A3","A4","A5"),labels=c("Určitě ano", "Spíše ano", "Spíše ne", "Určitě ne", "Nevím"))
names(data)[65] <- "kurz2obsah_lekpripraveny"
# LimeSurvey Field type: A
data[, 66] <- as.character(data[, 66])
attributes(data)$variable.labels[66] <- "[Byly aktivity v kurzu zajímavé?] Jak hodnotíš tyto aspekty kurzu?"
data[, 66] <- factor(data[, 66], levels=c("A1","A2","A3","A4","A5"),labels=c("Určitě ano", "Spíše ano", "Spíše ne", "Určitě ne", "Nevím"))
names(data)[66] <- "kurz2obsah_lekpoutave"
# LimeSurvey Field type: A
data[, 67] <- as.character(data[, 67])
attributes(data)$variable.labels[67] <- "Pokud máš poznámky k lektorovi nebo ke způsobu, jak učil, poděl se o ně prosím tady:"
names(data)[67] <- "kurz2lektorpoznamky"
# LimeSurvey Field type: A
data[, 68] <- as.character(data[, 68])
attributes(data)$variable.labels[68] <- ""
names(data)[68] <- "polovina"
# LimeSurvey Field type: A
data[, 69] <- as.character(data[, 69])
attributes(data)$variable.labels[69] <- "Komunikoval s tebou prefekt dostatečně? Dokázal ti pomoct, když jsi to potřeboval/a?"
data[, 69] <- factor(data[, 69], levels=c("A1","A2","A3","A4","A5"),labels=c("Určitě ano", "Spíše ano", "Spíše ne", "Určitě ne", "Nevím"))
names(data)[69] <- "prefektkomunikace"
# LimeSurvey Field type: A
data[, 70] <- as.character(data[, 70])
attributes(data)$variable.labels[70] <- "Co by měl prefekt zlepšit?"
names(data)[70] <- "prefektkomCoZlepsit"
# LimeSurvey Field type: A
data[, 71] <- as.character(data[, 71])
attributes(data)$variable.labels[71] <- "[Dezinformace a konspirace (pondělí)] Byla pro tebe témata týmových workshopů zajímavá?"
data[, 71] <- factor(data[, 71], levels=c("A1","A2","A3","A4","A5"),labels=c("Určitě ano", "Spíše ano", "Spíše ne", "Určitě ne", "Nevím"))
names(data)[71] <- "wsTymoveZajimave_po"
# LimeSurvey Field type: A
data[, 72] <- as.character(data[, 72])
attributes(data)$variable.labels[72] <- "[Integrace nových menšin (úterý)] Byla pro tebe témata týmových workshopů zajímavá?"
data[, 72] <- factor(data[, 72], levels=c("A1","A2","A3","A4","A5"),labels=c("Určitě ano", "Spíše ano", "Spíše ne", "Určitě ne", "Nevím"))
names(data)[72] <- "wsTymoveZajimave_st"
# LimeSurvey Field type: A
data[, 73] <- as.character(data[, 73])
attributes(data)$variable.labels[73] <- "[O vztazích a lidech (pátek)] Byla pro tebe témata týmových workshopů zajímavá?"
data[, 73] <- factor(data[, 73], levels=c("A1","A2","A3","A4","A5"),labels=c("Určitě ano", "Spíše ano", "Spíše ne", "Určitě ne", "Nevím"))
names(data)[73] <- "wsTymoveZajimave_pa"
# LimeSurvey Field type: A
data[, 74] <- as.character(data[, 74])
attributes(data)$variable.labels[74] <- "[Vzdělávání a já (sobota)] Byla pro tebe témata týmových workshopů zajímavá?"
data[, 74] <- factor(data[, 74], levels=c("A1","A2","A3","A4","A5"),labels=c("Určitě ano", "Spíše ano", "Spíše ne", "Určitě ne", "Nevím"))
names(data)[74] <- "wsTymoveZajimave_so"
# LimeSurvey Field type: A
data[, 75] <- as.character(data[, 75])
attributes(data)$variable.labels[75] <- "Jaká témata by se pro tebe byla zajímavější?"
names(data)[75] <- "wsTymoveJineTema"
# LimeSurvey Field type: A
data[, 76] <- as.character(data[, 76])
attributes(data)$variable.labels[76] <- "[Konspirace a dezinformace (pondělí)] Byly týmové workshopy přínosné?"
data[, 76] <- factor(data[, 76], levels=c("A1","A2","A3","A4","A5"),labels=c("Určitě ano", "Spíše ano", "Spíše ne", "Určitě ne", "Nevím"))
names(data)[76] <- "wsTymovePrinosne_po"
# LimeSurvey Field type: A
data[, 77] <- as.character(data[, 77])
attributes(data)$variable.labels[77] <- "[Integrace nových menšin (středa)] Byly týmové workshopy přínosné?"
data[, 77] <- factor(data[, 77], levels=c("A1","A2","A3","A4","A5"),labels=c("Určitě ano", "Spíše ano", "Spíše ne", "Určitě ne", "Nevím"))
names(data)[77] <- "wsTymovePrinosne_st"
# LimeSurvey Field type: A
data[, 78] <- as.character(data[, 78])
attributes(data)$variable.labels[78] <- "[O vztazích a lidech (pátek)] Byly týmové workshopy přínosné?"
data[, 78] <- factor(data[, 78], levels=c("A1","A2","A3","A4","A5"),labels=c("Určitě ano", "Spíše ano", "Spíše ne", "Určitě ne", "Nevím"))
names(data)[78] <- "wsTymovePrinosne_pa"
# LimeSurvey Field type: A
data[, 79] <- as.character(data[, 79])
attributes(data)$variable.labels[79] <- "[Vzdělávání (sobota)] Byly týmové workshopy přínosné?"
data[, 79] <- factor(data[, 79], levels=c("A1","A2","A3","A4","A5"),labels=c("Určitě ano", "Spíše ano", "Spíše ne", "Určitě ne", "Nevím"))
names(data)[79] <- "wsTymovePrinosne_so"
# LimeSurvey Field type: A
data[, 80] <- as.character(data[, 80])
attributes(data)$variable.labels[80] <- "Čím pro tebe byly přínosné?"
names(data)[80] <- "wsTymovePrinosProc"
# LimeSurvey Field type: A
data[, 81] <- as.character(data[, 81])
attributes(data)$variable.labels[81] <- "Proč pro tebe (některé) nebyly přínosné?"
names(data)[81] <- "wsTymovePrinosProcNe"
# LimeSurvey Field type: F
data[, 82] <- as.numeric(data[, 82])
attributes(data)$variable.labels[82] <- "Změnil se díky týmovým workshopům tvůj pohled na některé z témat, o kterých jste se bavili?Pokud ano, jaký a proč? Pokud ne, proč?"
data[, 82] <- factor(data[, 82], levels=c(1,2),labels=c("Ano", "Ne"))
names(data)[82] <- "wsTymovePohled"
# LimeSurvey Field type: A
data[, 83] <- as.character(data[, 83])
attributes(data)$variable.labels[83] <- "Na jaké téma nebo témata jsi změnil/a pohled a proč?"
names(data)[83] <- "wsTymoveZmenaProcAno"
# LimeSurvey Field type: A
data[, 84] <- as.character(data[, 84])
attributes(data)$variable.labels[84] <- "Proč ne?"
names(data)[84] <- "wsTymoveZmenaProcNe"
# LimeSurvey Field type: A
data[, 85] <- as.character(data[, 85])
attributes(data)$variable.labels[85] <- "Dařilo se tvému prefektovi vést týmové workshopy?"
data[, 85] <- factor(data[, 85], levels=c("A1","A2","A3","A4","A5"),labels=c("Určitě ano", "Spíše ano", "Spíše ne", "Určitě ne", "Nevím"))
names(data)[85] <- "prefektVedlWS"
# LimeSurvey Field type: A
data[, 86] <- as.character(data[, 86])
attributes(data)$variable.labels[86] <- "Co by měl prefekt zlepšit?"
names(data)[86] <- "prefektVedlWSZlepsit"
# LimeSurvey Field type: F
data[, 87] <- as.numeric(data[, 87])
attributes(data)$variable.labels[87] <- "Měli bychom na týmových workshopech něco změnit? (Pokud bys přivítal/a jiná témata, navrhni)."
data[, 87] <- factor(data[, 87], levels=c(1,2),labels=c("Ano", "Ne"))
names(data)[87] <- "wsTymoveZmenit"
# LimeSurvey Field type: A
data[, 88] <- as.character(data[, 88])
attributes(data)$variable.labels[88] <- "Co bychom měli změnit?"
names(data)[88] <- "wsTymoveZmenitCo"
# LimeSurvey Field type: F
data[, 89] <- as.numeric(data[, 89])
attributes(data)$variable.labels[89] <- "Kterého individuálního (ne týmového) workshopu ses zúčastnil/a v pondělí odpoledne?"
data[, 89] <- factor(data[, 89], levels=c(1,2,3,4,5,6,7,8,9),labels=c("Jak udělat workshop? (Lenka Pavelková + Diana)", "Mimina na míru a pět rodičů (Alexandra Trochtova)", "Základy Salsy (Alexandr Sibirský + Klaudie)", "Feminizmus v 21. století (Irena Kotikova)", "Očité svedectvo - Psychológia v súdnej sieni (Patrik Gallo)", "Jak poznat, jestli stát plýtvá penězi (Petr Bouchal)", "Polární záře ve vědě a umění (Zbyšek Mošna)", "Jak najít ideální kariéru a změnit přitom svět? (Aleš Flídr)", "žádného"))
names(data)[89] <- "wspondeli1vyber"
# LimeSurvey Field type: A
data[, 90] <- as.character(data[, 90])
attributes(data)$variable.labels[90] <- "[Jiné] Kterého individuálního (ne týmového) workshopu ses zúčastnil/a v pondělí odpoledne?"
names(data)[90] <- "wspondeli1vyber_other"
# LimeSurvey Field type: F
data[, 91] <- as.numeric(data[, 91])
attributes(data)$variable.labels[91] <- "Jak bys ohodnotil/a workshop {if(!is_empty(wspondeli1vyber_other),wspondeli1vyber_other,wspondeli1vyber.shown)}?"
names(data)[91] <- "wspondeli1hodnoceni"
# LimeSurvey Field type: F
data[, 92] <- as.numeric(data[, 92])
attributes(data)$variable.labels[92] <- "Kterého individuálního (ne týmového) workshopu ses zúčastnil/a v úterý odpoledne?"
data[, 92] <- factor(data[, 92], levels=c(1,2,3,4,5,6,7,8,9),labels=c("Přírodní pohřebnictví (Blanka Dobešová + Monika Suchánska)", "Pig foot training (Danka Humlová)", "Svoboda projevu v Evropě (Martin Slivoně)", "Základy argumentácie (Jakub Kobela)", "Vytvor si svoju mandalu (Dominika Dudášová)", "Vizualizace dat (Petr Bouchal)", "Sociální podnikání (Ondřej Bajgar)", "Základy sebeobrany  (Alexandr Sibirský + Irenka)", "žádného"))
names(data)[92] <- "wsutery1vyber"
# LimeSurvey Field type: F
data[, 93] <- as.numeric(data[, 93])
attributes(data)$variable.labels[93] <- "[Jiné] Kterého individuálního (ne týmového) workshopu ses zúčastnil/a v úterý odpoledne?"
names(data)[93] <- "wsutery1vyber_other"
# LimeSurvey Field type: F
data[, 94] <- as.numeric(data[, 94])
attributes(data)$variable.labels[94] <- "Jak bys ohodnotil/a workshop {if(!is_empty(wsutery1vyber_other),wsutery1vyber_other,wsutery1vyber.shown)}?"
names(data)[94] <- "wsutery1hodnoceni"
# LimeSurvey Field type: F
data[, 95] <- as.numeric(data[, 95])
attributes(data)$variable.labels[95] <- "Kterého individuálního (ne týmového) workshopu ses zúčastnil/a ve středu odpoledne v prvním bloku od 14:30?"
data[, 95] <- factor(data[, 95], levels=c(1,2,3,4,5,6,7,8,9),labels=c("Vystoupení z EU a jeho následky (Martin Slivoně)", "Sport pro nesportovce (Lenka Habětínová)", "První pomoc  (Alexandr Sibirský + Klaudia)", "Maľovanie na tričká (Diana Ganzarčíková)", "Zážitky z praxe logopedickej (alebo \"nie je to len o račkovaní", "Ako zorganizovať TEDx a nezblázniť sa (Bára Kotíková)", "Jak mohou studenti zlepšit svět - nejen o České středoškolské unii (Lenka Štěpánová)", "Soutěž FIRST Robotics v USA (Daniel Kaftan)", "žádného"))
names(data)[95] <- "wsstreda1vyber"
# LimeSurvey Field type: A
data[, 96] <- as.character(data[, 96])
attributes(data)$variable.labels[96] <- "[Jiné] Kterého individuálního (ne týmového) workshopu ses zúčastnil/a ve středu odpoledne v prvním bloku od 14:30?"
names(data)[96] <- "wsstreda1vyber_other"
# LimeSurvey Field type: F
data[, 97] <- as.numeric(data[, 97])
attributes(data)$variable.labels[97] <- "Jak bys ohodnotil/a workshop {if(!is_empty(wsstreda1vyber_other),wsstreda1vyber_other,wsstreda1vyber.shown)}?"
names(data)[97] <- "wsstreda1hodnoceni"
# LimeSurvey Field type: F
data[, 98] <- as.numeric(data[, 98])
attributes(data)$variable.labels[98] <- "Kterého individuálního (ne týmového) workshopu ses zúčastnil/a ve středu odpoledne v druhém bloku od 16:15?"
data[, 98] <- factor(data[, 98], levels=c(1,2,3,4,5,6,7,8),labels=c("Balet (Klaudia Michalčinová)", "Divadelní improvizace (Zuzka Bobová)", "Vizuální myšlení a poznámky (sketch noting) (Klára Englertová)", "Plenér (Jana Kotíková)", "Typografie: aby se to dalo číst (Petr Bouchal)", "Polární záře ve vědě a umění (Zbyšek Mošna)", "Evropská unie a Islámský stát v kostce  (Alexandra Trochtova)", "žádného"))
names(data)[98] <- "wsstreda2vyber"
# LimeSurvey Field type: A
data[, 99] <- as.character(data[, 99])
attributes(data)$variable.labels[99] <- "[Jiné] Kterého individuálního (ne týmového) workshopu ses zúčastnil/a ve středu odpoledne v druhém bloku od 16:15?"
names(data)[99] <- "wsstreda2vyber_other"
# LimeSurvey Field type: F
data[, 100] <- as.numeric(data[, 100])
attributes(data)$variable.labels[100] <- "Jak bys ohodnotil/a workshop {if(!is_empty(wsstreda2vyber_other),wsstreda2vyber_other,wsstreda2vyber.shown)}?"
names(data)[100] <- "wsstreda2hodnoceni"
# LimeSurvey Field type: F
data[, 101] <- as.numeric(data[, 101])
attributes(data)$variable.labels[101] <- "Kterého individuálního (ne týmového) workshopu ses zúčastnil/a v pátek odpoledne od 14:30?"
data[, 101] <- factor(data[, 101], levels=c(1,2,3,4,5,6,7,8),labels=c("Polednice Reloaded (Kryštof Vosátka)", "Základy kizomby (Alexandr Sibirský + Klaudie)", "Podnikanie zalozene na etickych hodnotach (Peter Friedmann)", "Očkování aneb společné blaho (Danka Humlová)", "Písanie esejí (Diana Ganzarčíková)", "Ryba je kámoš, ne žrádlo! Aneb potřebujeme dnes jíst maso? A jak moc? (Irena Kotikova)", "JAK NA PROKRASTINACI VĚDECKY (Klára Englertová)", "žádného"))
names(data)[101] <- "wspatek1vyber"
# LimeSurvey Field type: A
data[, 102] <- as.character(data[, 102])
attributes(data)$variable.labels[102] <- "[Jiné] Kterého individuálního (ne týmového) workshopu ses zúčastnil/a v pátek odpoledne od 14:30?"
names(data)[102] <- "wspatek1vyber_other"
# LimeSurvey Field type: F
data[, 103] <- as.numeric(data[, 103])
attributes(data)$variable.labels[103] <- "Jak bys ohodnotil/a workshop {if(!is_empty(wspatek1vyber_other),wspatek1vyber_other,wspatek1vyber.shown)}?"
names(data)[103] <- "wspatek1hodnoceni"
# LimeSurvey Field type: F
data[, 104] <- as.numeric(data[, 104])
attributes(data)$variable.labels[104] <- "Kterého individuálního (ne týmového) workshopu ses zúčastnil/a v sobotu odpoledne?"
data[, 104] <- factor(data[, 104], levels=c(1,2,3,4,5,6,7,8,9,10,11),labels=c("Transformácia čierneho stromu (Dominika Dudášová)", "Machine Learning (Strojové učení) (Jon + Ondra)", "Média a my (Lenka Pavelková)", "Jak zlepšit svět? Principy efektivního altruismu (Aleš Flídr)", "Extrémizmus náš každodenný (Nikola Gajdošová)", "Fyzioterapia (Klaudia Michalčinová)", "Evropská unie a Islámský stát v kostce  (Alexandra Trochtova)", "Feminizmus v 21. století (Irena Kotikova)", "Základy argumentácie (Jakub Kobela)", "Fotografická postprodukce (Vojta Indráček)", "žádného"))
names(data)[104] <- "wssobota1vyber"
# LimeSurvey Field type: A
data[, 105] <- as.character(data[, 105])
attributes(data)$variable.labels[105] <- "[Jiné] Kterého individuálního (ne týmového) workshopu ses zúčastnil/a v sobotu odpoledne?"
names(data)[105] <- "wssobota1vyber_other"
# LimeSurvey Field type: F
data[, 106] <- as.numeric(data[, 106])
attributes(data)$variable.labels[106] <- "Jak bys ohodnotil/a workshop {if(!is_empty(wssobota1vyber_other),wssobota1vyber_other,wssobota1vyber.shown)}?"
names(data)[106] <- "wssobota1hodnoceni"
# LimeSurvey Field type: F
data[, 107] <- as.numeric(data[, 107])
attributes(data)$variable.labels[107] <- "Kterých dalších workshopů ses zúčastnil/a kdykoli po dobu Discoveru?"
data[, 107] <- factor(data[, 107], levels=c(1,2,3,4,5,6,7,8),labels=c("Brexit (Alex Trochtová)", "Studium v Británii (Alex Trochtová)", "Pozorování hvězd (Irenka)", "Chacha + Waltz (Alex S.)", "Studium v Holandsku", "Studium v USA", "Poezie", "žádného"))
names(data)[107] <- "wsdalsi1vyber"
# LimeSurvey Field type: A
data[, 108] <- as.character(data[, 108])
attributes(data)$variable.labels[108] <- "[Jiné] Kterých dalších workshopů ses zúčastnil/a kdykoli po dobu Discoveru?"
names(data)[108] <- "wsdalsi1vyber_other"
# LimeSurvey Field type: F
data[, 109] <- as.numeric(data[, 109])
attributes(data)$variable.labels[109] <- "Jak bys ohodnotil/a workshop {if(!is_empty(wsdalsi1vyber_other),wsdalsi1vyber_other,wsdalsi1vyber.shown)}?"
names(data)[109] <- "wsdalsi1hodnoceni"
# LimeSurvey Field type: F
data[, 110] <- as.numeric(data[, 110])
attributes(data)$variable.labels[110] <- "Kterých dalších workshopů ses zúčastnil/a kdykoli po dobu Discoveru?"
data[, 110] <- factor(data[, 110], levels=c(1,2,3,4,5,6,7,8),labels=c("Brexit (Alex Trochtová)", "Studium v Británii (Alex Trochtová)", "Pozorování hvězd (Irenka)", "Chacha + Waltz (Alex S.)", "Studium v Holandsku", "Studium v USA", "Poezie", "žádného"))
names(data)[110] <- "wsdalsi2vyber"
# LimeSurvey Field type: A
data[, 111] <- as.character(data[, 111])
attributes(data)$variable.labels[111] <- "[Jiné] Kterých dalších workshopů ses zúčastnil/a kdykoli po dobu Discoveru?"
names(data)[111] <- "wsdalsi2vyber_other"
# LimeSurvey Field type: F
data[, 112] <- as.numeric(data[, 112])
attributes(data)$variable.labels[112] <- "Jak bys ohodnotil/a workshop {if(!is_empty(wsdalsi2vyber_other),wsdalsi2vyber_other,wsdalsi2vyber.shown)}?"
names(data)[112] <- "wsdalsi2hodnoceni"
# LimeSurvey Field type: F
data[, 113] <- as.numeric(data[, 113])
attributes(data)$variable.labels[113] <- "Kterých dalších workshopů ses zúčastnil/a kdykoli po dobu Discoveru?"
data[, 113] <- factor(data[, 113], levels=c(1,2,3,4,5,6,7,8),labels=c("Brexit (Alex Trochtová)", "Studium v Británii (Alex Trochtová)", "Pozorování hvězd (Irenka)", "Chacha + Waltz (Alex S.)", "Studium v Holandsku", "Studium v USA", "Poezie", "žádného"))
names(data)[113] <- "wsdalsi3vyber"
# LimeSurvey Field type: A
data[, 114] <- as.character(data[, 114])
attributes(data)$variable.labels[114] <- "[Jiné] Kterých dalších workshopů ses zúčastnil/a kdykoli po dobu Discoveru?"
names(data)[114] <- "wsdalsi3vyber_other"
# LimeSurvey Field type: F
data[, 115] <- as.numeric(data[, 115])
attributes(data)$variable.labels[115] <- "Jak bys ohodnotil/a workshop {if(!is_empty(wsdalsi3vyber_other),wsdalsi3vyber_other,wsdalsi3vyber.shown)}?"
names(data)[115] <- "wsdalsi3hodnoceni"
# LimeSurvey Field type: F
data[, 116] <- as.numeric(data[, 116])
attributes(data)$variable.labels[116] <- "Měli bychom nějak upravit nabídku individuálních workshopů?"
data[, 116] <- factor(data[, 116], levels=c(1,2),labels=c("Ano", "Ne"))
names(data)[116] <- "wsIndiZmenit"
# LimeSurvey Field type: A
data[, 117] <- as.character(data[, 117])
attributes(data)$variable.labels[117] <- "Jak?"
names(data)[117] <- "wsIndiZmenitJak"
# LimeSurvey Field type: A
data[, 118] <- as.character(data[, 118])
attributes(data)$variable.labels[118] <- "Jsi z Česka nebo ze Slovenska?"
data[, 118] <- factor(data[, 118], levels=c("cz","sk"),labels=c("z Česka", "ze Slovenska"))
names(data)[118] <- "CRorSK"
# LimeSurvey Field type: F
data[, 119] <- as.numeric(data[, 119])
attributes(data)$variable.labels[119] <- "Kolik je ti let?"
names(data)[119] <- "vek"
# LimeSurvey Field type: F
data[, 120] <- as.numeric(data[, 120])
attributes(data)$variable.labels[120] <- "Pohlaví"
data[, 120] <- factor(data[, 120], levels=c(1,2),labels=c("Žena", "Muž"))
names(data)[120] <- "pohlavi"
# LimeSurvey Field type: F
data[, 121] <- as.numeric(data[, 121])
attributes(data)$variable.labels[121] <- "V kterém roce budeš maturovat / jsi maturoval/a?"
names(data)[121] <- "rocnik"
# LimeSurvey Field type: A
data[, 122] <- as.character(data[, 122])
attributes(data)$variable.labels[122] <- "[20 eur] Mohl/a by ses zúčastnit, kdyby byl účastnický poplatek vyšší o..."
data[, 122] <- factor(data[, 122], levels=c("A1","A2","A3","A4","A5"),labels=c("Určitě ano", "Spíše ano", "Spíše ne", "Určitě ne", "Nevím"))
names(data)[122] <- "poplatek_20eur"
# LimeSurvey Field type: A
data[, 123] <- as.character(data[, 123])
attributes(data)$variable.labels[123] <- "[40 eur] Mohl/a by ses zúčastnit, kdyby byl účastnický poplatek vyšší o..."
data[, 123] <- factor(data[, 123], levels=c("A1","A2","A3","A4","A5"),labels=c("Určitě ano", "Spíše ano", "Spíše ne", "Určitě ne", "Nevím"))
names(data)[123] <- "poplatek_40eur"
# LimeSurvey Field type: A
data[, 124] <- as.character(data[, 124])
attributes(data)$variable.labels[124] <- "[60 eur] Mohl/a by ses zúčastnit, kdyby byl účastnický poplatek vyšší o..."
data[, 124] <- factor(data[, 124], levels=c("A1","A2","A3","A4","A5"),labels=c("Určitě ano", "Spíše ano", "Spíše ne", "Určitě ne", "Nevím"))
names(data)[124] <- "poplatek_60eur"
# LimeSurvey Field type: A
data[, 125] <- as.character(data[, 125])
attributes(data)$variable.labels[125] <- "[100 eur] Mohl/a by ses zúčastnit, kdyby byl účastnický poplatek vyšší o..."
data[, 125] <- factor(data[, 125], levels=c("A1","A2","A3","A4","A5"),labels=c("Určitě ano", "Spíše ano", "Spíše ne", "Určitě ne", "Nevím"))
names(data)[125] <- "poplatek_100eur"
# LimeSurvey Field type: F
data[, 126] <- as.numeric(data[, 126])
attributes(data)$variable.labels[126] <- "Jsi na Discoveru poprvé?"
data[, 126] <- factor(data[, 126], levels=c(1,2),labels=c("Ano", "Ne"))
names(data)[126] <- "poprve"
# LimeSurvey Field type: F
data[, 127] <- as.numeric(data[, 127])
attributes(data)$variable.labels[127] <- "[2015] Kterých ročníků ses zúčastnila/a?"
data[, 127] <- factor(data[, 127], levels=c(1,0),labels=c("Ano", "Nevybráno"))
names(data)[127] <- "minulerocniky_2015"
# LimeSurvey Field type: F
data[, 128] <- as.numeric(data[, 128])
attributes(data)$variable.labels[128] <- "[2014] Kterých ročníků ses zúčastnila/a?"
data[, 128] <- factor(data[, 128], levels=c(1,0),labels=c("Ano", "Nevybráno"))
names(data)[128] <- "minulerocniky_2014"
# LimeSurvey Field type: F
data[, 129] <- as.numeric(data[, 129])
attributes(data)$variable.labels[129] <- "[2013] Kterých ročníků ses zúčastnila/a?"
data[, 129] <- factor(data[, 129], levels=c(1,0),labels=c("Ano", "Nevybráno"))
names(data)[129] <- "minulerocniky_2013"
# LimeSurvey Field type: F
data[, 130] <- as.numeric(data[, 130])
attributes(data)$variable.labels[130] <- "[2012] Kterých ročníků ses zúčastnila/a?"
data[, 130] <- factor(data[, 130], levels=c(1,0),labels=c("Ano", "Nevybráno"))
names(data)[130] <- "minulerocniky_2012"
# LimeSurvey Field type: A
data[, 131] <- as.character(data[, 131])
attributes(data)$variable.labels[131] <- "Pokud jsi byl/a na předchozích ročnících, co se zlepšilo nebo zhoršilo?"
names(data)[131] <- "rocnikysrovnani"
# LimeSurvey Field type: F
data[, 132] <- as.numeric(data[, 132])
attributes(data)$variable.labels[132] <- "Chtěl/a by ses v budoucnu zapojit do přípravy nebo organizace Discover?"
data[, 132] <- factor(data[, 132], levels=c(1,2),labels=c("Ano", "Ne"))
names(data)[132] <- "zapojeni"
# LimeSurvey Field type: F
data[, 133] <- as.numeric(data[, 133])
attributes(data)$variable.labels[133] <- "[Z médií (prosím uveď názvy)] Odkud se dozvídáš o zajímavých akcích a aktivitách? (např. o koncertech, o soutěžích, o letních akcích)"
data[, 133] <- factor(data[, 133], levels=c(1,0),labels=c("Ano", "Nevybráno"))
names(data)[133] <- "marketing_SQ001"
# LimeSurvey Field type: A
data[, 134] <- as.character(data[, 134])
attributes(data)$variable.labels[134] <- "[Komentář] Odkud se dozvídáš o zajímavých akcích a aktivitách? (např. o koncertech, o soutěžích, o letních akcích)"
names(data)[134] <- "marketing_SQ001comment"
# LimeSurvey Field type: F
data[, 135] <- as.numeric(data[, 135])
attributes(data)$variable.labels[135] <- "[Ze sociálních sítí (prosím uveď názvy)] Odkud se dozvídáš o zajímavých akcích a aktivitách? (např. o koncertech, o soutěžích, o letních akcích)"
data[, 135] <- factor(data[, 135], levels=c(1,0),labels=c("Ano", "Nevybráno"))
names(data)[135] <- "marketing_SQ002"
# LimeSurvey Field type: A
data[, 136] <- as.character(data[, 136])
attributes(data)$variable.labels[136] <- "[Komentář] Odkud se dozvídáš o zajímavých akcích a aktivitách? (např. o koncertech, o soutěžích, o letních akcích)"
names(data)[136] <- "marketing_SQ002comment"
# LimeSurvey Field type: F
data[, 137] <- as.numeric(data[, 137])
attributes(data)$variable.labels[137] <- "[Odjinud z internetu (prosím uveď názvy)] Odkud se dozvídáš o zajímavých akcích a aktivitách? (např. o koncertech, o soutěžích, o letních akcích)"
data[, 137] <- factor(data[, 137], levels=c(1,0),labels=c("Ano", "Nevybráno"))
names(data)[137] <- "marketing_SQ003"
# LimeSurvey Field type: A
data[, 138] <- as.character(data[, 138])
attributes(data)$variable.labels[138] <- "[Komentář] Odkud se dozvídáš o zajímavých akcích a aktivitách? (např. o koncertech, o soutěžích, o letních akcích)"
names(data)[138] <- "marketing_SQ003comment"
# LimeSurvey Field type: F
data[, 139] <- as.numeric(data[, 139])
attributes(data)$variable.labels[139] <- "[Od školy/učitelů] Odkud se dozvídáš o zajímavých akcích a aktivitách? (např. o koncertech, o soutěžích, o letních akcích)"
data[, 139] <- factor(data[, 139], levels=c(1,0),labels=c("Ano", "Nevybráno"))
names(data)[139] <- "marketing_SQ004"
# LimeSurvey Field type: A
data[, 140] <- as.character(data[, 140])
attributes(data)$variable.labels[140] <- "[Komentář] Odkud se dozvídáš o zajímavých akcích a aktivitách? (např. o koncertech, o soutěžích, o letních akcích)"
names(data)[140] <- "marketing_SQ004comment"
# LimeSurvey Field type: F
data[, 141] <- as.numeric(data[, 141])
attributes(data)$variable.labels[141] <- "[Od kamarádů] Odkud se dozvídáš o zajímavých akcích a aktivitách? (např. o koncertech, o soutěžích, o letních akcích)"
data[, 141] <- factor(data[, 141], levels=c(1,0),labels=c("Ano", "Nevybráno"))
names(data)[141] <- "marketing_SQ005"
# LimeSurvey Field type: A
data[, 142] <- as.character(data[, 142])
attributes(data)$variable.labels[142] <- "[Komentář] Odkud se dozvídáš o zajímavých akcích a aktivitách? (např. o koncertech, o soutěžích, o letních akcích)"
names(data)[142] <- "marketing_SQ005comment"
# LimeSurvey Field type: A
data[, 143] <- as.character(data[, 143])
attributes(data)$variable.labels[143] <- "[Jiné] Odkud se dozvídáš o zajímavých akcích a aktivitách? (např. o koncertech, o soutěžích, o letních akcích)"
names(data)[143] <- "marketing_other"
# LimeSurvey Field type: A
data[, 144] <- as.character(data[, 144])
attributes(data)$variable.labels[144] <- "[Další komentář] Odkud se dozvídáš o zajímavých akcích a aktivitách? (např. o koncertech, o soutěžích, o letních akcích)"
names(data)[144] <- "marketing_othercomment"
# LimeSurvey Field type: A
data[, 145] <- as.character(data[, 145])
attributes(data)$variable.labels[145] <- "Ovlivnil Discover tvoje rozhodování o vysokoškolském studiu?"
data[, 145] <- factor(data[, 145], levels=c("A1","A2","A3","A4","A5"),labels=c("Určitě ano", "Spíše ano", "Spíše ne", "Určitě ne", "Nevím"))
names(data)[145] <- "ovlivnilaVS"
# LimeSurvey Field type: A
data[, 146] <- as.character(data[, 146])
attributes(data)$variable.labels[146] <- "Kam se plánuješ hlásit na vysokou školu?"
data[, 146] <- factor(data[, 146], levels=c("sk","cz","uk","us"),labels=c("na Slovensko", "do Česka", "do Británie", "do Ameriky"))
names(data)[146] <- "kamnavs"
# LimeSurvey Field type: A
data[, 147] <- as.character(data[, 147])
attributes(data)$variable.labels[147] <- "[Jiné] Kam se plánuješ hlásit na vysokou školu?"
names(data)[147] <- "kamnavs_other"
# LimeSurvey Field type: A
data[, 148] <- as.character(data[, 148])
attributes(data)$variable.labels[148] <- "Pokud máš další poznámky k čemukoli, napiš je sem."
names(data)[148] <- "coseneveslo"
# LimeSurvey Field type: 
data[, 149] <- as.character(data[, 149])
attributes(data)$variable.labels[149] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 150] <- as.character(data[, 150])
attributes(data)$variable.labels[150] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 151] <- as.character(data[, 151])
attributes(data)$variable.labels[151] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 152] <- as.character(data[, 152])
attributes(data)$variable.labels[152] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 153] <- as.character(data[, 153])
attributes(data)$variable.labels[153] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 154] <- as.character(data[, 154])
attributes(data)$variable.labels[154] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 155] <- as.character(data[, 155])
attributes(data)$variable.labels[155] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 156] <- as.character(data[, 156])
attributes(data)$variable.labels[156] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 157] <- as.character(data[, 157])
attributes(data)$variable.labels[157] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 158] <- as.character(data[, 158])
attributes(data)$variable.labels[158] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 159] <- as.character(data[, 159])
attributes(data)$variable.labels[159] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 160] <- as.character(data[, 160])
attributes(data)$variable.labels[160] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 161] <- as.character(data[, 161])
attributes(data)$variable.labels[161] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 162] <- as.character(data[, 162])
attributes(data)$variable.labels[162] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 163] <- as.character(data[, 163])
attributes(data)$variable.labels[163] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 164] <- as.character(data[, 164])
attributes(data)$variable.labels[164] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 165] <- as.character(data[, 165])
attributes(data)$variable.labels[165] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 166] <- as.character(data[, 166])
attributes(data)$variable.labels[166] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 167] <- as.character(data[, 167])
attributes(data)$variable.labels[167] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 168] <- as.character(data[, 168])
attributes(data)$variable.labels[168] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 169] <- as.character(data[, 169])
attributes(data)$variable.labels[169] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 170] <- as.character(data[, 170])
attributes(data)$variable.labels[170] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 171] <- as.character(data[, 171])
attributes(data)$variable.labels[171] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 172] <- as.character(data[, 172])
attributes(data)$variable.labels[172] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 173] <- as.character(data[, 173])
attributes(data)$variable.labels[173] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 174] <- as.character(data[, 174])
attributes(data)$variable.labels[174] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 175] <- as.character(data[, 175])
attributes(data)$variable.labels[175] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 176] <- as.character(data[, 176])
attributes(data)$variable.labels[176] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 177] <- as.character(data[, 177])
attributes(data)$variable.labels[177] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 178] <- as.character(data[, 178])
attributes(data)$variable.labels[178] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 179] <- as.character(data[, 179])
attributes(data)$variable.labels[179] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 180] <- as.character(data[, 180])
attributes(data)$variable.labels[180] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 181] <- as.character(data[, 181])
attributes(data)$variable.labels[181] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 182] <- as.character(data[, 182])
attributes(data)$variable.labels[182] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 183] <- as.character(data[, 183])
attributes(data)$variable.labels[183] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 184] <- as.character(data[, 184])
attributes(data)$variable.labels[184] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 185] <- as.character(data[, 185])
attributes(data)$variable.labels[185] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 186] <- as.character(data[, 186])
attributes(data)$variable.labels[186] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 187] <- as.character(data[, 187])
attributes(data)$variable.labels[187] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 188] <- as.character(data[, 188])
attributes(data)$variable.labels[188] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 189] <- as.character(data[, 189])
attributes(data)$variable.labels[189] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 190] <- as.character(data[, 190])
attributes(data)$variable.labels[190] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 191] <- as.character(data[, 191])
attributes(data)$variable.labels[191] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 192] <- as.character(data[, 192])
attributes(data)$variable.labels[192] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 193] <- as.character(data[, 193])
attributes(data)$variable.labels[193] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 194] <- as.character(data[, 194])
attributes(data)$variable.labels[194] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 195] <- as.character(data[, 195])
attributes(data)$variable.labels[195] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 196] <- as.character(data[, 196])
attributes(data)$variable.labels[196] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 197] <- as.character(data[, 197])
attributes(data)$variable.labels[197] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 198] <- as.character(data[, 198])
attributes(data)$variable.labels[198] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 199] <- as.character(data[, 199])
attributes(data)$variable.labels[199] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 200] <- as.character(data[, 200])
attributes(data)$variable.labels[200] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 201] <- as.character(data[, 201])
attributes(data)$variable.labels[201] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 202] <- as.character(data[, 202])
attributes(data)$variable.labels[202] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 203] <- as.character(data[, 203])
attributes(data)$variable.labels[203] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 204] <- as.character(data[, 204])
attributes(data)$variable.labels[204] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 205] <- as.character(data[, 205])
attributes(data)$variable.labels[205] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 206] <- as.character(data[, 206])
attributes(data)$variable.labels[206] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 207] <- as.character(data[, 207])
attributes(data)$variable.labels[207] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 208] <- as.character(data[, 208])
attributes(data)$variable.labels[208] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 209] <- as.character(data[, 209])
attributes(data)$variable.labels[209] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 210] <- as.character(data[, 210])
attributes(data)$variable.labels[210] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 211] <- as.character(data[, 211])
attributes(data)$variable.labels[211] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 212] <- as.character(data[, 212])
attributes(data)$variable.labels[212] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 213] <- as.character(data[, 213])
attributes(data)$variable.labels[213] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 214] <- as.character(data[, 214])
attributes(data)$variable.labels[214] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 215] <- as.character(data[, 215])
attributes(data)$variable.labels[215] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 216] <- as.character(data[, 216])
attributes(data)$variable.labels[216] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 217] <- as.character(data[, 217])
attributes(data)$variable.labels[217] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 218] <- as.character(data[, 218])
attributes(data)$variable.labels[218] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 219] <- as.character(data[, 219])
attributes(data)$variable.labels[219] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 220] <- as.character(data[, 220])
attributes(data)$variable.labels[220] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 221] <- as.character(data[, 221])
attributes(data)$variable.labels[221] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 222] <- as.character(data[, 222])
attributes(data)$variable.labels[222] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 223] <- as.character(data[, 223])
attributes(data)$variable.labels[223] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 224] <- as.character(data[, 224])
attributes(data)$variable.labels[224] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 225] <- as.character(data[, 225])
attributes(data)$variable.labels[225] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 226] <- as.character(data[, 226])
attributes(data)$variable.labels[226] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 227] <- as.character(data[, 227])
attributes(data)$variable.labels[227] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 228] <- as.character(data[, 228])
attributes(data)$variable.labels[228] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 229] <- as.character(data[, 229])
attributes(data)$variable.labels[229] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 230] <- as.character(data[, 230])
attributes(data)$variable.labels[230] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 231] <- as.character(data[, 231])
attributes(data)$variable.labels[231] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 232] <- as.character(data[, 232])
attributes(data)$variable.labels[232] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 233] <- as.character(data[, 233])
attributes(data)$variable.labels[233] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 234] <- as.character(data[, 234])
attributes(data)$variable.labels[234] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 235] <- as.character(data[, 235])
attributes(data)$variable.labels[235] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 236] <- as.character(data[, 236])
attributes(data)$variable.labels[236] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 237] <- as.character(data[, 237])
attributes(data)$variable.labels[237] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 238] <- as.character(data[, 238])
attributes(data)$variable.labels[238] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 239] <- as.character(data[, 239])
attributes(data)$variable.labels[239] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 240] <- as.character(data[, 240])
attributes(data)$variable.labels[240] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 241] <- as.character(data[, 241])
attributes(data)$variable.labels[241] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 242] <- as.character(data[, 242])
attributes(data)$variable.labels[242] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 243] <- as.character(data[, 243])
attributes(data)$variable.labels[243] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 244] <- as.character(data[, 244])
attributes(data)$variable.labels[244] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 245] <- as.character(data[, 245])
attributes(data)$variable.labels[245] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 246] <- as.character(data[, 246])
attributes(data)$variable.labels[246] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 247] <- as.character(data[, 247])
attributes(data)$variable.labels[247] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 248] <- as.character(data[, 248])
attributes(data)$variable.labels[248] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 249] <- as.character(data[, 249])
attributes(data)$variable.labels[249] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 250] <- as.character(data[, 250])
attributes(data)$variable.labels[250] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 251] <- as.character(data[, 251])
attributes(data)$variable.labels[251] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 252] <- as.character(data[, 252])
attributes(data)$variable.labels[252] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 253] <- as.character(data[, 253])
attributes(data)$variable.labels[253] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 254] <- as.character(data[, 254])
attributes(data)$variable.labels[254] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 255] <- as.character(data[, 255])
attributes(data)$variable.labels[255] <- ""
#sql_name not set
