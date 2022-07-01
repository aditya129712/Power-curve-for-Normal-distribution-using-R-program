#Programming in R for case 1
sigma=5
sigma
n=100
n
sd=sigma/sqrt(n)
sd
k1=qnorm(0.99,36.25,sd)
k1
mu=c(37.00,37.05,37.10,37.15,37.20,37.25,37.30,37.35,37.40,37.45,37.50,37.55,37.60,37.65,37.70,37.75,37.80,37.85,37.90,37.95,38.00,38.05,38.10,38.15,38.20)
mu
power=mat.or.vec(25,1)
power1=mat.or.vec(25,1)
for(i in 1:25){
  power[i]=pnorm(k1,mu[i],sd)
  power
  power1[i]=1-power[i]}
power1
plot(mu,power1)


#Programming in R for case 2
sigma=5
sigma
n=100
n
sd=sigma/sqrt(n)
sd
k2=qnorm(0.01,36.25,sd)
k2
mu=c(30.50,30.70,30.90,31.10,31.30,31.50,31.70,31.90,32.10,32.30,32.50,32.70,32.90,33.10,33.30,33.50,33.70,33.90,34.10,34.30,34.50,34.70,34.90,35.10,35.30)
mu
power=mat.or.vec(25,1)
power
for(i in 1:25){
  power[i]=pnorm(k2,mu[i],sd)}
power
plot(mu,power)





#Programming in R for case 3
sigma=5
sigma
n=100
n
sd=sigma/sqrt(n)
sd
k3=qnorm(0.005,36.25,sd)
k3
k4= qnorm(1-0.005,36.25,sd)
k4
mu=c(30.50,30.70,30.90,31.10,31.30,31.50,31.70,31.90,32.10,32.30,32.50,32.70,32.90,33.10,33.30,33.50,33.70,33.90,34.10,34.30,34.50,34.70,34.90,35.10,35.30,37.00,37.05,37.10,37.15,37.20,37.25,37.30,37.35,37.40,37.45,37.50,37.55,37.60,37.65,37.70,37.75,37.80,37.85,37.90,37.95,38.00,38.05,38.10,38.15,38.20)
mu
power2=mat.or.vec(50,1)
for(i in 1:50){
  power2[i]=pnorm(k3,mu[i],sd)+(1-pnorm( k4,mu[i],sd)) }
power2
plot(mu,power2)





