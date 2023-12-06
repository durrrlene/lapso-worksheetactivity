library(hmisc)
library(pastecs)

studentRes <- data.frame(
  Student <- c(1:10),
  Pre <- c(55, 54, 47, 57, 51, 61, 57, 54, 63, 58),
  Post <- c(61, 60, 56, 63, 56, 63, 59, 56, 62, 62)
)
colnames(studentRes) <- c("Student", "Pre-test", "Post-test")

View(studentRes)


agri <- c(10,10,10, 20,20,50,10,20,10,50,20,50,20,10)
ordered(agri)




exercise_levels <- c("l", "n", "n", "i", "l", "l", "n", "n", "i", "l")


exercise_factor <- factor(exercise_levels, levels = c("n", "l", "i"),
                          labels = c("none", "light", "intense"))

exercise_factor



state <- c("tas", "sa", "qld", "nsw", "nsw", "nt", "wa", "wa", "qld",
           "vic", "nsw", "vic", "qld", "qld", "sa", "tas", "sa", "nt",
           "wa", "vic", "qld", "nsw", "nsw", "wa", "sa", "act", "nsw",
           "vic", "vic", "act")
factor(state)
