library(tercen)
library(dplyr)

options("tercen.workflowId" = "dee7b79a4d8c8e61714cab96bc004399")
options("tercen.stepId"     = "e9cca6c7-a6e6-4563-b400-33a89b5c2aae")

getOption("tercen.workflowId")
getOption("tercen.stepId")

iqr <- function(y) {
  qts <- quantile(y, probs = c(0.25, 0.75), names = FALSE)
  iqr <- diff(qts)
  return(iqr)
}

ctx <- tercenCtx()

ctx  %>% 
  select(.y, .ci, .ri) %>% 
  group_by(.ci, .ri) %>%
  summarise(iqr = iqr(.y)) %>%
  ctx$addNamespace() %>%
  ctx$save()
