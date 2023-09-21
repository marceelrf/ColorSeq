# Original string
# original_string <- "Hello World"

# Positions where you want to insert characters (multiple positions)
# USE DNA
insert_positions <- seq(100,stringr::str_count(DNA), 100)

# Characters to insert at each position
characters_to_insert <- rep("\n", length(insert_positions))

# Insert characters
modified_string <- DNA

for (i in seq_along(insert_positions)) {
  modified_string <- insert_characters(modified_string, insert_positions[i] + i - 1, characters_to_insert[i])
}

# Print the modified string
cat(modified_string, "\n")
