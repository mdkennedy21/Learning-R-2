#R Introduction Workshop
#September 2019
######################################
#Comments are code that begin with '#' and aren't run when you run a .R file.
#Comment your code frequently as you work so you can easily return to your document and remember what you did.
#To run code that's commented, remove the '#'.
#Example:
#install.packages("ggplot2")
######################################
#Define Variables:
x <- 1
y = 2
z <- 3
#Everything is always case sensitive - the variables defined above are different from the ones below.
X <- 11
Y <- 12
Z <- 13
#Your arrow direction matters.
n -> 4
4 <- n
n <- 4
######################################
#Basic Arithmetic:
x + y
x - z
x*y
x/z
#OR
(X + Y)
(X - Z)
(X*Y)
(X/Z)
#Square Roots
sqrt(z)
#Exponents
3^2 
#Absolute Values
abs(-15)
Abs(-15) #What happens when you run this line? Why?
######################################
#Install Packages:
install.packages("praise")
#Load Packages:
library(praise)
#library(ggplot2)
#Run Command from Library:
praise()
#Function documentation
?mean
######################################
#Setting the Working Directory Example
######################################
#Reading in Data from Github
data <- read.csv("https://raw.githubusercontent.com/mdkennedy21/test/master/SegalVoteLevel.csv")
#Renaming a Dataset
d <- data
#Check the names of the variables in the dataset
names(d)
#Check how big the dataset is
dim(d) #Rows, Columns
#Summary statistics for each of the variables in the dataset
summary(d)
#Summary statistics for just one of the variables
summary(d$mqscore)
summary(mqscore) #You always need to call to the data and the variable for the command to work.
#Median value for variable
median(d$mqscore, na.rm = TRUE) #"na.rm = TRUE" computes the median excluding the NA values, which we can see in the summary statistics is n=122.
#Frequency distribution table
table(d$justice)

#Make a table to see how two variables are related
vote.justice <- table(d$vote, d$justice)
vote.justice #View table
######################################
#Simple Plots
#Barplot
barplot(vote.justice)
#Histogram
hist(d$mqscore)
#Generic plot function
plot(d$ideology)
#More Advanced Plotting
#library(ggplot2)
plot1 <- ggplot(d, aes(d$ideology)) + 
  geom_histogram(na.rm = TRUE, fill = '#F0E442') +
  xlab("Ideology") +
  ylab("Count") +
  labs(title = "Sample Plot 1")
plot1 #View plot
summary(d$ideology)
######################################
#Useful R commands - adapted from http://www.sr.bham.ac.uk/~ajrs/R/r-function_list.html (and borrowed by me from Mikaela Karstens' 2018 R-Workshop File, available on her Github. :) )
#Math
log() #natural log
exp()
sqrt()
sum()
#General
length(x) #Return no. of elements in vector x
range(x) #Returns the minimum and maximum of x
ls() #List objects in current environment
cbind() #Combine vectors by row/column
abs(x) #The absolute value of "x"
seq(1,10,0.4) #Generate a sequence (1 -> 10, spaced by 0.4)
sign(x) #Returns the signs of the elements of x
sort(x) #Sort the vector x
order(x) #List sorted element numbers of x
options() #Set options to control how R computes & displays results
view(My.Data) #View dataset
#Graphics
help(package=graphics) #List all graphics functions
plot() #Generic function for plotting
barplot() #Produces a bar plot
par() #Set or query graphical parameters
points(x,y) #Add another set of points to an existing graph
abline() #Adds a straight line to an existing graph
lines() #Join specified points with line segments
hist(x) #Plot a histogram of x

# Statistics
help(package=stats) #List all stats functions
cor.test() #Perform correlation test
cumsum(); cumprod(); cummin(); cummax() #Cumuluative functions for vectors
density(x) #Compute kernel density estimates
loess(); lowess() #Scatter plot smoothing
mad() #Calculate median absolute deviation
mean(x); weighted.mean(x); median(x); min(x); max(x); quantile(x)
rnorm(); runif() #Generate random data with Gaussian/uniform distribution
sd() #Calculate standard deviation
summary(x) #Returns a summary of x: mean, min, max etc.
t.test() #Student's t-test
var() #Calculate variance
sample() #Random samples & permutations
qqplot() #Quantile-quantile plot

######################################
#Clearing out the environment example


