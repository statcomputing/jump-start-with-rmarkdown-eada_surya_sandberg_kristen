library(reshape2)
library(ggplot2)

output_matrix <- monte_carlo_100_simulations()
df<-data.frame(output_matrix)
dfm <- melt(df, id.var=c("n_column","t_column"))

p<-ggplot(dfm, aes(factor(t_column), value, colour=factor(n_column))) + geom_boxplot(width=0.7,position="dodge")+labs(x="t", y="Normal CDF",colour="n")+ggtitle("Boxplots of our Monte Carlo Simulation")
print(p)