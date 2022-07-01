#Programming in R for case 1-
library('ggplot2')
alfa = 0.05
n = 11
t_tab_1 = qt(1-alfa, n-1)
t_tab_1
#To find out the value of similar region, we use the following R-Program
sv = c(5.2,10.8,7.1,15.4,12.5,12,10.3,10,12.7,9.7,10.5)
variance_sv = var(sv)
variance_sv
sqs = sqrt(variance_sv)
sqs
sr_1 = 11+(sqs*t_tab_1)/(sqrt(n))
sr_1
#To find the power curve
n_1 = 11
a = sqs
mu_1 = seq(from=11.5, by=0.1, length.out=30)
mu_1
power_1 = mat.or.vec(30,1)
for(i in 1:30){
  power_1[i] = 1-pt((t_tab_1-(((mu_1[i]-n_1)*sqrt(n))/a)), n-1)
}
power_1
Table = data.frame(mu_1, power_1)
Table
View(Table)
ggplot(data=Table,mapping=aes(x=mu_1,y=power_1))+geom_point()+geom_line()
data.frame(mu_1)
data.frame(power_1)



#Programming in R for case 2-
library('ggplot2')
alfa = 0.05
n = 11
t_tab_2 = qt(alfa, n-1)
t_tab_2
#To find out the value of similar region, we use the following R-Program
sv = c(5.2,10.8,7.1,15.4,12.5,12,10.3,10,12.7,9.7,10.5)
variance_sv = var(sv)
variance_sv
sqs = sqrt(variance_sv)
sqs
sr_2 = 11+(sqs*t_tab_2)/(sqrt(n))
sr_2
#To find the power curve
n_2 = 11
b = sqs
mu_2 = seq(from=8.0, by=0.1, length.out=30)
mu_2
power_2 = mat.or.vec(30,1)
for(i in 1:30){
  power_2[i] = pt((t_tab_2-(((mu_2[i]-n_2)*sqrt(n))/b)), n-1)
}
power_2
Table = data.frame(mu_2, power_2)
Table
View(Table)
ggplot(data=Table,mapping=aes(x=mu_2,y=power_2))+geom_point()+geom_line()
data.frame(mu_2)
data.frame(power_2)



#Programming in R for case 3-
library('ggplot2')
alfa = 0.05
n = 11
t_tab_3=qt((1-(0.05/2)),11-1)
t_tab_3
t_tab_4=qt((0.05/2),11-1)
t_tab_4
#To find out the value of similar region, we use the following R-Program
sv = c(5.2,10.8,7.1,15.4,12.5,12,10.3,10,12.7,9.7,10.5)
variance_sv = var(sv)
variance_sv
sqs = sqrt(variance_sv)
sqs
sr_3=11+(sqs*t_tab_3)/(sqrt(n))
sr_3
sr_4=11+(sqs*t_tab_4)/(sqrt(n))
sr_4
#To find the power curve
n_3 = 11
c = sqs
n_4 = 11
d = sqs
mu_3 = seq(from=11.5, by=0.1, length.out=30)
mu_3
mu_4 = seq(from=8.0, by=0.1, length.out=30)
mu_4
mu_a = c(mu_3,mu_4)
mu_a 
power_3 = mat.or.vec(60,1)
for(i in 1:60){
  power_3[i] =(1-pt((t_tab_3-(((mu_a[i]-n_3)*sqrt(n))/c)), n-1)) + pt((t_tab_4-(((mu_a[i]-n_4)*sqrt(n))/d)), n-1)
}
power_3
Table = data.frame(mu_a, power_3)
Table
View(Table)
ggplot(data=Table,mapping=aes(x=mu_a,y=power_3))+geom_point()+geom_line()
data.frame(mu_a)
data.frame(power_3)




