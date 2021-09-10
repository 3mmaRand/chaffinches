# independent sample t-test assuming equal variance
t.test(data = chaff_tidy,
       mass ~ sex,
       paired = F,
       var.equal = T)

# males (mean = 22.3 g) are significantly heavier than females (mean = 20.5 g) (t = -2.6471, df = 38, p-value = 0.01175)
