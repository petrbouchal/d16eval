kurzy <- ddf %>%
  select(starts_with("kurz"), CRorSK, gender, nat3, vek, session, uid, poprve,
         -kurzyjakedalsi) %>%
  gather(key=variable, value=value, -uid, -vek, -session, -gender, -CRorSK, 
         -nat3, -poprve) %>% 
  mutate(kurzslot=ifelse(str_detect(variable,"1"),"slot1","slot2"),
         variable=str_replace(variable,"kurz[12]",""),
         rowid = paste0(uid, "_", kurzslot)) %>%
  spread(variable, value) %>% 
  mutate(hodnoceni = as.numeric(hodnoceni)) %>% 
  rename(kurz = ktery)

# save file for manual inspection 
write.xlsx(kurzy %>% select(uid,session, everything()),
           "excel-for-inspection/disc2016_kurzy.xlsx", asTable = T)

# INTL scores where the respondent clearly inverted the scale

# these are where _both_ the person's scores are 4 or 5 and nothing suggests they were unhappy
personuids_fix_intl <- c("2_10","2_23","2_25","2_38","2_45")

#these are where only one score was 4 or 5

# 2_21 rated slot2 a 4 - graded the other course 3 and more favourable comments
# 2_24 rated slot1 a 4 - and clearly unhappy, gave other course a 1 
# 2_49 rated slot1 a 4 - no indication of unhappiness, probably meant a two
# 2_54 rated slot1 a 4 - rated other course 1 on very similar comments
# 2_8  rated slot1 a 5 - clearly an inversion, happy otherwise

rowids_fix_intl <- c("2_49_slot1","2_54_slot1","2_8_slot1")

# JUL scores where the respondent clearly inverted the scale

# these are where _both_ the person's scores are 4 or 5 and nothing suggests they were unhappy
personuids_fix_jul <- c("1_11")

#these are where only one score was 4 or 5

# 1_31slot2 - clearly unhappy
# 1_51slot2 - most likely flipped; other score rated 3 with more negative comments
# 1_61slot1 - probably real; other course rated 2 on better comments
# 1_72slot1 - hard to tell; not so negative, gave other course a 1
# 1_79slot1 - clearly quire unhappy

rowids_fix_jul <- c("1_51_slot2")

# AUG scores where the respondent clearly inverted the scale

# these are where _both_ the person's scores are 4 or 5 and nothing suggests they were unhappy
personuids_fix_aug <- c("3_44")

#these are where only one score was 4 or 5

# 3_106 rated slot1 a 4 - probably really unhappy
# 3_15 rated slot1 a 4 - other score missing and sounds happy

rowids_fix_aug <- c("3_15_slot1")

# now merge lists of IDs for fixing scores

rowids_fix <- c(rowids_fix_intl, rowids_fix_jul, rowids_fix_aug)
personuids_fix <- c(personuids_fix_intl, personuids_fix_jul, personuids_fix_aug)

kurzy <- kurzy %>% 
  mutate(hodnoceni = ifelse(uid %in% personuids_fix, 6-hodnoceni, hodnoceni),
         hodnoceni = ifelse(rowid %in% rowids_fix, 6-hodnoceni, hodnoceni))

# kurzy %>% group_by(session, ktery) %>%
#   summarise(hodnoceni = mean(hodnoceni, na.rm=T))

write.xlsx(kurzy %>% select(uid,session, everything()),
           "excel-for-inspection/disc2016_kurzy_fin.xlsx", asTable = T)
save(kurzy, file="rdata/kurzy.Rda")
