library(MASS)
library(epitools)

?esoph
esoph$alc <- factor(esoph$alcgp, levels(esoph$alcgp), labels = c("0-39g/day",rep(">=40g/day",3)))
esoph$tob <- factor(esoph$tobgp, levels(esoph$tobgp), labels = c("0-9g/day",rep(">=10g/day",3)))
                    