library(weights)
wttest <-function(data, y){
  wtd.t.test(x = data[data$treat ==1 ,][y] %>% pull(1 ),
             y = data[data$treat == 0,][y] %>% pull( 1),
             weight = data$weights[data$treat == 1 ],
             weighty = data$weights[data$treat == 0 ],
             samedata = FALSE)
             }
             