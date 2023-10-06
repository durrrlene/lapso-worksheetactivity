      #1
LETTERS <- c("A","B","C","D","E","F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z")

LETTERS

letters <- c("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z")

#1a
head(LETTERS, 11)

#1b
indices <- c(1,3,5,7,9,11,13,15,17,19,21,23,25)

oddNumLetters <- LETTERS[indices]
print(oddNumLetters)

#1c
indices <- c(1,5,9,15,21)
vowels <- LETTERS[indices]
print(vowels)

#1d
tail(letters, 5)

#1e
centletters <- letters[16:23]
centletters

#2a-b
#withoutframe
city <- c("Tuguegarao City", "Manila", "Iloilo", "Tacloban", "Samal Island", "Davao City")
temp <- c(42, 39, 34, 34, 30, 27)

city
temp

#2c
AprilTempRes <- data.frame (
  city = c("Tuguegarao City", "Manila", "Iloilo", "Tacloban", "Samal Island", "Davao City"),
  temp = c(42, 39, 34, 34, 30, 27)   
)
#2d
colnames(AprilTempRes) <- c("City", "Temperature")

print(AprilTempRes)
View(AprilTempRes)

#2e
str(AprilTempRes)

#2f
rows <- AprilTempRes[c(3, 4),]
rows

AprilTempRes <- (city)

#2g
high_temp <- max(AprilTempRes)
low_temp <- min(AprilTempRes)      

high_temp
low_temp


#---------------------------------MATRICES--------------------------
#2a
firstMat <- matrix(c(1:8, 11:14), ncol=4, nrow=3)    

#2b
secMat <- firstMat * 2
secMat

#2c
row2 <- secMat[2, ]
row2

#2d
colsthfr <- secMat[1:2, 3:4]
colsthfr

#2e
colstwthr <- secMat[3, 2:3]
colstwthr

#2f
colsfr <- secMat[, 4]
colsfr

#2g
colnames(secMat) <- c("uno", "dos", "tres", "quatro")
rownames(secMat) <- c("isa", "dalawa", "tatlo")

print(secMat)

#2h
dim(firstMat) <- c(6, 2)
firstMat



#---------------------------------ARRAYS--------------------------

#3
mainArray <- array(c(1, 2, 3, 6, 7, 8, 9, 0, 3, 4, 5, 1))
mainArray

#3a
repEach <- rep(c(1, 2, 3, 6, 7, 8, 9, 0, 3, 4, 5, 1), c(2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2))
repEach

#or
repEach <- rep(c(1, 2, 3, 6, 7, 8, 9, 0, 3, 4, 5, 1), each = 2)
repEach

#3a[with dim]
arrRow <- array(repEach, dim = c(2, 4, 3))
arrRow

#3b
dim(arrRow)

#3c
dimnames(arrRow) <- list(c("a", "b"), c("A", "B", "C", "D"), c("1st-Dimensional Array", "2nd-Dimensional Array", "3rd-Dimensional Array"))

print(arrRow)


