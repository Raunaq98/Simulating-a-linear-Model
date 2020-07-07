#Consider a linear model :


#  Y = B0 + B1.X + e
#  Y is dependent variable
#  X is independent variable in normal distribution with sd=1 ie. X = N(0,1^2)
#  B0 is intercept constant of value 0.5
#  B1 is slope constant of value 2
#  e is noise in the form of normal distrubution with sd=2 ie. e = N(0,2^2)


set.seed(1)   #when working with rnorm, always set seed
x <- rnorm(100,0,1)
e <- rnorm(100,0,2)
y<- 0.5 + x*2 + e

plot(x,y)

summary(y)
#   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#-5.4816 -1.1493  0.7582  0.6422  2.3404  6.1534 


# if Y had dependent on a variable such as sex which has M or F, we wouldve defined 
# X in terms of a binomial distribution with n=1 and p=0.5
# ie. probability of being male is 0.5

set.seed(2)
z <- rbinom(100,1,0.5)
y<- 0.5 +z*2 + e
plot(z,y)
