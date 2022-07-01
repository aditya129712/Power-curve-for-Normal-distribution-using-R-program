#Programming in R for case 1
a = qchisq(0.99,50,0)
a
var = 6
k1 = var*a
k1
sigma1 = c(6.3,6.4,6.5,6.6,6.7,6.8,6.9,7.0,7.1,7.2,7.3,7.4,7.5,7.6,7.7,7.8,7.9,8.0,8.1,8.2,8.3,8.4,8.5,8.6,8.7,8.8,8.9,9.0,9.1,9.2)
sigma11 = k1/sigma1
power = mat.or.vec(30,1)
power1 = mat.or.vec(30,1)
for(i in 1:30){
  power[i] = pchisq(sigma11[i],50,0)
  power1[i] = 1-power[i]}
power1
plot(sigma1,power1)



#Programming in R for case 2
a = qchisq(0.01,50,0)
a
var = 6
k1 = var*a
k1
sigma1 = c(2.5,2.6,2.7,2.8,2.9,3.0,3.1,3.2,3.3,3.4,3.5,3.6,3.7,3.8,3.9,4.0,4.1,4.2,4.3,4.4,4.5,4.6,4.7,4.8,4.9,5.0,5.1,5.2,5.3,5.4)
sigma11 = k1/sigma1
power = mat.or.vec(30,1)
for(i in 1:30){
  power[i] = pchisq(sigma11[i],50,0)}
power
plot(sigma1,power)



#Programming in R for case 3
c = qchisq(0.005,50,0)		
d = qchisq(0.995,50,0)
var = 6			
k3 = var*c		
k4 = var*d
k3
k4
sigma1 = c(4.0,4.1,4.2,4.3,4.4,4.5,4.6,4.7,4.8,4.9,5.0,5.1,5.2,5.3,5.4,5.5,5.6,5.7,5.8,5.9,6.1,6.2,6.3,6.4,6.5,6.6,6.7,6.8,6.9,7.0,7.1,7.2,7.3,7.4,7.5,7.6,7.7,7.8,7.9,8.0)
sigma11 = k3/sigma1
sigma11
sigma22 = k4/sigma1
sigma22
power1 = mat.or.vec(40,1)
for(i in 1:40){
  power1[i] = pchisq(sigma11[i],16,0)+(1-pchisq(sigma22[i],50,0))}
power1
plot(sigma1,power1)

