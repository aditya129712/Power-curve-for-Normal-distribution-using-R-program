#Programming in R for case 1
a = qchisq(0.95,16,0)
a
var = 3
k1 = var*a
k1
sigma1=c(3.1,3.2,3.3,3.4,3.5,3.6,3.7,3.8,3.9,4.0,4.1,4.2,4.3,4.4,4.5,4.6,4.7,4.8,4.9,5.0,5.1,5.2,5.3,5.4,5.5,5.6,5.7,5.8,5.9,6.0)
sigma11 = k1/sigma1
power = mat.or.vec(30,1)
power1 = mat.or.vec(30,1)
for(i in 1:30){
  power[i] = pchisq(sigma11[i],16,0)
  power1[i] = 1-power[i]}
power1
plot(sigma1,power1)


#Programming in R for case 2
a = qchisq(0.05,16,0)
a
var = 3
k1 = var*a
k1
sigma1 = c(2.01,2.02,2.03,2.04,2.05,2.06,2.07,2.08,2.09,2.10,2.11,2.12,2.13,2.14,2.15,2.16,2.17,2.18,2.19,2.20,2.21,2.22,2.23,2.24,2.25,2.26,2.27,2.28,2.29,2.30)
sigma11 = k1/sigma1
power = mat.or.vec(30,1)
for(i in 1:30){
  power[i] = pchisq(sigma11[i],16,0)}
power
plot(sigma1,power)



#Programming in R for case 3
c = qchisq(0.025,16,0)		
d = qchisq(0.975,16,0)
var = 3				
k3 = var*c		
k4 = var*d
k3
k4
sigma1=c(0.9,1,1.1,1.2,1.3,1.4,1.5,1.6,1.7,1.8,1.9,2,2.1,2.3,2.4,2.5,2.6,2.7,2.8,2.9,3.1,3.2,3.3,3.4,3.5,3.6,3.7,3.8,3.9,4.0,4.1,4.2,4.3,4.4,4.5,4.6,4.7,4.8,4.9,5.0)
sigma11 = k3/sigma1
sigma11
sigma22 = k4/sigma1
sigma22
power1 = mat.or.vec(40,1)
for(i in 1:40){
  power1[i] = pchisq(sigma11[i],16,0)+(1-pchisq(sigma22[i],16,0))}
power1
plot(sigma1,power1)
