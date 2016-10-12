wsf <- ddf %>% select(starts_with("ws"), -contains("Tym"),startdate,
                      -contains("IndiZmenit"), uid, session,
                      vek, poprve, gender, CRorSK, nat3) %>% 
  gather(variable, value, -uid, -vek, -poprve, -gender, -CRorSK, -nat3,
         -session, -startdate) %>%
  mutate(slotnum = str_extract(variable, "[123]")) %>% 
  separate(variable, c("den","variable"),sep = "[123]{1}") %>% 
  mutate(slotid = paste0(den,"_",slotnum),
         den = str_replace(den, "ws", ""),
         rowid = paste(uid, slotid, sep="_")) %>%
  spread(variable,value) %>%
  mutate(hodnoceni = as.numeric(hodnoceni),
         vyber = ifelse(!is.na(vyber_other), "other", vyber)) %>% 
  filter(!(vyber == "žádného")) %>%
  filter(!(is.na(vyber) & is.na(vyber_other)))

# Diagnostics to detect reversed scales that happened early on
# (at the beginning, the hint below the grading scale contradicted the
# star scale)

# simple scatter
wsf %>% group_by(session, vyber) %>%
  ggplot(aes(vyber,hodnoceni)) +
  geom_jitter() +
  facet_grid(session~.)

# Have a look at which individuals graded oddly
# (i.e. on average, their score differed a lot from the average score of a workshop),
# by start time

library(ggrepel)
wsfdiag <- wsf %>% group_by(session) %>% 
  mutate(startdiff = startdate - min(startdate)) %>% 
  group_by(session, vyber) %>%
  mutate(variance = hodnoceni - mean(hodnoceni, na.rm = T)) %>%
  ungroup() %>% group_by(session, startdiff, uid) %>% 
  summarise(meanvar = mean(abs(variance), na.rm=T)) %>% ungroup()

ggplot(wsfdiag, aes(startdiff, meanvar)) +
  geom_point() +
  geom_text(aes(label = uid)) + facet_grid(session~.)

# the abnormal variations are concentrated in Jul and are early on

# reverse grading on those with abnormally high absolute variations

wsfc <- wsf %>%
  mutate(hodnoceni = ifelse(uid %in% wsfdiag$uid[wsfdiag$meanvar > 2],
                            6-hodnoceni, hodnoceni))

rm("wsf", "wsfdiag")
write.xlsx(wsfc, "excel-for-inspection/disc2016_ws_clean")

save(wsfc, file="rdata/wsfc.Rda")