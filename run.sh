#!/bin/bash

# Create a directory to store the image groups
mkdir -p grouped_images

# Count variables
group_count=1
image_count=0

# Iterate over all image files
for file in *.png; do
    # Create a new directory every 5 images
    if ((image_count % 5 == 0)); then
        group_dir="group_${group_count}"
        mkdir -p "$grouped_images/$group_dir"
        ((group_count++))
    fi

    # Move the image file to the current group directory
    mv "$file" "$grouped_images/$group_dir/"

    # Increment the image count
    ((image_count++))
done

echo "Images grouped into separate directories with different names."

