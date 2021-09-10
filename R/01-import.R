# import
# data are the masses of male and female chaffinches organised
# as two columns, `males` and `females`
file <- "data-raw/chaff.txt"
chaff <- read_table(file)

# reformat to tidy
chaff_tidy <- pivot_longer(chaff,
                           cols = everything(),
                           names_to = "sex",
                           values_to = "mass")

# write reformatted data to file
file <- "data-processed/chaff-tidy.txt"
write_delim(chaff_tidy, file)
