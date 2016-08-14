data <- read.csv("survey_215512_R_data_file.csv", quote = "'\"", na.strings=c("", "\"\""), stringsAsFactors=FALSE)


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
attributes(data)$variable.labels[7] <- "Has your participation in Discover influenced your future plans?"
data[, 7] <- factor(data[, 7], levels=c(1,2),labels=c("Yes", "No"))
names(data)[7] <- "ovlivlilaucastplany"
# LimeSurvey Field type: A
data[, 8] <- as.character(data[, 8])
attributes(data)$variable.labels[8] <- "Why not?"
names(data)[8] <- "ovlivnilaucastProcNe"
# LimeSurvey Field type: A
data[, 9] <- as.character(data[, 9])
attributes(data)$variable.labels[9] <- "In what way(s)?"
names(data)[9] <- "ovlivnilaucastVCem"
# LimeSurvey Field type: F
data[, 10] <- as.numeric(data[, 10])
attributes(data)$variable.labels[10] <- "Would you recommend Discover to a friend?"
data[, 10] <- factor(data[, 10], levels=c(1,2),labels=c("Yes", "No"))
names(data)[10] <- "doporucilkamaradovi"
# LimeSurvey Field type: A
data[, 11] <- as.character(data[, 11])
attributes(data)$variable.labels[11] <- "Why?"
names(data)[11] <- "doporucilProc"
# LimeSurvey Field type: A
data[, 12] <- as.character(data[, 12])
attributes(data)$variable.labels[12] <- "Why not?"
names(data)[12] <- "doporucilProcNe"
# LimeSurvey Field type: A
data[, 13] <- as.character(data[, 13])
attributes(data)$variable.labels[13] <- "Did you feel welcomed and included in the international environment at Discover?"
data[, 13] <- factor(data[, 13], levels=c("A1","A2","A3","A6","A5"),labels=c("I felt included all the time", "I felt included most of the time", "Most of the time I didn\'t feel included", "I felt completely excluded", "Don\'t know"))
names(data)[13] <- "citilsesMezinar"
# LimeSurvey Field type: A
data[, 14] <- as.character(data[, 14])
attributes(data)$variable.labels[14] <- "Any comments on how we could improve this?"
names(data)[14] <- "interFeelImprove"
# LimeSurvey Field type: A
data[, 15] <- as.character(data[, 15])
attributes(data)$variable.labels[15] <- "Think about the five people or so with whom you interacted the most outside your courses. Which category do most of them fall into?"
data[, 15] <- factor(data[, 15], levels=c("A1","A2","A3","A5"),labels=c("They are mostly Czechs and Slovaks", "They are from my geographical neigbourhood (if you are not Czech/Slovak)", "They are a mix", "They are people from countries other than mine"))
names(data)[15] <- "mezinarKomunik"
# LimeSurvey Field type: A
data[, 16] <- as.character(data[, 16])
attributes(data)$variable.labels[16] <- "[Other] Think about the five people or so with whom you interacted the most outside your courses. Which category do most of them fall into?"
names(data)[16] <- "mezinarKomunik_other"
# LimeSurvey Field type: A
data[, 17] <- as.character(data[, 17])
attributes(data)$variable.labels[17] <- "If you encountered any problems with understanding others\' English at Discover or making yourself understood, tell us about them and anything you think we could do to make communication in English easier."
names(data)[17] <- "mezinarEnglish"
# LimeSurvey Field type: A
data[, 18] <- as.character(data[, 18])
attributes(data)$variable.labels[18] <- "Why do you think we organise Discover Summer Academy?"
names(data)[18] <- "proctodelame"
# LimeSurvey Field type: A
data[, 19] <- as.character(data[, 19])
attributes(data)$variable.labels[19] <- "What was the most important factor when deciding which session of Discover to apply for?"
data[, 19] <- factor(data[, 19], levels=c("forei","engl","meetf","lekto","kurz","cas","58406","kamar"),labels=c("I don\'t speak Czech or Slovak so I had no choice", "I wanted to practice my English", "I wanted to meet people from other countries", "Participation of particular tutors", "Availability of particular courses", "My availability during the summer", "Participation of Discover alumni from previous sessions", "Participation of friends from school or elsewhere"))
names(data)[19] <- "jakvybirasturnus"
# LimeSurvey Field type: A
data[, 20] <- as.character(data[, 20])
attributes(data)$variable.labels[20] <- "[Other] What was the most important factor when deciding which session of Discover to apply for?"
names(data)[20] <- "jakvybirasturnus_other"
# LimeSurvey Field type: A
data[, 21] <- as.character(data[, 21])
attributes(data)$variable.labels[21] <- "Before Discover started, did we provide you all the information you needed to prepare and get here? (E.g. travel arrangements, directions, what to pack etc.)"
data[, 21] <- factor(data[, 21], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly agree", "Agree", "Disagree", "Strongly disagree", "Don\'t know"))
names(data)[21] <- "komunikacepred"
# LimeSurvey Field type: A
data[, 22] <- as.character(data[, 22])
attributes(data)$variable.labels[22] <- "What could we do better about how we communicate before Discover?"
names(data)[22] <- "komunikacecozlepsit"
# LimeSurvey Field type: A
data[, 23] <- as.character(data[, 23])
attributes(data)$variable.labels[23] <- "Byla užitečná brožurka s popisy lektorů? Jak bychom ji mohli zlepšit?"
data[, 23] <- factor(data[, 23], levels=c("A1","A2","A3","A4","A5"),labels=c("Určitě ano", "Spíše ano", "Spíše ne", "Určitě ne", "Nevím"))
names(data)[23] <- "brozurka"
# LimeSurvey Field type: F
data[, 24] <- as.numeric(data[, 24])
attributes(data)$variable.labels[24] <- "[Comment] Byla užitečná brožurka s popisy lektorů? Jak bychom ji mohli zlepšit?"
names(data)[24] <- "brozurka_comment"
# LimeSurvey Field type: A
data[, 25] <- as.character(data[, 25])
attributes(data)$variable.labels[25] <- "Was the presence of the psychologist beneficial?"
data[, 25] <- factor(data[, 25], levels=c("A1","A2","A3","A4","A5"),labels=c("Určitě ano", "Spíše ano", "Spíše ne", "Určitě ne", "Nevím"))
names(data)[25] <- "rolepsychologa"
# LimeSurvey Field type: A
data[, 26] <- as.character(data[, 26])
attributes(data)$variable.labels[26] <- "In what way(s)?"
names(data)[26] <- "rolepsychVcem"
# LimeSurvey Field type: A
data[, 27] <- as.character(data[, 27])
attributes(data)$variable.labels[27] <- "How did you like The Night behind the Curtain? What did you take away from it?"
names(data)[27] <- "zaoponou"
# LimeSurvey Field type: F
data[, 28] <- as.numeric(data[, 28])
attributes(data)$variable.labels[28] <- "[Icebreakers (Sunday)] How did you like the free-time activities? (Grade them on a scale from 1 (the best) to 5 (the worst)"
names(data)[28] <- "volnocasovyProgram_ne"
# LimeSurvey Field type: F
data[, 29] <- as.numeric(data[, 29])
attributes(data)$variable.labels[29] <- "[Fort Svaty Jan (Monday)] How did you like the free-time activities? (Grade them on a scale from 1 (the best) to 5 (the worst)"
names(data)[29] <- "volnocasovyProgram_po"
# LimeSurvey Field type: F
data[, 30] <- as.numeric(data[, 30])
attributes(data)$variable.labels[30] <- "[Behind the Curtain (Tuesday)] How did you like the free-time activities? (Grade them on a scale from 1 (the best) to 5 (the worst)"
names(data)[30] <- "volnocasovyProgram_ut"
# LimeSurvey Field type: F
data[, 31] <- as.numeric(data[, 31])
attributes(data)$variable.labels[31] <- "[Catapult (Wednesday)] How did you like the free-time activities? (Grade them on a scale from 1 (the best) to 5 (the worst)"
names(data)[31] <- "volnocasovyProgram_st"
# LimeSurvey Field type: F
data[, 32] <- as.numeric(data[, 32])
attributes(data)$variable.labels[32] <- "[Trip (Thursday)] How did you like the free-time activities? (Grade them on a scale from 1 (the best) to 5 (the worst)"
names(data)[32] <- "volnocasovyProgram_ct"
# LimeSurvey Field type: F
data[, 33] <- as.numeric(data[, 33])
attributes(data)$variable.labels[33] <- "[Chapel Quiz (Friday)] How did you like the free-time activities? (Grade them on a scale from 1 (the best) to 5 (the worst)"
names(data)[33] <- "volnocasovyProgram_pa"
# LimeSurvey Field type: A
data[, 34] <- as.character(data[, 34])
attributes(data)$variable.labels[34] <- "Which free-time activity was your favourite and why? (That includes everything except courses and workshops)"
names(data)[34] <- "volnycasnejlepsi"
# LimeSurvey Field type: A
data[, 35] <- as.character(data[, 35])
attributes(data)$variable.labels[35] <- "And what could we change about the free-time activities? (E.g. do you have any tips for adding or replacing activities?)"
names(data)[35] <- "volnycascozmenit"
# LimeSurvey Field type: F
data[, 36] <- as.numeric(data[, 36])
attributes(data)$variable.labels[36] <- "Should the programme of the Summer Academy be changed? For example, should we change the timing of the activities, or change or take away any activities?"
data[, 36] <- factor(data[, 36], levels=c(1,2),labels=c("Yes", "No"))
names(data)[36] <- "menitprogram"
# LimeSurvey Field type: A
data[, 37] <- as.character(data[, 37])
attributes(data)$variable.labels[37] <- "Why? In what way?"
names(data)[37] <- "meniprogramJak"
# LimeSurvey Field type: A
data[, 38] <- as.character(data[, 38])
attributes(data)$variable.labels[38] <- "Was the balance between learning (courses and workshops) and non-learning activities appropriate?"
data[, 38] <- factor(data[, 38], levels=c("hvicf","ok","hvicv"),labels=c("There should be more non-learning activities", "The balance was right", "There should be more learning"))
names(data)[38] <- "volnycasvsvyuka"
# LimeSurvey Field type: A
data[, 39] <- as.character(data[, 39])
attributes(data)$variable.labels[39] <- "Do you have any comments about food, accommodation or the location?"
names(data)[39] <- "jidloatd"
# LimeSurvey Field type: A
data[, 40] <- as.character(data[, 40])
attributes(data)$variable.labels[40] <- "Jaká by měla být velikost (počet účastníků, ne délka) letní akademie?"
data[, 40] <- factor(data[, 40], levels=c("uvets","svets","stejn","smens","uvet"),labels=c("Určitě větší", "Spíš větší", "Stejná", "Spíš menší", "Určitě větší"))
names(data)[40] <- "velikost"
# LimeSurvey Field type: A
data[, 41] <- as.character(data[, 41])
attributes(data)$variable.labels[41] <- "What was the most important factor for you when choosing your courses?"
data[, 41] <- factor(data[, 41], levels=c("lekpr","lekzn","vysok","nedos","nezna","vyluc"),labels=c("Profile of the tutor.", "I chose the tutors I know.", "I chose the subjects, which I consider for my university studies.", "I chose topics and subjects which I cannot come across otherwise.", "I chose topics I don\'t know much about.", "I have already taken many of the courses - I choose from the rest."))
names(data)[41] <- "jakvybiraskurzy"
# LimeSurvey Field type: A
data[, 42] <- as.character(data[, 42])
attributes(data)$variable.labels[42] <- "[Other] What was the most important factor for you when choosing your courses?"
names(data)[42] <- "jakvybiraskurzy_other"
# LimeSurvey Field type: A
data[, 43] <- as.character(data[, 43])
attributes(data)$variable.labels[43] <- "Were the courses diverse enough for you to choose from?"
data[, 43] <- factor(data[, 43], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly agree", "Agree", "Disagree", "Strongly disagree", "Don\'t know"))
names(data)[43] <- "nabidkakurzurozmanit"
# LimeSurvey Field type: A
data[, 44] <- as.character(data[, 44])
attributes(data)$variable.labels[44] <- "Which course did you have in the first slot?"
data[, 44] <- factor(data[, 44], levels=c("polph","mater","biol","neuro","art","law","econ"),labels=c("Political philosophy", "Materials science: From atoms to fusion reactors", "Biology and psychology: Sleep and dreams", "Neuroscience: The first look on the most important kilogram of fat in your body", "Fine art: From dots to dragons", "Law in practice", "Economics: Why do we need money & finance?"))
names(data)[44] <- "kurz1ktery"
# LimeSurvey Field type: A
data[, 45] <- as.character(data[, 45])
attributes(data)$variable.labels[45] <- "Which course did you have in the second slot?"
data[, 45] <- factor(data[, 45], levels=c("devel","neuro","law","mach","liter","biol"),labels=c("Development economics: Poverty and human development", "Neuroscience: The first look on the most important kilogram of fat in your body", "Law in practice", "Machine learning", "Literature: In the beginning was the word", "Biology and psychology: Sleep and dreams"))
names(data)[45] <- "kurz2ktery"
# LimeSurvey Field type: A
data[, 46] <- as.character(data[, 46])
attributes(data)$variable.labels[46] <- "Which other courses would you welcome (if any)?"
names(data)[46] <- "kurzyjakedalsi"
# LimeSurvey Field type: F
data[, 47] <- as.numeric(data[, 47])
attributes(data)$variable.labels[47] <- "How do you rate the course overall? Grade it on a scale from 1 (best) to 5 (worst)"
names(data)[47] <- "kurz1hodnoceni"
# LimeSurvey Field type: F
data[, 48] <- as.numeric(data[, 48])
attributes(data)$variable.labels[48] <- "Has the course influenced you in any way?"
data[, 48] <- factor(data[, 48], levels=c(1,2),labels=c("Yes", "No"))
names(data)[48] <- "kurz1ovlivnil"
# LimeSurvey Field type: A
data[, 49] <- as.character(data[, 49])
attributes(data)$variable.labels[49] <- "In what way(s)?"
names(data)[49] <- "kurz1ovlivnilVCem"
# LimeSurvey Field type: A
data[, 50] <- as.character(data[, 50])
attributes(data)$variable.labels[50] <- "Why not?"
names(data)[50] <- "kurz1ovlivnilProcNe"
# LimeSurvey Field type: A
data[, 51] <- as.character(data[, 51])
attributes(data)$variable.labels[51] <- "What did you like most about {INSERTANS:215512X97X1052} and why?"
names(data)[51] <- "kurz1libilo"
# LimeSurvey Field type: A
data[, 52] <- as.character(data[, 52])
attributes(data)$variable.labels[52] <- "What should we change about the course in the future and why? (Content, form, ...? Please refer to a specific lesson or activity if you want to.)."
names(data)[52] <- "kurz1zmenit"
# LimeSurvey Field type: A
data[, 53] <- as.character(data[, 53])
attributes(data)$variable.labels[53] <- "[understand the subject matter in course sessions?] How difficult was it for you to..."
data[, 53] <- factor(data[, 53], levels=c("vlehk","slehk","vhodn","stezk","vtezk","na","nevim"),labels=c("Very easy", "Quite easy", "Just about right", "Quite difficult", "Very difficult", "Not applicable to my course", "Don\'t know"))
names(data)[53] <- "kurz1narocnost_narocmater"
# LimeSurvey Field type: A
data[, 54] <- as.character(data[, 54])
attributes(data)$variable.labels[54] <- "[read course materials assigned before Discover?] How difficult was it for you to..."
data[, 54] <- factor(data[, 54], levels=c("vlehk","slehk","vhodn","stezk","vtezk","na","nevim"),labels=c("Very easy", "Quite easy", "Just about right", "Quite difficult", "Very difficult", "Not applicable to my course", "Don\'t know"))
names(data)[54] <- "kurz1narocnost_narochod"
# LimeSurvey Field type: A
data[, 55] <- as.character(data[, 55])
attributes(data)$variable.labels[55] <- "Did the course include enough activities which allowed you to participate in what was happening in the course sessions?"
data[, 55] <- factor(data[, 55], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly agree", "Agree", "Disagree", "Strongly disagree", "Don\'t know"))
names(data)[55] <- "kurz1zapoj"
# LimeSurvey Field type: A
data[, 56] <- as.character(data[, 56])
attributes(data)$variable.labels[56] <- "[Was the tutor enough of an expert to lead this course?] How do you assess these aspects of the course?"
data[, 56] <- factor(data[, 56], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly agree", "Agree", "Disagree", "Strongly disagree", "Don\'t know"))
names(data)[56] <- "kurz1obsah_lekodbornik"
# LimeSurvey Field type: A
data[, 57] <- as.character(data[, 57])
attributes(data)$variable.labels[57] <- "[Was the tutor well prepared for this course?] How do you assess these aspects of the course?"
data[, 57] <- factor(data[, 57], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly agree", "Agree", "Disagree", "Strongly disagree", "Don\'t know"))
names(data)[57] <- "kurz1obsah_lekpripraveny"
# LimeSurvey Field type: A
data[, 58] <- as.character(data[, 58])
attributes(data)$variable.labels[58] <- "[Were activities included in the course interesting?] How do you assess these aspects of the course?"
data[, 58] <- factor(data[, 58], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly agree", "Agree", "Disagree", "Strongly disagree", "Don\'t know"))
names(data)[58] <- "kurz1obsah_lekpoutave"
# LimeSurvey Field type: A
data[, 59] <- as.character(data[, 59])
attributes(data)$variable.labels[59] <- "If you have any comments regarding the tutor or the way s/he was teaching, please share them here."
names(data)[59] <- "kurz1lektorpoznamky"
# LimeSurvey Field type: F
data[, 60] <- as.numeric(data[, 60])
attributes(data)$variable.labels[60] <- "How do you rate the course overall? Grade it on a scale from 1 (best) to 5 (worst)"
names(data)[60] <- "kurz2hodnoceni"
# LimeSurvey Field type: F
data[, 61] <- as.numeric(data[, 61])
attributes(data)$variable.labels[61] <- "Has the course influenced you in any way?"
data[, 61] <- factor(data[, 61], levels=c(1,2),labels=c("Yes", "No"))
names(data)[61] <- "kurz2ovlivnil"
# LimeSurvey Field type: A
data[, 62] <- as.character(data[, 62])
attributes(data)$variable.labels[62] <- "In what way(s)?"
names(data)[62] <- "kurz2ovlivnilVCem"
# LimeSurvey Field type: A
data[, 63] <- as.character(data[, 63])
attributes(data)$variable.labels[63] <- "Why not?"
names(data)[63] <- "kurz2ovlivnilProcNe"
# LimeSurvey Field type: A
data[, 64] <- as.character(data[, 64])
attributes(data)$variable.labels[64] <- "What did you like most about {INSERTANS:215512X97X1091} and why?"
names(data)[64] <- "kurz2libilo"
# LimeSurvey Field type: A
data[, 65] <- as.character(data[, 65])
attributes(data)$variable.labels[65] <- "What should we change about the course in the future and why? (Content, form, ...? Please refer to a specific lesson or activity if you want to.)."
names(data)[65] <- "kurz2zmenit"
# LimeSurvey Field type: A
data[, 66] <- as.character(data[, 66])
attributes(data)$variable.labels[66] <- "[understand the subject matter in course sessions?] How difficult was it for you to..."
data[, 66] <- factor(data[, 66], levels=c("vlehk","slehk","vhodn","stezk","vtezk","na","nevim"),labels=c("Very easy", "Quite easy", "Just about right", "Quite difficult", "Very difficult", "Not applicable to my course", "Don\'t know"))
names(data)[66] <- "kurz2narocnost_narocmater"
# LimeSurvey Field type: A
data[, 67] <- as.character(data[, 67])
attributes(data)$variable.labels[67] <- "[read course materials assigned before Discover?] How difficult was it for you to..."
data[, 67] <- factor(data[, 67], levels=c("vlehk","slehk","vhodn","stezk","vtezk","na","nevim"),labels=c("Very easy", "Quite easy", "Just about right", "Quite difficult", "Very difficult", "Not applicable to my course", "Don\'t know"))
names(data)[67] <- "kurz2narocnost_narochod"
# LimeSurvey Field type: A
data[, 68] <- as.character(data[, 68])
attributes(data)$variable.labels[68] <- "Did the course include enough activities which allowed you to participate in what was happening in the course sessions?"
data[, 68] <- factor(data[, 68], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly agree", "Agree", "Disagree", "Strongly disagree", "Don\'t know"))
names(data)[68] <- "kurz2zapoj"
# LimeSurvey Field type: A
data[, 69] <- as.character(data[, 69])
attributes(data)$variable.labels[69] <- "[Was the tutor enough of an expert to lead this course?] How do you assess these aspects of the course?"
data[, 69] <- factor(data[, 69], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly agree", "Agree", "Disagree", "Strongly disagree", "Don\'t know"))
names(data)[69] <- "kurz2obsah_lekodbornik"
# LimeSurvey Field type: A
data[, 70] <- as.character(data[, 70])
attributes(data)$variable.labels[70] <- "[Was the tutor well prepared for this course?] How do you assess these aspects of the course?"
data[, 70] <- factor(data[, 70], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly agree", "Agree", "Disagree", "Strongly disagree", "Don\'t know"))
names(data)[70] <- "kurz2obsah_lekpripraveny"
# LimeSurvey Field type: A
data[, 71] <- as.character(data[, 71])
attributes(data)$variable.labels[71] <- "[Were activities included in the course interesting?] How do you assess these aspects of the course?"
data[, 71] <- factor(data[, 71], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly agree", "Agree", "Disagree", "Strongly disagree", "Don\'t know"))
names(data)[71] <- "kurz2obsah_lekpoutave"
# LimeSurvey Field type: A
data[, 72] <- as.character(data[, 72])
attributes(data)$variable.labels[72] <- "If you have any comments regarding the tutor or the way s/he was teaching, please share them here."
names(data)[72] <- "kurz2lektorpoznamky"
# LimeSurvey Field type: A
data[, 73] <- as.character(data[, 73])
attributes(data)$variable.labels[73] <- ""
names(data)[73] <- "polovina"
# LimeSurvey Field type: A
data[, 74] <- as.character(data[, 74])
attributes(data)$variable.labels[74] <- "Did your prefect communicate with you sufficiently? Did he manage to help you when you needed it?"
data[, 74] <- factor(data[, 74], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly agree", "Agree", "Disagree", "Strongly disagree", "Don\'t know"))
names(data)[74] <- "prefektkomunikace"
# LimeSurvey Field type: A
data[, 75] <- as.character(data[, 75])
attributes(data)$variable.labels[75] <- "What should the prefect do better?"
names(data)[75] <- "prefektkomCoZlepsit"
# LimeSurvey Field type: A
data[, 76] <- as.character(data[, 76])
attributes(data)$variable.labels[76] <- "[Misinformation (Monday)] Did you find the topics of the team workshops interesting?"
data[, 76] <- factor(data[, 76], levels=c("A1","A2","A3","A4","A5"),labels=c("Definitely yes", "Rather yes", "Rather no", "Definitely no", "Don\'t know"))
names(data)[76] <- "wsTymoveZajimave_po"
# LimeSurvey Field type: A
data[, 77] <- as.character(data[, 77])
attributes(data)$variable.labels[77] <- "[On relationships (Wednesday)] Did you find the topics of the team workshops interesting?"
data[, 77] <- factor(data[, 77], levels=c("A1","A2","A3","A4","A5"),labels=c("Definitely yes", "Rather yes", "Rather no", "Definitely no", "Don\'t know"))
names(data)[77] <- "wsTymoveZajimave_st"
# LimeSurvey Field type: A
data[, 78] <- as.character(data[, 78])
attributes(data)$variable.labels[78] <- "[Migration (Friday)] Did you find the topics of the team workshops interesting?"
data[, 78] <- factor(data[, 78], levels=c("A1","A2","A3","A4","A5"),labels=c("Definitely yes", "Rather yes", "Rather no", "Definitely no", "Don\'t know"))
names(data)[78] <- "wsTymoveZajimave_pa"
# LimeSurvey Field type: A
data[, 79] <- as.character(data[, 79])
attributes(data)$variable.labels[79] <- "Which topics would be more interesting for you?"
names(data)[79] <- "wsTymoveJineTema"
# LimeSurvey Field type: A
data[, 80] <- as.character(data[, 80])
attributes(data)$variable.labels[80] <- "[Misinformation (Monday)] Did you find the team workshops useful?"
data[, 80] <- factor(data[, 80], levels=c("A1","A2","A3","A4","A5"),labels=c("Very useful", "Somewhat useful", "Not very useful", "Not at all useful", "Don\'t know"))
names(data)[80] <- "wsTymovePrinosne_po"
# LimeSurvey Field type: A
data[, 81] <- as.character(data[, 81])
attributes(data)$variable.labels[81] <- "[On relationships (Wednesday)] Did you find the team workshops useful?"
data[, 81] <- factor(data[, 81], levels=c("A1","A2","A3","A4","A5"),labels=c("Very useful", "Somewhat useful", "Not very useful", "Not at all useful", "Don\'t know"))
names(data)[81] <- "wsTymovePrinosne_st"
# LimeSurvey Field type: A
data[, 82] <- as.character(data[, 82])
attributes(data)$variable.labels[82] <- "[Migration (Friday)] Did you find the team workshops useful?"
data[, 82] <- factor(data[, 82], levels=c("A1","A2","A3","A4","A5"),labels=c("Very useful", "Somewhat useful", "Not very useful", "Not at all useful", "Don\'t know"))
names(data)[82] <- "wsTymovePrinosne_pa"
# LimeSurvey Field type: A
data[, 83] <- as.character(data[, 83])
attributes(data)$variable.labels[83] <- "[--ignore this one--] Did you find the team workshops useful?"
data[, 83] <- factor(data[, 83], levels=c("A1","A2","A3","A4","A5"),labels=c("Very useful", "Somewhat useful", "Not very useful", "Not at all useful", "Don\'t know"))
names(data)[83] <- "wsTymovePrinosne_so"
# LimeSurvey Field type: A
data[, 84] <- as.character(data[, 84])
attributes(data)$variable.labels[84] <- "In what way(s) did you find them useful?"
names(data)[84] <- "wsTymovePrinosProc"
# LimeSurvey Field type: A
data[, 85] <- as.character(data[, 85])
attributes(data)$variable.labels[85] <- "Why were (some of them) not useful?"
names(data)[85] <- "wsTymovePrinosProcNe"
# LimeSurvey Field type: F
data[, 86] <- as.numeric(data[, 86])
attributes(data)$variable.labels[86] <- "Has your view on any of the topics changed thanks to the team workshops?"
data[, 86] <- factor(data[, 86], levels=c(1,2),labels=c("Yes", "No"))
names(data)[86] <- "wsTymovePohled"
# LimeSurvey Field type: A
data[, 87] <- as.character(data[, 87])
attributes(data)$variable.labels[87] <- "On which topic has your view changed and why?"
names(data)[87] <- "wsTymoveZmenaProcAno"
# LimeSurvey Field type: A
data[, 88] <- as.character(data[, 88])
attributes(data)$variable.labels[88] <- "Why not?"
names(data)[88] <- "wsTymoveZmenaProcNe"
# LimeSurvey Field type: A
data[, 89] <- as.character(data[, 89])
attributes(data)$variable.labels[89] <- "Did your prefect manage to lead the team workshops successfully?"
data[, 89] <- factor(data[, 89], levels=c("A1","A2","A3","A4","A5"),labels=c("Definitely yes", "Most of the time", "Most of the time no", "Not at all", "Don\'t know"))
names(data)[89] <- "prefektVedlWS"
# LimeSurvey Field type: A
data[, 90] <- as.character(data[, 90])
attributes(data)$variable.labels[90] <- "What should the prefect do better?"
names(data)[90] <- "prefektVedlWSZlepsit"
# LimeSurvey Field type: F
data[, 91] <- as.numeric(data[, 91])
attributes(data)$variable.labels[91] <- "Should we change anything about the team workshops?"
data[, 91] <- factor(data[, 91], levels=c(1,2),labels=c("Yes", "No"))
names(data)[91] <- "wsTymoveZmenit"
# LimeSurvey Field type: A
data[, 92] <- as.character(data[, 92])
attributes(data)$variable.labels[92] <- "What should be different? Feel free to suggest new topics, too."
names(data)[92] <- "wsTymoveZmenitCo"
# LimeSurvey Field type: A
data[, 93] <- as.character(data[, 93])
attributes(data)$variable.labels[93] <- "Which of the two-part workshops did you choose?"
data[, 93] <- factor(data[, 93], levels=c("drag","socen","un"),labels=c("Dragon\'s Den", "Social Entrepreneurship", "United Nations"))
names(data)[93] <- "twopartWhich"
# LimeSurvey Field type: F
data[, 94] <- as.numeric(data[, 94])
attributes(data)$variable.labels[94] <- "How useful did you find this workshop?"
names(data)[94] <- "twopartHowUseful"
# LimeSurvey Field type: F
data[, 95] <- as.numeric(data[, 95])
attributes(data)$variable.labels[95] <- "Do you feel you had enough time to prepare your project for this workshop?"
data[, 95] <- factor(data[, 95], levels=c(1,2),labels=c("Yes", "No"))
names(data)[95] <- "twopartTime"
# LimeSurvey Field type: F
data[, 96] <- as.numeric(data[, 96])
attributes(data)$variable.labels[96] <- "Should we change the two-part workshop in any way? (E.g. topics, timing, activities...)"
data[, 96] <- factor(data[, 96], levels=c(1,2),labels=c("Yes", "No"))
names(data)[96] <- "twopartChange"
# LimeSurvey Field type: A
data[, 97] <- as.character(data[, 97])
attributes(data)$variable.labels[97] <- "What should we change?"
names(data)[97] <- "twopartChangeWhat"
# LimeSurvey Field type: F
data[, 98] <- as.numeric(data[, 98])
attributes(data)$variable.labels[98] <- "Which of the following individual (not team) workshops did you participate in on Monday afternoon?"
data[, 98] <- factor(data[, 98], levels=c(1,2,3,4,5,6,7),labels=c("Effective altruism (Margherita Philipp)", "Brexit (Zuzana Vikarská)", "Work-life balance (Jan Komarek)", "Design everything: It\'s all about the grids (Nerses Malakjan)", "Basics of Fitness and Nutrition (Josef Hazi)", "Predicting the economy (Jon Šotola)", "none"))
names(data)[98] <- "wspondeli1vyber"
# LimeSurvey Field type: F
data[, 99] <- as.numeric(data[, 99])
attributes(data)$variable.labels[99] <- "[Other] Which of the following individual (not team) workshops did you participate in on Monday afternoon?"
names(data)[99] <- "wspondeli1vyber_other"
# LimeSurvey Field type: F
data[, 100] <- as.numeric(data[, 100])
attributes(data)$variable.labels[100] <- "How would you rate the workshop {if(!is_empty(wspondeli1vyber_other),wspondeli1vyber_other,wspondeli1vyber.shown)}?"
names(data)[100] <- "wspondeli1hodnoceni"
# LimeSurvey Field type: F
data[, 101] <- as.numeric(data[, 101])
attributes(data)$variable.labels[101] <- "Which of the following individual (not team) workshops did you participate in on Tuesday afternoon?"
data[, 101] <- factor(data[, 101], levels=c(1,2,3,4,5,6),labels=c("Joy of learning (Bára Obračajová)", "Why is meat so important? (Kryštof Vosátka)", "Refugee crisis (Marie Hermanova)", "Bad science and how to spot it (Matej Mačák)", "Behavioral Economics (Lara)", "none"))
names(data)[101] <- "wsutery1vyber"
# LimeSurvey Field type: F
data[, 102] <- as.numeric(data[, 102])
attributes(data)$variable.labels[102] <- "[Other] Which of the following individual (not team) workshops did you participate in on Tuesday afternoon?"
names(data)[102] <- "wsutery1vyber_other"
# LimeSurvey Field type: F
data[, 103] <- as.numeric(data[, 103])
attributes(data)$variable.labels[103] <- "How would you rate the workshop {if(!is_empty(wsutery1vyber_other),wsutery1vyber_other,wsutery1vyber.shown)}?"
names(data)[103] <- "wsutery1hodnoceni"
# LimeSurvey Field type: F
data[, 104] <- as.numeric(data[, 104])
attributes(data)$variable.labels[104] <- "Which of the following individual (not team) workshops did you participate in on Wednesday afternoon?"
data[, 104] <- factor(data[, 104], levels=c(1,2,3,4,5,6),labels=c("Serbian culture (Mladenka)", "Kick-starter campaign (Marek Sklenka)", "Dance (Šárka)", "Web design (Tomáš and Daniel)", "Photography (Bella and Klara)", "none"))
names(data)[104] <- "wsstreda1vyber"
# LimeSurvey Field type: A
data[, 105] <- as.character(data[, 105])
attributes(data)$variable.labels[105] <- "[Other] Which of the following individual (not team) workshops did you participate in on Wednesday afternoon?"
names(data)[105] <- "wsstreda1vyber_other"
# LimeSurvey Field type: F
data[, 106] <- as.numeric(data[, 106])
attributes(data)$variable.labels[106] <- "How would you rate the workshop {if(!is_empty(wsstreda1vyber_other),wsstreda1vyber_other,wsstreda1vyber.shown)}?"
names(data)[106] <- "wsstreda1hodnoceni"
# LimeSurvey Field type: F
data[, 107] <- as.numeric(data[, 107])
attributes(data)$variable.labels[107] <- "Did you participate in the individual (not team) workshop on Tuesday evening PM?"
data[, 107] <- factor(data[, 107], levels=c(1,2),labels=c("How (not) to run away from a rhino (Jiří Pasz)", "none"))
names(data)[107] <- "wsutery2vyber"
# LimeSurvey Field type: A
data[, 108] <- as.character(data[, 108])
attributes(data)$variable.labels[108] <- "[Other] Did you participate in the individual (not team) workshop on Tuesday evening PM?"
names(data)[108] <- "wsutery2vyber_other"
# LimeSurvey Field type: F
data[, 109] <- as.numeric(data[, 109])
attributes(data)$variable.labels[109] <- "How would you rate the workshop {if(!is_empty(wsutery2vyber_other),wsutery2vyber_other,wsutery2vyber.shown)}?"
names(data)[109] <- "wsutery2hodnoceni"
# LimeSurvey Field type: F
data[, 110] <- as.numeric(data[, 110])
attributes(data)$variable.labels[110] <- "Which of the following individual (not team) workshops did you participate in on Friday afternoon?"
data[, 110] <- factor(data[, 110], levels=c(1,2,3,4,5,6,7),labels=c("Evaluating social impact (Margherita Philipp)", "Analytics Drawing (Nerses Malakjan)", "Gender Bender (Kryštof Vosátka / Judith Weiss)", "Happiness (Matej Bajgar)", "Basics of Fitness and Nutrition (Josef Hazi)", "Brexit (Zuzana Vikarská)", "none"))
names(data)[110] <- "wspatek1vyber"
# LimeSurvey Field type: F
data[, 111] <- as.numeric(data[, 111])
attributes(data)$variable.labels[111] <- "[Other] Which of the following individual (not team) workshops did you participate in on Friday afternoon?"
names(data)[111] <- "wspatek1vyber_other"
# LimeSurvey Field type: F
data[, 112] <- as.numeric(data[, 112])
attributes(data)$variable.labels[112] <- "How would you rate the workshop {if(!is_empty(wspatek1vyber_other),wspatek1vyber_other,wspatek1vyber.shown)}?"
names(data)[112] <- "wspatek1hodnoceni"
# LimeSurvey Field type: F
data[, 113] <- as.numeric(data[, 113])
attributes(data)$variable.labels[113] <- "Which of the following individual (not team) workshops did you participate in on Saturday afternoon?"
data[, 113] <- factor(data[, 113], levels=c(1,2,3,4,5,6),labels=c("History of the world. But which world?! (Matej Bajgar)", "Sociology of Love (Markéta Šetinová)", "Artificial Intelligence (Ondřej Bajgar)", "Start-ups / Entrepreneurship (Marek Moravec)", "The Islamic State and Syrian Refugee Crisis in a nutshell (Alex Trochtová)", "none"))
names(data)[113] <- "wssobota1vyber"
# LimeSurvey Field type: F
data[, 114] <- as.numeric(data[, 114])
attributes(data)$variable.labels[114] <- "[Other] Which of the following individual (not team) workshops did you participate in on Saturday afternoon?"
names(data)[114] <- "wssobota1vyber_other"
# LimeSurvey Field type: F
data[, 115] <- as.numeric(data[, 115])
attributes(data)$variable.labels[115] <- "How would you rate the workshop {if(!is_empty(wssobota1vyber_other),wssobota1vyber_other,wssobota1vyber.shown)}?"
names(data)[115] <- "wssobota1hodnoceni"
# LimeSurvey Field type: F
data[, 116] <- as.numeric(data[, 116])
attributes(data)$variable.labels[116] <- "Should the range of individual workshops on offer change?"
data[, 116] <- factor(data[, 116], levels=c(1,2),labels=c("Yes", "No"))
names(data)[116] <- "wsIndiZmenit"
# LimeSurvey Field type: A
data[, 117] <- as.character(data[, 117])
attributes(data)$variable.labels[117] <- "How?"
names(data)[117] <- "wsIndiZmenitJak"
# LimeSurvey Field type: A
data[, 118] <- as.character(data[, 118])
attributes(data)$variable.labels[118] <- "Where are you from? (Type ahead)"
data[, 118] <- factor(data[, 118], levels=c("AFG","ALA","ALB","DZA","ASM","AND","AGO","AIA","ATA","ATG","ARG","ARM","ABW","AUS","AUT","AZE","BHS","BHR","BGD","BRB","BLR","BEL","BLZ","BEN","BMU","BTN","BOL","BES","BIH","BWA","BVT","BRA","BRN","BGR","BFA","BDI","KHM","CM","CAN","CPV","CYM","CAF","TCD","CHL","CHN","CXR","CCK","COL","COM","COD","COG","COK","CRI","CIV","HRV","CUB","CUW","CYP","CZE","DNK","DJI","DMA","DOM","ECU","EGY","SLV","ERI","EST","ET","FLK","FRO","FJI","FIN","FRA","GUF","PYF","ATF","GAB","GMB","GEO","DEU","GHA","GIB","GRC","GRL","GRD","GLP","GUM","GTM","GGY","GIN","GNQ","GNB","GUY","HTI","HMD","HND","HKG","HUN","ISL","IND","IOT","IDN","IRL","IRN","IRQ","IMN","ISR","ITA","JAM","JPN","JEY","JOR","KAZ","KEN","KIR","PRK","KOR","KOS","KWT","KGZ","LAO","LVA","LBN","LSO","LBR","LBY","LIE","LTU","LUX","MAC","MKD","MDG","MWI","MYS","MDV","MLI","MLT","MNP","MHL","MTQ","MRT","MUS","MYT","MEX","FSM","MDA","MCO","MNG","MNE","MSR","MAR","MOZ","MMR","NAM","NRU","NPL","NLD","NCL","NZL","NIC","NER","NGA","NIU","NFK","NOR","OMN","PAK","PSE","PLW","PAN","PRY","PNG","PER","PHL","PCN","POL","PRT","PRI","QAT","REU","ROU","RUS","RWA","ESH","WSM","SMR","SAU","BLM","SHN","KNA","LCA","MAF","SPM","VCT","STP","SEN","SRB","SYC","SLE","SGP","SXM","SVK","SVN","SLB","SOM","ZAF","SGS","SSD","ESP","LKA","SDN","SUR","SJM","SWE","SWZ","CHE","SYR","TWN","TJK","TZA","THA","TLS","TGO","TKL","TON","TTO","TUN","TUR","TKM","TCA","TUV","UGA","UKR","ARE","GBR","UMI","USA","URY","UZB","VUT","VAT","VEN","VNM","VGB","VIR","WLF","YEM","ZMB","ZWE"),labels=c("Afghanistan", "Åland Islands", "Albania", "Algeria", "American Samoa", "Andorra", "Angola", "Anguilla", "Antarctica", "Antigua and Barbuda", "Argentina", "Armenia", "Aruba", "Australia", "Austria", "Azerbaijan", "Bahamas", "Bahrain", "Bangladesh", "Barbados", "Belarus", "Belgium", "Belize", "Benin", "Bermuda", "Bhutan", "Bolivia, Plurinational State of", "Bonaire, Sint Eustatius and Saba", "Bosnia and Herzegovina", "Botswana", "Bouvet Island", "Brazil", "Brunei Darussalam", "Bulgaria", "Burkina Faso", "Burundi", "Cambodia", "Cameroon", "Canada", "Cape Verde", "Cayman Islands", "Central African Republic", "Chad", "Chile", "China", "Christmas Island", "Cocos (Keeling) Islands", "Colombia", "Comoros", "Congo, the Democratic Republic of the", "Congo", "Cook Islands", "Costa Rica", "Côte d\'Ivoire", "Croatia", "Cuba", "Curaçao", "Cyprus", "Czech Republic", "Denmark", "Djibouti", "Dominica", "Dominican Republic", "Ecuador", "Egypt", "El Salvador", "Eritrea", "Estonia", "Ethiopia", "Falkland Islands (Malvinas)", "Faroe Islands", "Fiji", "Finland", "France", "French Guiana", "French Polynesia", "French Southern Territories", "Gabon", "Gambia", "Georgia", "Germany", "Ghana", "Gibraltar", "Greece", "Greenland", "Grenada", "Guadeloupe", "Guam", "Guatemala", "Guernsey", "Guinea", "Equatorial Guinea", "Guinea-Bissau", "Guyana", "Haiti", "Heard Island and McDonald Islands", "Honduras", "Hong Kong", "Hungary", "Iceland", "India", "British Indian Ocean Territory", "Indonesia", "Ireland", "Iran, Islamic Republic of", "Iraq", "Isle of Man", "Israel", "Italy", "Jamaica", "Japan", "Jersey", "Jordan", "Kazakhstan", "Kenya", "Kiribati", "Korea, Democratic People\'s Republic of", "Korea, Republic of", "Kosovo", "Kuwait", "Kyrgyzstan", "Lao People\'s Democratic Republic", "Latvia", "Lebanon", "Lesotho", "Liberia", "Libya", "Liechtenstein", "Lithuania", "Luxembourg", "Macao", "Macedonia, the former Yugoslav Republic of", "Madagascar", "Malawi", "Malaysia", "Maldives", "Mali", "Malta", "Northern Mariana Islands", "Marshall Islands", "Martinique", "Mauritania", "Mauritius", "Mayotte", "Mexico", "Micronesia, Federated States of", "Moldova, Republic of", "Monaco", "Mongolia", "Montenegro", "Montserrat", "Morocco", "Mozambique", "Myanmar", "Namibia", "Nauru", "Nepal", "Netherlands", "New Caledonia", "New Zealand", "Nicaragua", "Niger", "Nigeria", "Niue", "Norfolk Island", "Norway", "Oman", "Pakistan", "Palestine, State of", "Palau", "Panama", "Paraguay", "Papua New Guinea", "Peru", "Philippines", "Pitcairn", "Poland", "Portugal", "Puerto Rico", "Qatar", "Réunion", "Romania", "Russian Federation", "Rwanda", "Western Sahara", "Samoa", "San Marino", "Saudi Arabia", "Saint Barthélemy", "Saint Helena, Ascension and Tristan da Cunha", "Saint Kitts and Nevis", "Saint Lucia", "Saint Martin (French part)", "Saint Pierre and Miquelon", "Saint Vincent and the Grenadines", "Sao Tome and Principe", "Senegal", "Serbia", "Seychelles", "Sierra Leone", "Singapore", "Sint Maarten (Dutch part)", "Slovakia", "Slovenia", "Solomon Islands", "Somalia", "South Africa", "South Georgia and the South Sandwich Islands", "South Sudan", "Spain", "Sri Lanka", "Sudan", "Suriname", "Svalbard and Jan Mayen", "Sweden", "Swaziland", "Switzerland", "Syrian Arab Republic", "Taiwan, Province of China", "Tajikistan", "Tanzania, United Republic of", "Thailand", "Timor-Leste", "Togo", "Tokelau", "Tonga", "Trinidad and Tobago", "Tunisia", "Turkey", "Turkmenistan", "Turks and Caicos Islands", "Tuvalu", "Uganda", "Ukraine", "United Arab Emirates", "United Kingdom", "United States Minor Outlying Islands", "United States of America", "Uruguay", "Uzbekistan", "Vanuatu", "Vatican City State", "Venezuela, Bolivarian Republic of", "Viet Nam", "Virgin Islands, British", "Virgin Islands, U.S.", "Wallis and Futuna", "Yemen", "Zambia", "Zimbabwe"))
names(data)[118] <- "CRorSK"
# LimeSurvey Field type: F
data[, 119] <- as.numeric(data[, 119])
attributes(data)$variable.labels[119] <- "[Other] Where are you from? (Type ahead)"
names(data)[119] <- "CRorSK_other"
# LimeSurvey Field type: F
data[, 120] <- as.numeric(data[, 120])
attributes(data)$variable.labels[120] <- "How old are you?"
names(data)[120] <- "vek"
# LimeSurvey Field type: F
data[, 121] <- as.numeric(data[, 121])
attributes(data)$variable.labels[121] <- "Gender"
data[, 121] <- factor(data[, 121], levels=c(1,2),labels=c("Female", "Male"))
names(data)[121] <- "pohlavi"
# LimeSurvey Field type: F
data[, 122] <- as.numeric(data[, 122])
attributes(data)$variable.labels[122] <- "In which year will you finish (or have you finished) secondary school?"
names(data)[122] <- "rocnik"
# LimeSurvey Field type: A
data[, 123] <- as.character(data[, 123])
attributes(data)$variable.labels[123] <- "[20 euro] Would you be able to come to Discover if the attendance fee went up by..."
data[, 123] <- factor(data[, 123], levels=c("A1","A2","A3","A4","A5"),labels=c("Definitely", "Maybe", "Probably not", "Definitely not", "Don\'t know"))
names(data)[123] <- "poplatek_20eur"
# LimeSurvey Field type: A
data[, 124] <- as.character(data[, 124])
attributes(data)$variable.labels[124] <- "[40 euro] Would you be able to come to Discover if the attendance fee went up by..."
data[, 124] <- factor(data[, 124], levels=c("A1","A2","A3","A4","A5"),labels=c("Definitely", "Maybe", "Probably not", "Definitely not", "Don\'t know"))
names(data)[124] <- "poplatek_40eur"
# LimeSurvey Field type: A
data[, 125] <- as.character(data[, 125])
attributes(data)$variable.labels[125] <- "[60 euro] Would you be able to come to Discover if the attendance fee went up by..."
data[, 125] <- factor(data[, 125], levels=c("A1","A2","A3","A4","A5"),labels=c("Definitely", "Maybe", "Probably not", "Definitely not", "Don\'t know"))
names(data)[125] <- "poplatek_60eur"
# LimeSurvey Field type: A
data[, 126] <- as.character(data[, 126])
attributes(data)$variable.labels[126] <- "[100 euro] Would you be able to come to Discover if the attendance fee went up by..."
data[, 126] <- factor(data[, 126], levels=c("A1","A2","A3","A4","A5"),labels=c("Definitely", "Maybe", "Probably not", "Definitely not", "Don\'t know"))
names(data)[126] <- "poplatek_100eur"
# LimeSurvey Field type: F
data[, 127] <- as.numeric(data[, 127])
attributes(data)$variable.labels[127] <- "Is this your first time at Discover?"
data[, 127] <- factor(data[, 127], levels=c(1,2),labels=c("Yes", "No"))
names(data)[127] <- "poprve"
# LimeSurvey Field type: F
data[, 128] <- as.numeric(data[, 128])
attributes(data)$variable.labels[128] <- "[2015] In which years were you at Discover?"
data[, 128] <- factor(data[, 128], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[128] <- "minulerocniky_2015"
# LimeSurvey Field type: F
data[, 129] <- as.numeric(data[, 129])
attributes(data)$variable.labels[129] <- "[2014] In which years were you at Discover?"
data[, 129] <- factor(data[, 129], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[129] <- "minulerocniky_2014"
# LimeSurvey Field type: F
data[, 130] <- as.numeric(data[, 130])
attributes(data)$variable.labels[130] <- "[2013] In which years were you at Discover?"
data[, 130] <- factor(data[, 130], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[130] <- "minulerocniky_2013"
# LimeSurvey Field type: F
data[, 131] <- as.numeric(data[, 131])
attributes(data)$variable.labels[131] <- "[2012] In which years were you at Discover?"
data[, 131] <- factor(data[, 131], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[131] <- "minulerocniky_2012"
# LimeSurvey Field type: A
data[, 132] <- as.character(data[, 132])
attributes(data)$variable.labels[132] <- "Pokud jsi byl/a na předchozích ročnících, co se zlepšilo nebo zhoršilo?"
names(data)[132] <- "rocnikysrovnani"
# LimeSurvey Field type: F
data[, 133] <- as.numeric(data[, 133])
attributes(data)$variable.labels[133] <- "Would you like to contribute to organising next year\'s Discover?"
data[, 133] <- factor(data[, 133], levels=c(1,2),labels=c("Yes", "No"))
names(data)[133] <- "zapojeni"
# LimeSurvey Field type: F
data[, 134] <- as.numeric(data[, 134])
attributes(data)$variable.labels[134] <- "[Media (please tell us which)] Where do you get your news about interesting activities? (e.g. concerts, competitions, summer activities)"
data[, 134] <- factor(data[, 134], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[134] <- "marketing_SQ001"
# LimeSurvey Field type: A
data[, 135] <- as.character(data[, 135])
attributes(data)$variable.labels[135] <- "[Comment] Where do you get your news about interesting activities? (e.g. concerts, competitions, summer activities)"
names(data)[135] <- "marketing_SQ001comment"
# LimeSurvey Field type: F
data[, 136] <- as.numeric(data[, 136])
attributes(data)$variable.labels[136] <- "[Social media (please tell us which)] Where do you get your news about interesting activities? (e.g. concerts, competitions, summer activities)"
data[, 136] <- factor(data[, 136], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[136] <- "marketing_SQ002"
# LimeSurvey Field type: A
data[, 137] <- as.character(data[, 137])
attributes(data)$variable.labels[137] <- "[Comment] Where do you get your news about interesting activities? (e.g. concerts, competitions, summer activities)"
names(data)[137] <- "marketing_SQ002comment"
# LimeSurvey Field type: F
data[, 138] <- as.numeric(data[, 138])
attributes(data)$variable.labels[138] <- "[Elsewhere online (please tell us where)] Where do you get your news about interesting activities? (e.g. concerts, competitions, summer activities)"
data[, 138] <- factor(data[, 138], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[138] <- "marketing_SQ003"
# LimeSurvey Field type: A
data[, 139] <- as.character(data[, 139])
attributes(data)$variable.labels[139] <- "[Comment] Where do you get your news about interesting activities? (e.g. concerts, competitions, summer activities)"
names(data)[139] <- "marketing_SQ003comment"
# LimeSurvey Field type: F
data[, 140] <- as.numeric(data[, 140])
attributes(data)$variable.labels[140] <- "[At school/from teachers] Where do you get your news about interesting activities? (e.g. concerts, competitions, summer activities)"
data[, 140] <- factor(data[, 140], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[140] <- "marketing_SQ004"
# LimeSurvey Field type: A
data[, 141] <- as.character(data[, 141])
attributes(data)$variable.labels[141] <- "[Comment] Where do you get your news about interesting activities? (e.g. concerts, competitions, summer activities)"
names(data)[141] <- "marketing_SQ004comment"
# LimeSurvey Field type: F
data[, 142] <- as.numeric(data[, 142])
attributes(data)$variable.labels[142] <- "[From friends] Where do you get your news about interesting activities? (e.g. concerts, competitions, summer activities)"
data[, 142] <- factor(data[, 142], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[142] <- "marketing_SQ005"
# LimeSurvey Field type: A
data[, 143] <- as.character(data[, 143])
attributes(data)$variable.labels[143] <- "[Comment] Where do you get your news about interesting activities? (e.g. concerts, competitions, summer activities)"
names(data)[143] <- "marketing_SQ005comment"
# LimeSurvey Field type: A
data[, 144] <- as.character(data[, 144])
attributes(data)$variable.labels[144] <- "[Other] Where do you get your news about interesting activities? (e.g. concerts, competitions, summer activities)"
names(data)[144] <- "marketing_other"
# LimeSurvey Field type: A
data[, 145] <- as.character(data[, 145])
attributes(data)$variable.labels[145] <- "[Other comment] Where do you get your news about interesting activities? (e.g. concerts, competitions, summer activities)"
names(data)[145] <- "marketing_othercomment"
# LimeSurvey Field type: A
data[, 146] <- as.character(data[, 146])
attributes(data)$variable.labels[146] <- "Has Discover influenced your thinking about where to go to university?"
data[, 146] <- factor(data[, 146], levels=c("A1","A2","A3","A4","A5"),labels=c("Definitely", "Somewhat", "Not really", "Definitely not", "Don\'t know"))
names(data)[146] <- "ovlivnilaVS"
# LimeSurvey Field type: A
data[, 147] <- as.character(data[, 147])
attributes(data)$variable.labels[147] <- "Where are you planning to apply for university?"
data[, 147] <- factor(data[, 147], levels=c("home","uk","eur","us"),labels=c("my home country", "Britain", "Elsewhere in Europe", "United States"))
names(data)[147] <- "kamnavs"
# LimeSurvey Field type: A
data[, 148] <- as.character(data[, 148])
attributes(data)$variable.labels[148] <- "[Other] Where are you planning to apply for university?"
names(data)[148] <- "kamnavs_other"
# LimeSurvey Field type: A
data[, 149] <- as.character(data[, 149])
attributes(data)$variable.labels[149] <- "If there is anything else you would like to share with us, please do it here."
names(data)[149] <- "coseneveslo"
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
# LimeSurvey Field type: 
data[, 256] <- as.character(data[, 256])
attributes(data)$variable.labels[256] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 257] <- as.character(data[, 257])
attributes(data)$variable.labels[257] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 258] <- as.character(data[, 258])
attributes(data)$variable.labels[258] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 259] <- as.character(data[, 259])
attributes(data)$variable.labels[259] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 260] <- as.character(data[, 260])
attributes(data)$variable.labels[260] <- ""
#sql_name not set
