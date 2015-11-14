#!/bin/sh

# Mi primer script, esto es para meter comentarios
csvsort -d"^" -c nb_engines optd_aircraft.csv | csvcut -c model| tail -1