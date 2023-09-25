breakSeqs <- function(seq, nBases){
  
  require(dplyr)
  
  insert_positions <- seq(nBases,stringr::str_count(seq), nBases)
  
  characters_to_insert <- rep("\n", length(insert_positions))
  
  for (i in seq_along(insert_positions)) {
    seq <- insert_characters(seq, insert_positions[i] + i - 1, characters_to_insert[i])
  }
  
  return(seq)
}

