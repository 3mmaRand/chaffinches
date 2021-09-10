# means, standard deviations, standard errors and sample sizes
chaff_summary <- chaff_tidy %>%
  group_by(sex) %>%
  summarise(mean = mean(mass),
            std = sd(mass),
            n = length(mass),
            se = std/sqrt(n))
