# Download data
download.file("http://peterkovesi.com/projects/colourmaps/CETperceptual_csv_0_1.zip",
              "data-raw/CETperceptual_csv_0_1.zip")

# Unzip it
unzip("data-raw/CETperceptual_csv_0_1.zip", exdir = "data-raw")

# List of files (without full file names)
color_files = list.files("data-raw/CETperceptual_csv_0_1","*.csv")

# Get color map names
color_names = tools::file_path_sans_ext(color_files)

# Remove "CET-" and force names to be in lowercase
color_names = tolower(gsub("CET-", "", color_names))

# Count of color maps
n = length(color_names)

# Setup storage
cet_color_maps = vector('list', n)
names(cet_color_maps) = color_names

# Load color maps into R
for(i in seq_along(color_files)){
  temp = read.csv(file.path("data-raw/CETperceptual_csv_0_1", color_files[i]),
                  header = FALSE, stringsAsFactors = FALSE)

  colnames(temp) = c("R", "G", "B")
  cet_color_maps[[i]] = temp

  # Provide R help doc output
  message("- `", color_names[i],"`")
}

# Release finish data build to data/
devtools::use_data(cet_color_maps, overwrite = TRUE)
