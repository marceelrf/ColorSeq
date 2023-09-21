DNA = readr::read_lines(file = "data/hif1_gato_semPgrafo.txt")


Primer1 = "TGCCTCAGCTCCTCAGTGCACA"

Primer2 = "TCCTGGCTTCCCAGTGGGCTC"

pos <- seq(100, str_count(DNA), 100)
DNA2 <- DNA
DNA2 <- stringi::stri_sub(DNA2,from = pos,to = pos +1)

stringr::str_view_all(
  modified_string,
  pattern = "\n")

stringr::str_view_all(
  DNA,
  pattern = paste(Primer1,Primer2,sep = "|")
                      )
