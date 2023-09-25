seqModifyHTML <- function(seq, pattern, color = "red") {
  require(stringr)
  require(glue)
  
  pos_vec <- str_locate(seq,pattern)
  
  seq2 <- seqInsert(seq = seq,
                    pos = pos_vec[1]-1,
                    char = glue("<p><span style='color:{color}'>"))
  
  pos_vec <- str_locate(seq2,pattern)
  
  seq2 <- seqInsert(seq = seq2,
                    pos = pos_vec[2]-1,
                    char = glue("</span></p>"))
  
  return(seq2)
}


