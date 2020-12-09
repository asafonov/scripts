for f in $(ls -1 | grep -i JPG)
do
  convert $f -resize 1280x1280 $f
done
