# Load and prune all datasets

source("./lime-export/int/survey_215512_R_syntax_file.R")
data_int <- data
data_int <- data %>% select(-contains("groupTime"), -contains("time.."))
rm(data)
data_int$session <- "Int"
data_int$sessioncode <- 2
source("./lime-export/jul/survey_957564_R_syntax_file.R")
data_jul <- data
data_jul <- data %>% select(-contains("groupTime"), -contains("time.."))
rm(data)
data_jul$session <- "Júl"
data_jul$sessioncode <- 1
source("./lime-export/aug/survey_554432_R_syntax_file.R")
data_aug <- data
data_aug <- data %>% select(-contains("groupTime"), -contains("time.."))
rm(data)
data_aug$sessioncode <- 3
data_aug$session <- "Aug"

# Merge
ddf <- bind_rows(data_jul, data_int, data_aug)
ddf$uid <- paste0(ddf$sessioncode, "_", ddf$id)

rm("data_aug", "data_jul", "data_int")

ddf <- ddf %>%
  mutate(nat3 = fct_collapse(CRorSK, česko = c("z Česka","Czech Republic"),
                                slovensko = c("ze Slovenska", "Slovakia")),
         nat3 = fct_lump(nat3, n=2)) %>% 
  mutate(gender = fct_collapse(pohlavi, M = c("Muž","Male"),
                                        F = c("Žena","Female")),
         startdate = as_datetime(startdate),
         submitdate = as_datetime(submitdate),
         datestamp = as_datetime(datestamp)) %>% 
  rename(ovlivnilaucastplany = ovlivlilaucastplany)

write.xlsx(ddf,"excel-for-inspection/disc2016_all.xlsx", asTable = T)

# remove false starts
ddf <- ddf[ddf$lastpage!=0,]
# remove empty variables
ddf <- ddf %>% select(-which(colMeans(is.na(.)) == 1))
write.xlsx(ddf,"excel-for-inspection/disc2016_all_cleaned.xlsx", asTable = T)

save(ddf, file="rdata/ddf.Rda")
