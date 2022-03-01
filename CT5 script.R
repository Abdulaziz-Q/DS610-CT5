library(readxl)

# import dataset
problem_2 <- read_excel("CT5_problem.xlsx", sheet = "problem_2")
View(problem_2)
problem_3 <- read_excel("CT5_problem.xlsx", sheet = "problem_3", col_types = c("text","numeric", "numeric"))
View(problem_3)
problem_4 <- read_excel("CT5_problem.xlsx", sheet = "problem_4")
View(problem_4)


# problem 1

#60 have reading below 128
2*(1-(1-pbinom(40,100,0.5))) # 40 coming from random sample of 100 and 60 men have readings above 128. 100-60=40
#70 have reading below 128
2*(1-(1-pbinom(30,100,0.5)))
#80 have reading below 128
2*(1-(1-pbinom(20,100,0.5)))

2*pbinom(40,100,0.5)
2*pbinom(30,100,0.5)
2*pbinom(20,100,0.5)

# problem 2

t.test(problem_2$`Seller A` , problem_2$`Seller B`,conf.level = 0.95)

# problem 3

t.test(problem_3$'Bob’s Garage', problem_3$'Other Garage', alternative = 'greater',paired = T)

# problem 4

kruskal.test(problem_4$depression_scale ~ problem_4$exercise)

