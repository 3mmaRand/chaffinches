fig1 <- ggplot() +
  geom_point(data = chaff_tidy, aes(x = sex, y = mass),
             position = position_jitter(width = 0.1, height = 0),
             colour = "gray50") +
  geom_errorbar(data = chaff_summary,
                aes(x = sex, ymin = mean - se, ymax = mean + se),
                width = 0.3) +
  geom_errorbar(data = chaff_summary,
                aes(x = sex, ymin = mean, ymax = mean),
                width = 0.2) +
  scale_y_continuous(name = "Mass (g)",
                     limits = c(0, 30),
                     expand = c(0, 0)) +
  scale_x_discrete(name = "",
                   labels = c("Females", "Males")) +
  annotate("segment", x = 1, xend = 2,     # long horizontal.
           y = 28, yend = 28,
           colour = "black") +
  annotate("segment", x = 2, xend = 2,     # short vertical
           y = 28, yend = 27,
           colour = "black") +
  annotate("segment", x = 1, xend = 1,     # short vertical
           y = 28, yend = 27,
           colour = "black") +
  annotate("text", x = 1.5,  y = 29,       # the text
           label = expression(italic(p)~"= 0.01175")) +
  theme_classic()


# figure saving settings
units <- "in"     # inches. "cm", "mm", "px" also possible
fig_w <- 3.5
fig_h <- fig_w
dpi <- 300
device <- "png"   # Options are: eps", "ps", "tex", "pdf", "jpeg",
# "tiff", "png", "bmp", "svg" or "wmf" (windows only).


ggsave("figures/fig1.png",
       plot = fig1,
       device = device,
       width = fig_w,
       height = fig_h,
       units = units,
       dpi = dpi)
