# Bio 360 Lab 1 Heliconia

# By Celia Hein

# install.packages("Rcmdr", dependencies = TRUE)

library(Rcmdr)

# import dataset
Heliconia <- 
  read.table("/Users/celiahein/Desktop/Bio360Summer2021/Lab1Heliconia/Heliconia.txt",
             header=TRUE, stringsAsFactors=TRUE, sep="\t", na.strings="", dec=".", 
             strip.white=TRUE)

# Rstudio as a calculator
3 + 2 # addition
3 / 5 # division
3^2 # raise 3 to the power of 2
sqrt(9) # square root

a <- 3 # create object a and give it a value
b <- 2 # create object b and give it a value
c <- a + b # object c is the sum or a and b
c # typing the name of the object prints its # value

Heliconia # Call the object you created by its name.

summary(Heliconia) 

# make an overall histogram of flower length
with(Heliconia, Hist(length, scale="frequency", breaks="Sturges", 
                     col="darkgray"))

# histogram plotted by groups
with(Heliconia, Hist(length, groups=variety, scale="frequency", 
                     breaks="Sturges", col="darkgray"))

# make an overall boxplot
Boxplot( ~ length, data=Heliconia, id=list(method="y"))

# boxplot by groups
Boxplot(length~variety, data=Heliconia, id=list(method="y"))

# overall summary
numSummary(Heliconia[,"length", drop=FALSE], statistics=c("mean", "sd", 
                                                          "IQR", "quantiles"), quantiles=c(0,.25,.5,.75,1))

# summarize by groups
numSummary(Heliconia[,"length", drop=FALSE], groups=Heliconia$variety, 
           statistics=c("mean", "sd", "IQR", "quantiles"), quantiles=c(0,.25,.5,.75,1))




