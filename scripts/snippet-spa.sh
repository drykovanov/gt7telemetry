#!/bin/bash
# Spa-Francorchamps
ogr2ogr \
  -gcp -316.801 587.241 664125.46 6523364.26 \
  -gcp -304.047 594.566 664145.124 6523375.881 \
  -gcp -382.463 900.04 664022.397 6523855.688 \
  -gcp -215.794 -758.104 664282.803 6521251.2 \
  -order 1 \
  -t_srs "+proj=merc +a=6378137 +b=6378137 +lat_ts=0 +lon_0=0 +x_0=0 +y_0=0 +k=1 +units=m +nadgrids=@null +wktext +no_defs" \
  "../data/20230813_174006_modified.gpkg" \
  "../data/20230813_174006.gpkg"
