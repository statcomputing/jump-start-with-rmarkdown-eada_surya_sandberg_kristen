monte_carlo_normal_cdf<-function (n,t) 
{
b<-0
n_random<-rnorm(n)
for(i in 1:n){
  if(n_random[i] <= t){b = b + 1}
  }
less_equal_t <- b/n
return(less_equal_t)
}

monte_carlo_normal_cdf_repeat<-function (n,t) 
{
  less_equal_t <- numeric(n)
  b<-0
  n_random<-rnorm(n)
  for(j in 1:n){
    if(n_random[j] <= t){b = b + 1}
  }
  less_equal_t <- b/n
  return(less_equal_t)
}