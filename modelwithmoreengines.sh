#!/bin/sh

# Mi primer script, esto es para meter comentarios
csvsort -d"^" -c $1| csvcut -c model| tail -1