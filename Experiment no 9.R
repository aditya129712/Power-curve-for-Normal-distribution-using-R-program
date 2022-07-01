#Programming in R for case 1-
library('ggplot2')
k_1 = 73.22815
sigma_1  =  seq(from=4.1, by=0.1, length.out=30)
sigma_1
sigma_11  =  k_1/sigma_1
sigma_11
power_1  =  mat.or.vec(30,1)
for(i in 1:30){
  power_1[i]  =  1-pchisq(sigma_11[i],10,0)
}
power_1
Table  =  data.frame(sigma_1, power_1)
Table
View(Table)
ggplot(data  =  Table, mapping = aes(x = sigma_1,y = power_1))+geom_point()+geom_line()
data.frame(sigma_1)
data.frame(power_1)


#Programming in R for case 2-
library('ggplot2')
k_2 = 15.7612
sigma_2 = seq(from=1.0, by=0.1, length.out=30)
sigma_2
sigma_22 = k_2/sigma_2
sigma_22
power_2 = mat.or.vec(30,1)
for(i in 1:30){
  power_2[i] = pchisq(sigma_22[i],10,0)
}
power_2
Table = data.frame(sigma_2, power_2)
Table
View(Table)
ggplot(data = Table, mapping=aes(x = sigma_2, y = power_2))+geom_point()+geom_line()
data.frame(sigma_2)
data.frame(power_2)



#Programming in R for case 3-
library('ggplot2')
k_3 = 12.98789
k_4 = 81.93271
sigma_1 = seq(from=4.1, by=0.1, length.out=30)
sigma_1
sigma_2 = seq(from=1.0, by=0.1, length.out=30)
sigma_2
sigma_3 = c(sigma_1,sigma_2)
sigma_3
sigma_31 = k_3/sigma_3
sigma_31
sigma_32 = k_4/sigma_3
sigma_32
power_3 = mat.or.vec(60,1)
for(i in 1:60){
  power_3[i] = pchisq(sigma_31[i],10,0)+1-pchisq(sigma_32[i],10,0)
}
power_3
Table = data.frame(sigma_3, power_3)
Table
View(Table)
ggplot(data = Table, mapping = aes(x = sigma_3, y = power_3))+geom_point()+geom_line()
data.frame(sigma_3)
data.frame(power_3)


