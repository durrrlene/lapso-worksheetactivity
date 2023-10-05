      #1
#1a
neg5 <- c(-5:5)
neg5
#result >>> [1] -5 -4 -3 -2 -1  0  1  2  3  4  5  5
#>>>[DESCRIBE] It sequence by 1 from -5 to 5. 



#1b
x <- 1:7
x
#value of x >>> [1] 1 2 3 4 5 6 7


      #2
one_three <- seq(1, 3, 0.2)
one_three
#result >>>  [1] 1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0
#[DESCRIBE] The value inside one_three's object adds by 0.2. 



      #3
workers_age <- list(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,
                    22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35,
                    24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26,
                    18)
workers_age

#3a
elmthr <- workers_age[3]
elmthr
#[[1]]
#[1] 22

elmfr <- workers_age[4]
elmfr
#[[1]]
#[1] 36

#3b
paste(elmthr, elmfr)
#[1] "22 36"

#3c
new_workers_age <- workers_age[c(-4,-12)]
print(new_workers_age)
#[[1]]
#[1] 34

#[[2]]
#[1] 28

#[[3]]
#[1] 22

#[[4]]
#[1] 27

#[[5]]
#[1] 18

#[[6]]
#[1] 52

#[[7]]
#[1] 39

#[[8]]
#[1] 42

#[[9]]
#[1] 29

#[[10]]
#[1] 35

#[[11]]
#[1] 27

#[[12]]
#[1] 22

#[[13]]
#[1] 37

#[[14]]
#[1] 34

#[[15]]
#[1] 19

#[[16]]
#[1] 20

#[[17]]
#[1] 57

#[[18]]
#[1] 49

#[[19]]
#[1] 50

#[[20]]
#[1] 37

#[[21]]
#[1] 46

#[[22]]
#[1] 25

#[[23]]
#[1] 17

#[[24]]
#[1] 37

#[[25]]
#[1] 43

#[[26]]
#[1] 53

#[[27]]
#[1] 41

# [[28]]
# [1] 51

# [[29]]
# [1] 35

# [[30]]
# [1] 24

# [[31]]
# [1] 33

# [[32]]
# [1] 41

# [[33]]
# [1] 53

# [[34]]
# [1] 40

# [[35]]
# [1] 18

# [[36]]
# [1] 44

# [[37]]
# [1] 38

# [[38]]
# [1] 41

# [[39]]
# [1] 48

# [[40]]
# [1] 27

# [[41]]
# [1] 39

# [[42]]
# [1] 19

# [[43]]
# [1] 30

# [[44]]
# [1] 61

# [[45]]
# [1] 54

# [[46]]
# [1] 58

# [[47]]
# [1] 26

# [[48]]
# [1] 18



      #4
x <- c("first"=3, "second"=0, "third"=9)
x

# first second  third 
#  3      0      9 

#4a-b
accessx <- x[c("first", "third")]
accessx

#first third 
# 3     9 
#[DESCRIBE] The only result is the first and third elementm, as what the command says
# It presents a result that what has been called by the command 



      #5
x <- seq(-3,2)
x 
#>>> [1] -3 -2 -1  0  1  2

#5a-b
x[2] <- 0
x

#>>> [1] -3  0 -1  0  1  2
#[DESCRIBE] >>> after the initialized the second value [2] changed to 0.


      #6
dieselFuel <- data.frame(
  Month <- c("Jan", "Feb", "March", "April", "May", "June"),
  liter <- c("52.50", "57.25", "60.00", "65.00", "74.25", "54.00"),
  purchase <- c("25", "30", "40", "50", "10", "45")
)
colnames(dieselFuel) <- c("Month", "Price per Liter(PhP", "Purchase-quantity(Liters)")
print(dieselFuel)

View(dieselFuel)

#>>>output
#   Month Price per Liter(PhP Purchase-quantity(Liters)
# 1   Jan               52.50                        25
# 2   Feb               57.25                        30
# 3 March               60.00                        40
# 4 April               65.00                        50
# 5   May               74.25                        10
# 6  June               54.00                        45


#6b
wt_mean <- weighted.mean(dieselFuel$Jan, dieselFuel$Feb, dieselFuel$March, dieselFuel$Apr, dieselFuel$May, dieselFuel$June)
wt_mean
#>>> [1] 43.04441



      #7
#> printing rivers in console
#>>> results
#  [1]  735  320  325  392  524  450 1459  135  465  600  330  336  280  315
#[15]  870  906  202  329  290 1000  600  505 1450  840 1243  890  350  407
#[29]  286  280  525  720  390  250  327  230  265  850  210  630  260  230
#[43]  360  730  600  306  390  420  291  710  340  217  281  352  259  250
#[57]  470  680  570  350  300  560  900  625  332 2348 1171 3710 2315 2533
#[71]  780  280  410  460  260  255  431  350  760  618  338  981 1306  500
#[85]  696  605  250  411 1054  735  233  435  490  310  460  383  375 1270
#[99]  545  445 1885  380  300  380  377  425  276  210  800  420  350  360
#[113]  538 1100 1205  314  237  610  360  540 1038  424  310  300  444  301
#[127]  268  620  215  652  900  525  246  360  529  500  720  270  430  671
#[141] 1770

#7c
datarivers <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers),
                sd(rivers), min(rivers), max(rivers))
datarivers
#7b
#>>> results
#[1]    141.0000  83357.0000    591.1844    425.0000 243908.4086    493.8708
#[7]    135.0000   3710.0000



    #8
#8a
library(readr)

#//1stRow>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#8a
powerRank <- c(1:13)
celebName <- c("Tom Cruise", "Rolling Stones", "Oprah Winfrey", "U2", "Tiger Woods", "Steven Spielberg", "Howard Stern", "50 Cent", "Cast of the Sopranos", "Dan Brown", "Bruce Springsteen", "Donald Trump", "Muhammad Ali")
Pay <- c(67, 90, 225, 110, 90, 332, 302, 41, 52, 88, 55, 44, 55)
powerRank

#>>>output
#> [1]  1  2  3  4  5  6  7  8  9 10 11 12 13

celebName

#>>>output
#> [1] "Tom Cruise"           "Rolling Stones"       "Oprah Winfrey"       
#[4] "U2"                   "Tiger Woods"          "Steven Spielberg"    
#[7] "Howard Stern"         "50 Cent"              "Cast of the Sopranos"
#[10] "Dan Brown"            "Bruce Springsteen"    "Donald Trump"        
#[13] "Muhammad Ali"        

Pay

#>>>output
#>[1]  67  90 225 110  90 332 302  41  52  88  55  44  55


#//2ndrow>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
powerRank2 <- c(14:25, NA)
celebName2 <- c("Paul McCartney", "George Lucas", "Elton John", "David Letterman", "Phil Mickelson", "J.K. Rowling", "Brad Pitt", "Peter Jackson", "Dr. Phil McGraw", "Jay Leno", "Celine Dion", "Kobe Bryant", NA)
Pay2 <- c(40, 203, 34, 40, 47, 75, 25, 39, 45, 32, 40, 31, NA)

powerRank2

#>>>output
#> [1] 14 15 16 17 18 19 20 21 22 23 24 25

celebName2

#>>>
#[1] "Paul McCartney"  "George Lucas"    "Elton John"      "David Letterman"
#[5] "Phil Mickelson"  "J.K. Rowling"    "Brad Pitt"       "Peter Jackson"  
#[9] "Dr. Phil McGraw" "Jay Leno"        "Celine Dion"     "Kobe Bryant" 
#[13] NA 

Pay2

#>>>output
#> [1]  40 203  34  40  47  75  25  39  45  32  40  31 NA

#8b
celebName2[celebName2 == "J.K. Rowling"] <- "J.K. Rowling"
powerRank2[celebName2 == "J.K. Rowling"] <- 15
Pay2[celebName2 == "J.K. Rowling"] <- 90

celebName2

#>>>output
# [1] "Paul McCartney"          "George Lucas"            "Elton John"              "David Letterman"         "Phil Mickelson"         
#[6] "J.K. Rowling (Modified)" "Brad Pitt"               "Peter Jackson"           "Dr. Phil McGraw"         "Jay Leno"               
#[11] "Celine Dion"             "Kobe Bryant"             NA   
#[13] NA  

powerRank2

#>>>output
#[1] 14 15 16 17 18 15 20 21 22 23 24 25 NA

Pay2

#>>>
#[1]  40 203  34  40  47  90  25  39  45  32  40  31  NA


#8c
#install.packages("readr")

library(readr)
csv_file <- "PowerRanking.csv"
data <- read.csv(csv_file)



#8d
rowsTenTwen <- data[10:20, ]

save(rowsTenTwen, file = "Ranks.RData")

load("Ranks.RData")
View(rowsTenTwen)

#8e
#>>> I dont know if this is correct, since the result asking are the rows 10-20, therefore
#>>> the table only shows the 10th-13th row and on the next column it shows the 23-25 rows. 



      #9
#9a
library(readxl)
ExcelData <- read_excel("hotels-vienna.xlsx")
ExcelData

#9b
dim(ExcelData)

#[1] 428  24

#9c
#>>country
ExcelData$country

#>>neighboorhood
ExcelData$neighbourhood

#>>price
ExcelData$price

#>>stars
ExcelData$stars

#>>acc_type
ExcelData$accommodation_type

#>>ratings
ExcelData$ratingta

#9d
save(ExcelData, file = "new.RData")
load("new.RData")

#9e
head(ExcelData, 6)
tail(ExcelData, 6)


      #10

fruitsIate1 <- list("apple", "rambutan", "oranges", "grapes", "banana", 
                   "mango", "avocado", "watermelon", "melon", "sarisa")
fruitsIate1
#>>>output
#[[1]]
#[1] "apple"

#[[2]]
#[1] "rambutan"

#[[3]]
#[1] "oranges"

#[[4]]
#[1] "grapes"

#[[5]]
#[1] "banana"

#[[6]]
#[1] "mango"

#[[7]]
#[1] "avocado"

#[[8]]
#[1] "watermelon"

#[[9]]
#[1] "melon"

#[[10]]
#[1] "sarisa"


fruitsIate2 <- append(fruitsIate1, list("atis", "dragonfruit"))
fruitsIate2
#>>>output
#[[1]]
#[1] "apple"

#[[2]]
#[1] "rambutan"

#[[3]]
#[1] "oranges"

#[[4]]
#[1] "grapes"

#[[5]]
#[1] "banana"

#[[6]]
#[1] "mango"

#[[7]]
#[1] "avocado"

#[[8]]
#[1] "watermelon"

#[[9]]
#[1] "melon"

#[[10]]
#[1] "sarisa"

#[[11]]
#[1] "atis"

#[[12]]
#[1] "dragonfruit"


fruitsIate3 <- append(fruitsIate1, list("pineapple", "kiwi", "coconut", "lychee", "strawberry"), after = 5)
fruitsIate3

#>>>output
#># [[1]]
# [1] "apple"

# [[2]]
# [1] "rambutan"

# [[3]]
# [1] "oranges"

# [[4]]
# [1] "grapes"

# [[5]]
# [1] "banana"

# [[6]]
# [1] "pineapple"

# [[7]]
# [1] "kiwi"

# [[8]]
# [1] "coconut"

# [[9]]
# [1] "lychee"

# [[10]]
# [1] "strawberry"

# [[11]]
# [1] "mango"

# [[12]]
# [1] "avocado"

# [[13]]
# [1] "watermelon"

# [[14]]
# [1] "melon"

# [[15]]
# [1] "sarisa"

fruitsIate3[c(-5, -10, -15)]
# [[1]]
# [1] "apple"

# [[2]]
# [1] "rambutan"

# [[3]]
# [1] "oranges"

# [[4]]
# [1] "grapes"

# [[5]]
# [1] "pineapple"

# [[6]]
# [1] "kiwi"

# [[7]]
# [1] "coconut"

# [[8]]
# [1] "lychee"

# [[9]]
# [1] "mango"

# [[10]]
# [1] "avocado"

# [[11]]
# [1] "watermelon"

# [[12]]
# [1] "melon"








