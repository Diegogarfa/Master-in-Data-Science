Data Sciente Thesis - Kschool Master in Data Science 

Projects goal:

The purpose of this project is to unify the criteria when measuring the network quality of different network operator and therefore answer the question of which operator has the best coverage in a specific city using data from a third party.

Running / Installing

- Running this code requires a computer with r and the following pakages: 

"jsonlite", "maptools", "raster", "rgeos", "rgdal", "leaflet", "ggplot2", "Compind", "scales", "plyr", "dplyr","reshape2", "corrgram", "ggmap", "png", "sp", "gstat", "automap", "plotly"

- Shapefile to create random point and delimit spaces.

Delimit spaces for Country / city:
From http://gadm.org/country

Delimit spaces / postal codes:
From http://centrodedescargas.cnig.es/CentroDescargas/buscadorCatalogo.do?

- API USER to create database:

Go to http://developer.opensignal.com/, register and use the API KEY in the following code: 

mydata <- fromJSON((paste("http://api.opensignal.com/v2/networkstats.json?lat=",
                                                           spatial.points.matrix[i,2],
                                                           "&lng=",spatial.points.matrix[i,1],
                                                          "&distance=1&json_format=2&apikey=APIKEY",
                                                           sep= "")), flatten = TRUE)
  message("Retrieving page ", i)
  mydata <- rmNullObs(mydata)
  pages[[i+1]] <- mydata
  Sys.sleep(14)

Author:

Diego García Favaro

Master in Data Science.

twitter: @FavarDiego

Linkedin profile: https://es.linkedin.com/in/diegogarfa