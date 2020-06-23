data{
  
  int<lower=0> N;
  int<lower=0,upper=1> y1[N];
  int<lower=0,upper=1> y2[N];
  int<lower=0,upper=1> y[N];
  
}

parameters{
  real<lower=0,upper=1> theta;
  real<lower=0,upper=1> theta1;
  real<lower=0,upper=1> theta2;
  

}

model{
  theta1 ~ beta(1,1);
  theta2 ~ beta(1,1);
  theta ~ beta(1,1);
  
  y1 ~ bernoulli(theta1); // first born as a boy
  y2 ~ bernoulli(theta2);  // second born  as a boy
  y ~ bernoulli(theta);  // boy child 
  
}  

