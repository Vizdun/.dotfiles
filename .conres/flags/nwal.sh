flag=$(ls ~/legal/ -1 |sort -R |tail -1)
ascii-image-converter ~/legal/$flag -bC --dither
