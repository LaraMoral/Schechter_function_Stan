

functions{
real schechter_lpdf(real lum, real lstar, real alpha, real Lm){
  return alpha*log(lum)-lum/lstar-(alpha+1)*log(lstar)-log(tgamma(alpha+1) * gamma_q(alpha+1, Lm/lstar));
}  
  
}


data {
  real Lm;
  real V;
  int<lower=0> N;
  vector<lower=Lm>[N] L;
 
}

transformed data{
real mean_lum;
mean_lum=mean(L);
real <lower=0> sd_lum;
sd_lum=100*sd(L);
  
  
}

parameters {
 real<lower=-1> alpha;
 real <lower=0> lstar;
}


model {

lstar~normal(mean_lum, sd_lum);
alpha + 1 ~exponential(1./50.);


for (i in 1:N) {
L[i] ~ schechter(lstar, alpha,  Lm) ;
}
}

generated quantities{

real phi;
real g_inc_sup;
real g_inc;
g_inc_sup= tgamma((alpha+1));
g_inc= gamma_q((alpha+1),(Lm/lstar)); 
phi=(N/V)/(g_inc_sup*g_inc);


}




