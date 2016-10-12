ddf %>% group_by(session, ovlivlilaucastplany) %>% summarise(pocet=n())
ddf %>% group_by(session, doporucilkamaradovi) %>% summarise(pocet=n())

ddf %>% group_by(session, nabidkakurzurozmanit) %>% summarise(pocet=n())

ddf %>% group_by(session) %>% summarise(prumer=mean(kurz2hodnoceni, na.rm=T))
ddf %>% group_by(session) %>% summarise(prumer=mean(kurz1hodnoceni, na.rm=T))
ddf %>% group_by(session) %>% summarise(prumer=mean(ovlivnilaVS, na.rm=T))

ddf %>%
  mutate(poprve=fct_recode(poprve, Ano="Yes",Ne="No")) %>% 
  group_by(session, poprve) %>%
  summarise(pocet=n()) %>% spread(poprve, pocet) %>% 
  summarise(repeats=Ne/(Ano+Ne))

ddf %>% group_by(nat3) %>% summarise(vek = mean(vek, na.rm=T), pocet=n())
ddf %>% group_by(nat3, gender) %>% summarise(vek = mean(vek, na.rm=T)) %>% 
  spread(gender, vek)

ddf %>% group_by(session) %>% summarise(vek=mean(vek, na.rm=T))
ddf %>% group_by(session, gender) %>% summarise(pocet=n()) %>% 
  spread(gender, pocet) %>% mutate(total=M+F,
                                   M=M/total, F=F/total)

ddf %>% group_by(nat3, gender) %>% summarise(pocet=n()) %>% 
  spread(gender, pocet) %>% mutate(total=M+F,
                                   M=M/total, F=F/total)

ddf %>% group_by(session, gender) %>% summarise(pocet=n()) %>% 
  spread(gender, pocet) %>% mutate(total=M+F,
                                   M=M/total, F=F/total)

ddf %>% group_by(gender) %>% summarise(pocet=n()) %>% 
  spread(gender, pocet) %>% summarise(total=M+F,
                                      M=M/total,
                                      F=F/total)

ddf %>% group_by(nat3) %>% summarise(pocet=n()) %>% 
  spread(nat3, pocet) %>% summarise(total=česko+slovensko+Other,
                                      česko=česko/total,
                                      slovensko=slovensko/total,
                                      Other=Other/total)

ddf %>% group_by(session, nat3) %>% summarise(pocet=n()) %>% 
  spread(nat3, pocet, fill = 0) %>% summarise(total=česko+slovensko+Other,
                                      česko=česko/total,
                                      slovensko=slovensko/total,
                                      Other=Other/total)

ddf %>% group_by(gender) %>% summarise(pocet = n())

ddf %>% filter(session!="Int") %>% group_by(CRorSK, gender) %>%
  summarise(pocet=n()) %>% group_by(CRorSK) %>% summarise(podil=pocet/sum(pocet, na.rm=T)) 

