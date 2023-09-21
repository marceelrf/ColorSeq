DNA = readr::read_lines(file = "data/hif1_gato_semPgrafo.txt")


Primer1 = "TGCCTCAGCTCCTCAGTGCACA"

Primer2 = "TCCTGGCTTCCCAGTGGGCTC"



stringr::str_view_all(
  DNA,
  pattern = paste(Primer1,Primer2,sep = "|")
                      )
