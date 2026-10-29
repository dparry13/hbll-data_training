# 1. Read raw text directly from your short link or GitHub raw URL
qmd_url <- "https://raw.githubusercontent.com/dparry13/hbll-data_training/refs/heads/main/Beginning%20R%20Workshop/beginning_r_workshop_student.qmd"  # Or your raw GitHub link
raw_text <- readLines(qmd_url, warn = FALSE)

# 2. Strip out all \r carriage-return artifacts that cause blank lines
clean_text <- gsub("\r", "", raw_text)

# 3. Write clean file using Unix line endings (\n)
writeLines(clean_text, "beginner_r_workshop.qmd", sep = "\n", useBytes = TRUE)

# 4. Open in RStudio editor
file.edit("beginner_r_workshop.qmd")

cat("\n Success! 'beginner_r_workshop.qmd' opened cleanly.\n")
