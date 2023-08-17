#!/bin/bash
# Mount Panorama
input=$1
output=$input.gpkg
echo "Converting $input to $output"
ogr2ogr \
  -gcp 358.20566614 1053.34174209 16648745.81 -3953751.81 \
  -gcp 572.94098364 674.15506848 16649003.183 -3954207.231 \
  -gcp 299.1514228 -956.80189623 16648672.32 -3956168.41 \
  -gcp -154.82843378 -798.81117197 16648131.237 -3955981.08 \
  -gcp 121.39198787976457 1041.3688538096874 16648462.25 -3953763.69 \
  -order 1 \
  -s_srs "EPSG:3857" \
  -oo X_POSSIBLE_NAMES=East \
  -oo Y_POSSIBLE_NAMES=North \
  -oo Z_POSSIBLE_NAMES=Alt \
  -oo AUTODETECT_TYPE=YES \
  -t_srs "+proj=merc +a=6378137 +b=6378137 +lat_ts=0 +lon_0=0 +x_0=0 +y_0=0 +k=1 +units=m +nadgrids=@null +wktext +no_defs" \
  "$output" \
  "$input"
