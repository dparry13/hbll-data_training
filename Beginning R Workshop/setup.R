# 1. Target URL and local filename
qmd_url  <- "https://raw.githubusercontent.com/dparry13/hbll-data_training/refs/heads/main/Beginning%20R%20Workshop/beginning_r_workshop_student.qmd"
dest_file <- "beginner_r_workshop.qmd"

# 2. Download directly using binary mode to prevent double-spacing on Windows
download.file(qmd_url, destfile = dest_file, mode = "wb", quiet = TRUE)

# 3. Clean up any lingering blank carriage-return lines just in case
content <- readLines(dest_file, warn = FALSE)
writeLines(content, dest_file, useBytes = TRUE)

# 4. Open clean file in RStudio editor
file.edit(dest_file)

cat("\n Success! 'beginner_r_workshop.qmd' opened with clean formatting.\n")
