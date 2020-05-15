# Remove GPS data from all images in current directory (not recursive)
exiftool -gps:all= *

# Move all original images
[ -d original ] || mkdir original
find . -name \*_original -exec mv {} original \;

# Remove empty original directories
find original -maxdepth 0 -empty -exec rmdir {} \;

# Retrieve GPS data
exiftool -c "%.6f" * | grep -i gps
