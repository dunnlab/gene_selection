
# Download data from https://datadryad.org/stash/dataset/doi:10.5061/dryad.sj3tx9646
# extract zip
# Run in doi_10.5061_dryad.sj3tx9646__v2/Datasets/Datasets/

# setwd("C:/Users/cwd7/Downloads/doi_10.5061_dryad.sj3tx9646__v2/Datasets/Datasets/")


dirs = list.dirs('.', recursive=FALSE)
dirs = gsub("./", "", dirs)

D = data.frame()
for (dir in dirs){
  csv = read.csv(file.path(dir, "gene_properties.csv"))
  csv$dataset = dir
  D=rbind(D, csv)
}

write.csv(D, "gene_properties_combined.csv")