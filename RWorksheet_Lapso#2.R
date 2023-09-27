#1
operatorVector 
#1a
neg5 <- c(-5:5, 5)
neg5
#result >>> [1] -5 -4 -3 -2 -1  0  1  2  3  4  5  5
#describe

#1b
x1 <- 1:7
x
#value of x >>> [1] 1 2 3 4 5 6 7

#2
one_three <- seq(1, 3, 0.2)
one_three
#result >>>  [1] 1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0
#describe


#3
workers_age <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,
                 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35,
                 24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26,
                 18)

#3a
elmthr <- workers_age[3]
#>>> [1] 22
elmfr <- workers_age[4]
#>>> [1] 36

#3b
paste(elmthr, elmfr)

#3c
exelm <- c(36, 31) #>>> 
exelm #>>> [1] 36 31

new_workers_age <- workers_age[!workers_age %in% exelm]
print(new_workers_age)
#>>>  [1] 34 28 22 27 18 52 39 42 29 35 27 22 37 34 19 20 57 49 50 37 46 25 17 37 43 53 41 51 35 24 33 41 53 40 18 44 38 41 48
#[40] 27 39 19 30 61 54 58 26 18

#4
names(x) <- c("first"=3, "second"=0, "third"=9)
names(x)

#[1] "3" "0" "9" NA  NA  NA  NA 

#4a-b
x[c("first", "third")]
#>>> <NA> <NA> 
#NA   NA
#describe


#5
x2 <- seq(-3,2)
x2 
#>>> [1] -3 -2 -1  0  1  2

#5a
x2[2] <- 0
x2
#>>> [1] -3  0 -1  0  1  2
#describe


#6
dieselFuel <- data.frame(
  month = c("price per liter(PhP)", "purchase quantity(Liters)"),
  Jan = c(52.50 , 25),
  Feb = c(57.25 , 30),
  March = c(60.00 , 40),
  Apr = c(65.00 , 50),
  May = c(74.25 , 10),
  June = c(54.00 , 45)
)
dieselFuel
tablefuel <- dieselFuel("month", "Jan", "Feb", "March", "Apr", "May", "June")
View(dieselFuel)


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

datarivers <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers),
                sd(rivers), min(rivers), max(rivers))
datarivers
#>>> results
#[1]    141.0000  83357.0000    591.1844    425.0000 243908.4086    493.8708
#[7]    135.0000   3710.0000







##hakdog
#vector <- removeList[c(-1,-2,-3)]





