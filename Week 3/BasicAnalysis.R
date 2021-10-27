#### Histogram ####
library(MASS)
?iris

#Which parameter is normally distributed?
truehist(iris$Sepal.Length)
truehist(iris$Sepal.Width)
truehist(iris$Petal.Length)
truehist(iris$Petal.Width)

#### Q-Q plot ####
library(car)

#Which parameter is normally distributed?
qqPlot(iris$Sepal.Length)
qqPlot(iris$Sepal.Width)
qqPlot(iris$Petal.Length)
qqPlot(iris$Petal.Width)

#### Test of Normality ####

#Which parameter is normally distributed?
shapiro.test(iris$Sepal.Length)
shapiro.test(iris$Sepal.Width)
shapiro.test(iris$Petal.Length)
shapiro.test(iris$Petal.Width)

#### Data transformation ####
dat <- rnorm(100,mean = 5,sd = 2) # Generate 100 numbers with mean = 5 and sd = 2 (Normal distribution)
truehist(dat)

expdat <- exp(dat) #e^x ~ 2.718282^x
truehist(expdat)

shapiro.test(dat)
shapiro.test(expdat)

tdat <- log10(expdat + 1) # + 1 is important because log10(0) is undefined!
truehist(tdat)
shapiro.test(tdat)

#### Summarize categorical value ####
rows <- sample(nrow(iris),91, replace = F) # Sample 91 rows from the iris dataset
IR <- iris[rows,]

tb <- table(IR$Species)
print(tb)

percent <- round(100 * tb/nrow(IR),1)
print(percent)

paste0(tb," (",percent,")")

#### Summarize numerical value (Mean SD) ####
m <- round(mean(IR$Sepal.Length),1)
s <- round(sd(IR$Sepal.Length),1)
paste0(m, " ± ", s)

lm <- round(mean(exp(IR$Sepal.Length)),1)
ls <- round(sd(exp(IR$Sepal.Length)),1)
paste0(lm, " ± ", ls) # SD >= mean implying deviation from normal distribution

llm <- round(mean(log10(1+ exp(IR$Sepal.Length))),1)
lls <- round(sd(log10(1+exp(IR$Sepal.Length))),1)
paste0(llm, " ± ", lls)

#### Summarize numerical value (Median) ####
q <- round(quantile(IR$Sepal.Length,c(0.5,0.25,0.75)),1)
paste0(q[1]," (",q[2],"-",q[3],")")
paste0(median(IR$Sepal.Length)," (",min(IR$Sepal.Length),"-",max(IR$Sepal.Length),")")

lq <- round(quantile(exp(IR$Sepal.Length),c(0.5,0.25,0.75)),1)
paste0(lq[1]," (",lq[2],"-",lq[3],")")
paste0(round(median(exp(IR$Sepal.Length)),1)," (",round(min(exp(IR$Sepal.Length)),1),
       "-",round(max(exp(IR$Sepal.Length)),1),")")

#### One-sample proportion test ####
binom.test(x = 71, n = 100, p = 0.5) # Exact test

prop.test(x = 71, n = 100, p = 0.5) # Estimation 

#### One-sample mean test ####
dat <- round(rnorm(n = 100, mean = 107, sd = 5),1) # Simulate the survey data
truehist(dat)

t.test(dat, mu = 105) # Parametric test
wilcox.test(dat, mu = 105) # Non-parametric test

dat2 <- round(runif(n = 100, min = 92, max = 122 ),1) # Simulate the survey data. Not normal distribution
truehist(dat2)
mean(dat2)

t.test(dat2, mu = 105) # Parametric test
wilcox.test(dat2, mu = 105) # Non-parametric test

#### Difference in proportions ####
smoke <- 510
smoke_CA <- 400
non_smoke <- 540
non_smoke_CA <- 300

smoke_not_CA <- smoke - smoke_CA
non_smoke_not_CA <- non_smoke - non_smoke_CA

prop.test(x = c(non_smoke_CA,smoke_CA), n = c(non_smoke,smoke))

m <- matrix(data = c(non_smoke_CA, non_smoke_not_CA, smoke_CA, smoke_not_CA) , nrow = 2)
print(m)

chisq.test(m)

#### Difference in means ####
male <- round(rnorm(n = 100 ,mean = 107, sd = 5),1)
female <- round(rnorm(n = 100, mean = 105, sd = 4.5),1)

truehist(male)
truehist(female)

t.test(male,female, var.equal = F, paired = F)
wilcox.test(male,female, paired = F)

#paired = T for dependent samples (e.g. Before-After mearsurements)

#### Contingency table from counts ####
ctable <- matrix(c(400,150,100,320), nrow = 2 , byrow = T) # Matrix fill data by column by default
dimnames(ctable) <- list(c("Smoker","Non-smoker"),c("Cancer","No cancer"))
print(ctable)

matrix(c(400,150,100,320), nrow = 2)

#### Contingency table from raw data ####

#Simulate the data
rawdat <- data.frame(patientID = 1:(400+150+100+320),
                     smoking = c(rep("Smoker",400+150),rep("Non-smoker",100+320)),
                     status = c(rep("Cancer",400),rep("No cancer",150),rep("Cancer",100),rep("No cancer",320)))
View(rawdat)
summary(rawdat)

ctable2 <- table(rawdat[,c("smoking","status")])
print(ctable2)

#### Test of difference proportions ####

chisq.test(ctable2)
fisher.test(ctable2)

small <- matrix(data = c(1,39,2,20), nrow = 2, byrow = T)
print(small)

chisq.test(small)
fisher.test(small)

#### Measure of association
library(epitools)

#Re-arrange data to match epitools requirement
rawdat$status <- factor(rawdat$status, levels = c("No cancer","Cancer"))
rawdat$smoking <- factor(rawdat$smoking, levels =c("Non-smoker","Smoker"))

ctable3 <- table(rawdat[,c("smoking","status")])
print(ctable3)

res <- oddsratio(ctable3, method = "wald")
print(res)

res2 <- riskratio(ctable3, method = "wald")

print(res2)

#### Correlation between numerical variables ####
?iris

cor.test(iris$Sepal.Length,iris$Petal.Width) #Paired values
cor.test(~Sepal.Length + Petal.Width, iris) #Data.frame

cor.test(iris$Sepal.Length,iris$Petal.Width, method = "s") #Non-paramatric
cor.test(iris$Sepal.Length,iris$Petal.Width, method = "k") #Non-paramatric

#### Simple linear regression ####

m <- lm(Sepal.Length ~ Petal.Width, iris)
print(m)
summary(m)

#### Multivariate linear regression ####

mm <- lm(Sepal.Length ~ Sepal.Width + Petal.Length + Petal.Width + Species , iris)
print(mm)
summary(mm)

#### Inhibit Interpretation/Conversion of Objects ####
mlog <- lm(Sepal.Length ~ I(log10(1+Petal.Width)), iris)
print(mlog)
summary(mlog)

msq <- lm(Sepal.Length ~ I(Petal.Width^2), iris) # Quadratic model
print(msq)
summary(msq)

#### Interaction ####
mint <- lm(Sepal.Length ~ Petal.Width*Species, iris)
print(mint)
summary(mint)

#### Model selection ####
library(MASS)

sm <- stepAIC(mint)
print(sm)
summary(sm)

#### Model selection ANOVA ####

anova(m,mint)
anova(m,mm)

#### Prediction with linear regression ####
newdat <- iris[4:9,]
print(newdat)

predict(mm, newdata = newdat)

#### Logit ####
library(ggplot2)

pt <- 10^4 #Try changing number of point

dat <- data.frame(id = 1:pt, prob = seq(0,1,length.out = pt))
ggplot(dat,aes(x = id, y = prob))+
  geom_line()

dat$odds <- dat$prob/(1-dat$prob)
ggplot(dat,aes(x = id, y = odds))+
  geom_line()

dat$logit <- log(dat$odds)
ggplot(dat,aes(x = id, y = logit))+
  geom_line()

#### Setting a logistic regression model ####
#From https://towardsdatascience.com/how-to-do-logistic-regression-in-r-456e9cfec7cd
library(AER)
data(Affairs)
?Affairs

Affairs$ynaffair[Affairs$affairs >  0] <- 1
Affairs$ynaffair[Affairs$affairs == 0] <- 0
Affairs$ynaffair <- factor(Affairs$ynaffair,levels=c(0,1), labels=c("No","Yes"))
table(Affairs$ynaffair)

lgm <- glm(ynaffair ~ gender + age + yearsmarried + children 
           + religiousness + education + occupation +rating,
           data=Affairs, family="binomial")
print(lgm)
summary(lgm)

#### Reporting odds ratio from regression results ####

exp(cbind(OR = coef(lgm), confint(lgm)))

#### Logistic regression prediction ####

newdat <- Affairs[c(4,5,9,10),]
print(newdat)
predict(lgm, newdata = newdat, type = "response")
