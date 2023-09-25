seqInsert <- function(seq, pos, char){
  
  require(stringr)
  
  # insert_positions <- seq(pos,stringr::str_count(seq), pos)
  
  # characters_to_insert <- rep(char, pos)
  
  
  str_sub(seq,pos,pos) <- paste0(str_sub(seq,pos,pos),char,collapse = "")
  
  return(seq)
}
