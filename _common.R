# set knitr options
knitr::opts_chunk$set(
  cache = TRUE, # cache output
  error = TRUE, # continue code evaluation even if there is an error, in which case the error messages will print
  comment = '', # remove ## prefix for printed text output
  message = FALSE, # suppress printing of messages in the output document
  warning = FALSE, # suppress printing of warnings in the output document
  fig.pos = "hold" # hold figure position so it stays in the order it should be in relative to the surrounding code / text
)