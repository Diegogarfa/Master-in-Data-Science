Data Sciente Thesis Project

Projects goal:

The purpose of this project is to unify the criteria when measuring the network quality of different operator and therefore answer the question of which operator has the best coverage in a specific city using data from a third party.

Running / Installing

- Running this code requires a computer witg r and the following pakages: 

"jsonlite", "maptools", "raster", "rgeos", "rgdal", "leaflet", "ggplot2", "Compind", "scales", "plyr", "dplyr", #Always load plyr before dplyr "reshape2", "corrgram", "ggmap", "png", "sp", "gstat", "automap", "plotly"

- Shapefile to create random point and delimit spaces.

Delimit spaces for Country / city:
From http://gadm.org/country

Delimit spaces to postal codes:
From http://centrodedescargas.cnig.es/CentroDescargas/buscadorCatalogo.do?

- API USER to create database:

Go to http://developer.opensignal.com/, use the API KEY in the following code: 

 mydata <- fromJSON((paste("http://api.opensignal.com/v2/networkstats.json?lat=",
                                                           spatial.points.matrix[i,2],
                                                           "&lng=",spatial.points.matrix[i,1],
                                                          "&distance=1&json_format=2&apikey=APIKEY",
                                                           sep= "")), flatten = TRUE)

Author:

Diego García Favaro

Master in Data Science.

twitter: @FavarDiego

Linkedin profile: https://es.linkedin.com/in/diegogarfa