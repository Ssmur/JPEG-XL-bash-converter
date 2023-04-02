#!/bin/bash

# Set the input and output folder.
input_folder="./input"
output_folder="./output"

# Check if the output folder exist, if not, create it. 
if [ ! -d "$output_folder" ]; then
  mkdir "$output_folder"
fi

# Iterating over JPEG/JPG, PNG, PPM and PFM files in input folder. 
for file in "$input_folder"/*.*; do
  #* testing basename -- cleanExt=$(basename "$file" .jpeg)
  # Extract the name without the extension. Include extensions Upercase.
  cleanExt=$(basename "$file" | sed -e "s/[A-Z]/\L&/g;s/\.jpeg$//;s/\.jpg$//;s/\.png$//;s/\.webp$//;s/\.apng$//;\
    s/\.ppm$//;s/\.pfm$//")

  # Show the name of file without extension.
  echo "The name of the file without extention is: $cleanExt"

  # Convert the files with CJXL program.
  ./cjxl "${file}" "${output_folder}/${cleanExt}.jxl" --quality=50 --effort=8 --lossless_jpeg=0 \
    --num_threads=-1 --jpeg_store_metadata=1 --container=1 --keep_invisible=1 
  touch -r "${file}" "${output_folder}/${cleanExt}.jxl"
done
