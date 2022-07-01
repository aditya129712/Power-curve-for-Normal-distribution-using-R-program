#Programming in R for case 1
sigma=2
sigma
n=25
n
sd=sigma/sqrt(n)
sd
k1=qnorm(0.95,2,sd)
k1
mu=c(3.01,3.02,3.03,3.04,3.05,3.06,3.07,3.08,3.09,3.10,3.11,3.12,3.13,3.14,3.15,3.16,3.17,3.18,3.19,3.20,3.21,3.22,3.23,3.24,3.25)
mu
power=mat.or.vec(25,1)
power
power1=mat.or.vec(25,1)
power1
for(i in 1:25){
  power[i]=pnorm(k1,mu[i],sd)
  power
  power1[i]=1-power[i]} 
power1
plot(mu,power1)

#Programming in R for case 2
sigma=2
sigma
n=25
n
sd=sigma/sqrt(n)
sd
k2=qnorm(0.05,2,sd)
k2
mu=c(1.60,1.61,1.62,1.63,1.64,1.65,1.66,1.67,1.68,1.69,1.70,1.71,1.72,1.73,1.74,1.75,1.76,1.77,1.78,1.79,1.80,1.81,1.82,1.83,1.84)
mu
power=mat.or.vec(25,1)
power
for(i in 1:25){
  power[i]=pnorm(k2,mu[i],sd)}
power
plot(mu,power)


