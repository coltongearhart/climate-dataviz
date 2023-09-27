# set knitr options
knitr::opts_chunk$set(
  cache = TRUE, # cache output
  error = TRUE, # continue code evaluation even if there is an error, in which case the error messages will print
  comment = '', # remove ## prefix for printed text output
  message = FALSE, # suppress printing of messages in the output document
  warning = FALSE, # suppress printing of warnings in the output document
  fig.pos = "hold" # hold figure position so it stays in the order it should be in relative to the surrounding code / text
)

# load packages
library(tidyverse)
library(magrittr)
library(lubridate)
library(parallel) # for mclappy()

# create default storytelling with data theme
theme_swd <- theme_minimal() + 
  theme(
    # titles and captions
    plot.title = element_text(size = rel(1.75),
                              color = "grey30"),
    plot.subtitle = element_text(size = rel(1.25),
                                 color = "grey30"),
    plot.caption = element_text(hjust = 0,
                                color = "grey30"),
    # axes
    axis.title.x = element_text(hjust = 0,
                                color = "grey30"),
    axis.title.y = element_text(hjust = 1,
                                color = "grey30"),
    axis.line = element_line(color = "grey90"),
    axis.ticks = element_line(color = "grey90"),
    # plot background and gridlines
    panel.background = element_blank(),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    # legend
    legend.title = element_text(color = "grey30"),
    legend.text = element_text(color = "grey30")
  )

# set global plot theme
theme_set(theme_swd)

# disable scientific notation for readability purposes
options(scipen = 999) 