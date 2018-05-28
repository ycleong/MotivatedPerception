# ipak function: install and load multiple R packages.
# check to see if packages are installed. Install them if they are not, then load them into the R session.
# https://gist.github.com/stevenworthington/3178163
ipak <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg)) 
    install.packages(new.pkg, dependencies = TRUE)
  sapply(pkg, require, character.only = TRUE)
}

# Standard Error
sem <- function(x) 
  {sd(x,na.rm = T) / sqrt(length(x))}

# 95% CI based on normal distribution
ci95 <- 
  function(x) {sem(x) * 1.96}

# Calcuate 95% CI based on boostrap
ci.low <- 
  function(x,na.rm=T) {mean(x,na.rm=na.rm) - quantile(bootstrap(1:length(x),10000,theta,x,na.rm=na.rm)$thetastar,.025,na.rm=na.rm)}
ci.high <- 
  function(x,na.rm=T) {quantile(bootstrap(1:length(x),10000,theta,x,na.rm=na.rm)$thetastar,.975,na.rm=na.rm) - mean(x,na.rm=na.rm)}

# Calculate Theta
theta <- function(x,xdata,na.rm=T) 
  {mean(xdata[x],na.rm=na.rm)}

# Color Palette
myPalette <- c("#C44E52","#4C72B0","#C44E52","#4C72B0")

mediation_bootstrap = function(x, med, y, iterations = 1000){
  
  # setup some parameters
  N = length(x)
  df = as.data.frame(cbind(x, med, y))
  boot_ab = vector(length=iterations) # set up empty vector for storage
  
  # now go through a loop where we'll randomly sample, and get a a*b value
  for (i in 1:iterations){
    ind_boot = sample(c(1:N), N, replace=TRUE) # random indices
    df_boot = df[ind_boot,]
    
    iter_a = lm(df_boot$med ~ df_boot$x)$coefficients[2] # coeff of x
    iter_b = lm(df_boot$y ~ df_boot$med + df_boot$x)$coefficients[2] # coeff of mediator
    
    boot_ab[i] = iter_a * iter_b
  }
  
  # create plot
  hist(boot_ab,main=paste("Bootstrapped a*b, with",iterations,"iterations"),col="red");
  abline(v=0, col='black', lty=2, lwd=2)
  abline(v=c(quantile(boot_ab,c(.025,.975))), col='blue', lty=3)
  
  # Print results
  print("Bootstrap results:",quote=F);
  print(c(ab=mean(boot_ab)));
  print(quantile(boot_ab,c(.025,.975)))
  
  return(boot_ab)
}

# print things to 1 decimal point
scaleFUN <- function(x) sprintf("%.1f", x)
