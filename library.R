# library(pbtools)
library(tidyverse)
library(forcats)
library(stringr)
library(openxlsx)
library(lubridate)
library(extrafont)
library(RColorBrewer)

tooltip_css <- "font-family:\"Gill Sans MT\", \"Gill Sans\", sans-serif; background-color:black; color: white; font-size: 11pt; padding:5px;border-radius:5px 5px 5px 5px;"
d_fonts_sans_css <- "\"Gill Sans MT\", \"Gill Sans\", \"sans-serif\""

# loadcustomthemes(fontfamily = "Gill Sans MT")
theme_discover <- theme(
  text = element_text(family = "Gill Sans MT"),
  panel.grid.minor=element_line(color="grey96", size=.2),
  panel.grid.major=element_line(color="grey96", size=.3),
  axis.text.x = element_text(size=11, color="grey40"),
  axis.text.y = element_text(size=11, color="grey40"),
  strip.text = element_text(size=12, color="grey20"),
  panel.background = element_rect(fill="white"),
  strip.background=element_rect(fill="white"),
  legend.key.width=unit(.3,"cm"),
  legend.justification = c(1,1),
  axis.ticks = element_blank(),
  plot.subtitle = element_text(lineheight = 0.5))

theme_discover_multi <- theme(
  text = element_text(family = "Gill Sans MT"),
  panel.grid.minor=element_line(color="grey96", size=.25),
  panel.grid.major=element_line(color="white", size=.5),
  strip.text = element_text(size=9, color="grey20", hjust=0.1),
  panel.background = element_rect(fill="grey96"),
  axis.text.x = element_text(size=10),
  strip.background=element_rect(fill="grey96"),
  plot.title=element_text(size=10, lineheight=0.5, hjust=0),
  legend.key.width=unit(.3,"cm"),
  axis.ticks = element_blank(),
  plot.subtitle = element_text(lineheight = 0.5))

theme_discover_bykurz <- theme(
  panel.grid.minor=element_line(color="grey96", size=.2),
  panel.grid.major=element_line(color="grey96", size=.3),
  strip.text = element_text(size=12, color="grey20"),
  panel.background = element_rect(fill="white"),
  axis.text.x = element_text(size=11),
  strip.background=element_rect(fill="white"),
  legend.key.width=unit(.3,"cm"))

likertcz <- c("Určitě ne","Spíše ne","Nevím","Spíše ano","Určitě ano")


# function to print comments as bulleted list
# automate language detection based on parameter
print_bullets <- function(data, language) {
  if(missing(language)) {
    if(exists("params")) {
      if(!is.null(params$turnus)){
        language <- ifelse(as.character(params$turnus)=="Int","en","cz")
      } else {language <- "cz"}
    } else {language <- "cz"}
  }
  texty <- data[str_length(data)>4 & !str_detect(data,"[Nn]i[cč]") & !is.na(data)]
  if(length(texty)>0) {
    texty <- str_replace(texty, "^#", "")
    cat(paste("* ", texty), sep="\n\n")
  } else {cat(ifelse(language=="cz","[Nic]","[Nothing]"))}
}

