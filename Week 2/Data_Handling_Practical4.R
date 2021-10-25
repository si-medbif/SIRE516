library(hflights)
?hflights

airlines <- data.frame(code = c("XE","CO","WN","OO","MQ","NW"),
                       name = c("ExpressJet Airlines, Inc.",
                                "Continental Airlines, Inc.",
                                "Southwest Airlines Co.",
                                "SkyWest  Airlines",
                                "Envoy Air Inc.",
                                "Northwest Airlines Corp."))
print(airlines)
#####Your tasks
#1) Merge 'airlines' to 'hflights'
#2) Count total flights of these airlines 
#HINT: airlines$code matches with hflight$???
