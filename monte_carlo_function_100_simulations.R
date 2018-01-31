monte_carlo_100_simulations<-function () 
{
  t_values <- c(0.0,0.67,0.84,1.28,1.65,2.32,2.58,3.09,3.72)
  n_values <- c(100,1000,10000)
  
  k <- 1
  n_column <- numeric(length(n_values)*length(t_values)*100)
  t_column <- numeric(length(n_values)*length(t_values)*100)
  estimate <- numeric(length(n_values)*length(t_values)*100)

  for (j in 1:length(n_values)){
    
    for (i in 1:length(t_values)){
      for (m in 1:100){   
        n_column[k] <- n_values[j]
        t_column[k] <- t_values[i]
        estimate[k] <-monte_carlo_normal_cdf(n_values[j],t_values[i])
        k = k+1
      }
    }
    
  }

  output_matrix <-cbind(n_column,t_column,estimate)

  return(output_matrix)
}