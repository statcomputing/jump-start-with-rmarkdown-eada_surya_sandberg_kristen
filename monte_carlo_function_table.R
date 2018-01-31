monte_carlo_table<-function () 
{
t_values <- c(0.0,0.67,0.84,1.28,1.65,2.32,2.58,3.09,3.72)

t_column <-numeric(length(t_values))
estimate100 <-numeric(length(t_values))
estimate1000 <-numeric(length(t_values))
estimate10000 <-numeric(length(t_values))
true_value <-numeric(length(t_values))

  for (i in 1:length(t_values)){
  t_column[i] <- t_values[i]
  estimate100[i] <-monte_carlo_normal_cdf(100,t_values[i])
  estimate1000[i] <-monte_carlo_normal_cdf(1000,t_values[i])
  estimate10000[i] <-monte_carlo_normal_cdf(10000,t_values[i])
  true_value[i] <- pnorm(t_values[i])
  }
  
output_matrix_one <-cbind(t_column,estimate100,estimate1000,estimate10000,true_value)
colnames(output_matrix_one) <- c("t", "n=100", "n=1,000", "n=10,000", "True Value")


return(output_matrix_one)
}