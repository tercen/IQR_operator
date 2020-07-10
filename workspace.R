library(tercen)
library(dplyr)

options("tercen.workflowId" = "wwww")
options("tercen.stepId"     = "dddd")

getOption("tercen.workflowId")
getOption("tercen.stepId")

iqr <- function(y) {
  qts <- quantile(y, probs = c(0.25, 0.75), names = FALSE)
  iqr <- diff(qts)
  return(iqr)
}

(ctx = tercenCtx())  %>% 
  select(.y, .ci, .ri) %>% 
  group_by(.ci, .ri) %>%
  summarise(iqr = iqr(.y)) %>%
  ctx$addNamespace() %>%
  ctx$save()
