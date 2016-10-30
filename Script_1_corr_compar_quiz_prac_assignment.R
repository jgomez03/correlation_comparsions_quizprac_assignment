###Differences between correlations
##comparing correlations within a published paper - no access to the data
#comparing correlations without access to data: cocor.dep.groups.overlap

library(tidyverse)
library(cocor)
?cocor.dep.groups.overlap

##Question 1
#is the rating-complaint correlation stronger than the rating-critical correlation?
#(j = rating, k = complaint, h = critical)
#(r.jk = .83, r.jh = .16, r.kh = .19) n = 30
cocor.dep.groups.overlap (.83, .16, .19, 30, alternative = "two.sided",
                         test = "all", alpha = 0.05, conf.level = 0.95, null.value = 0, 
                         data.name = NULL, var.labels = NULL, return.htest = FALSE)

##Question 2
#is the rating-complaint correlation stronger then the raises-critical correlation?
#NON-OVERLAPPING correlations
#(j = rating, k = complaint, h = raises, m = critical)
#(r.jk = .83, r.hm = .38, r.jh = .59, r.jm = .16, r.kh = .67, r.km = .19)  )
#?cocor.dep.groups.nonoverlap
cocor.dep.groups.nonoverlap (.83, .38, .59, .16, .67, .19, 30, alternative = "two.sided",
                          test = "all", alpha = 0.05, conf.level = 0.95, null.value = 0, 
                          data.name = NULL, var.labels = NULL, return.htest = FALSE)
