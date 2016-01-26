# Confidence Interval on Proportion

p=0.45
n=100
alpha=0.05

"Standard Error: "
sqrt(p*(1-p)/n)

half_interval_down=qnorm(alpha/2)*sqrt(p*(1-p)/n)
half_interval_down
half_interval_up=qnorm(1-alpha/2)*sqrt(p*(1-p)/n)
half_interval_up