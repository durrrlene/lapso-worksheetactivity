#1. Create a data frame for the table below. Show your solution.
#a. Compute the descriptive statistics using different packages (Hmisc and pastecs).
#Write the codes and its result.

library(Hmisc)
library(pastecs)
studentData<- data.frame(
  Student <- c(1:10),
  preTest <- c(55,54,47,57,51,61,57,54,63,58),
  postTest <- c(61,60,56,63,56,63,59,56,62,61))

colnames(studentData) <- c("Student", "Pre-Test","Post-Test")
studentData

#2. The Department of Agriculture was studying the effects of several levels of a fertilizer on the growth of a plant. 
#For some analyses, it might be useful to convert the fertilizer levels to an ordered factor.

fertLevels <- c(10,10,10, 20,20,50,10,20,10,50,20,50,20,10.)
ordered(fertLevels)

#3. Abdul Hassan, president of Floor Coverings Unlimited, has asked you to study the exercise levels undertaken by 
#10 subjects were “l”, “n”, “n”, “i”, “l” , “l”, “n”, “n”, “i”, “l” ; n=none, l=light, i=intense.

exLevels <- c("l", "n", "n", "i", "l", "l", "n", "n", "i", "l")
factor_exLevels<- factor(exLevels)
levels(factor_exLevels) <- c("none","light","intense")
factor_exLevels

#4a.a. Apply the factor function and factor level. Describe the results.

state <- c("tas", "sa", "qld", "nsw", "nsw", "nt", "wa", "wa", "qld",
           "vic", "nsw", "vic", "qld", "qld", "sa", "tas", "sa", "nt",
           "wa", "vic", "qld", "nsw", "nsw", "wa", "sa", "act", "nsw",
           "vic", "vic", "act")
statef<-factor(state)
levels(statef) 
statef

#5. From #4 - continuation:
#• Suppose we have the incomes of the same tax accountants in another vector (in suitably large units of money).

incomes <- c(60, 49, 40, 61, 64, 60, 59, 54,
             62, 69, 70, 42, 56, 61, 61, 61, 58, 51, 48,
             65, 49, 49, 41, 48, 52, 46, 59, 46, 58, 43)

incmeans <- tapply(incomes, statef, mean)
incmeans

data <- data.frame(State = statef, Income = incomes)
data

#b. Copy the results and interpret
#act      nsw       nt      qld       sa      tas 
#44.50000 57.33333 55.50000 53.60000 55.00000 60.50000 
#vic       wa 
#56.00000 52.25000 

#>This result shows the average income of the different/individual states in Australia.

-----
#6.Calculate the standard errors of the state income means (refer again to number 3)  
stdError <- function(x) sqrt(var(x) / length(x))
incster <- tapply(incomes, statef, stdError)

incster

#b, Interpret the result

#>The standard error of the state incomes mean of different states

#On this dataset, the "Titanic" data is not available on the version of my RStudio, 
#therefore I downloaded a .csv file from the internet. Link where I get the 
#'Titanic.csv': https://github.com/datasciencedojo/datasets/blob/master/titanic.csv

-----
#7. Use the titanic dataset.
#a. subset the titatic dataset of those who survived and not survived. Show the codes and its result.
library(readr)
titanic <- read_csv("C:/Users/steve/Documents/lapso-worksheetactivity/worksheet#5/titanic.csv")
View(titanic)

survived_passengers <- subset(titanic, Survived == "1")
head(survived_passengers)

not_survived_passengers <- subset(titanic, Survived == 0)
head(not_survived_passengers)


#8. The data sets are about the breast cancer Wisconsin. The samples arrive periodically
#as Dr. Wolberg reports his clinical cases. The database therefore reflects this
#chronologihttps://drive.google.com/file/d/16MFLoehCgx2MJuNSAuB2CsBy6eDIIru/view?usp=drive_link)

breastCancer <- read_csv("C:/Users/steve/Documents/lapso-worksheetactivity/worksheet#5/breastcancer_wisconsin.csv")
breastCancer

str(breastCancer)

#a. describe what is the dataset all about.

#>The 'BreastCancer.csv' file shows the different quantity form and what can be found on a cyst of a cancer patient. 


#d. Compute the descriptive statistics using different packages. Find the values of:
  
#d.1 Standard error of the mean for clump thickness.

clump_thickness <- breastCancer$clump_thickness

stEclump_thickness <- sd(clump_thickness) / sqrt(length(clump_thickness))
stEclump_thickness

#d.2
marginal_adhesion <- breastCancer$marginal_adhesion

coefVar_margAd <- (sd(marginal_adhesion) / mean(marginal_adhesion)) * 100
coefVar_margAd

#d.3
bareNucNULLS <- sum(is.na(breastCancer$bare_nucleoli))
bareNucNULLS
#[1] 15 I do not know why the result is 15, when I check the data, the 'bare_nucleoli' does
#not contain any NULL values.


-----
#d.4
blandChrom <- breastCancer$bland_chromatin
Mean_blandChrom <- mean(blandChrom)
Mean_blandChrom

stdDev_blandChrom <- sd(blandChrom)
stdDev_blandChrom

#d.5
shapeUniformity <- breastCancer$shape_uniformity

confidenceInt_shapeUniformity <- t.test(shapeUniformity)$conf.int
confidenceInt_shapeUniformity

#d.
str(breastCancer) #one of my knowledge to get the attributes is by using the str() function.

BC_attributes <- ncol(breastCancer)
BC_attributes


#9
#As I install the 'install.packages("AppliedPredictingModeling")' it says that
#the package is not available on the R Version I have. Therefore, once again, I downloaded
#a file from the internet so I can gather data, as what the worksheet asking for our activity.

library(readr)
abalone <- read_csv("C:/Users/steve/Documents/lapso-worksheetactivity/worksheet#5/abalone.csv")

head(abalone)

summary(abalone)
