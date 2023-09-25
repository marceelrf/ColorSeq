seqTrim  <- function(seq, from=1, to) {
  
  seq2 <- stringr::str_sub(seq,start = from, end =to)

  return(seq2)
}

