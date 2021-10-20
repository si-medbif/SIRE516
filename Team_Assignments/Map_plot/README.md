# Team Assignment: Map plot
## Motivation
A map is an important tool to visualize "spatial" data (i.e. location or geoposition is a variable). A good example is a map of COVID-19 incidence in each province which is useful for policy makers to apply different measures to each province depending on the severity of outbreak.

## Assignment
You create a map of Thailand to report number of COVID-19 cases in <b>September 2021</b> in each province. You will use the real data of case reports from the Department of Disease Control, the Ministry of Public Health (https://data.go.th/dataset/covid-19-daily). You will classify each province into <b>three groups</b> with incidence of  100-1,000 cases, 1,000-10,000 cases and >10,000 cases. 

To plot a map of Thailand, you will need to work with a "shapefile." The free shapefile can be downloaded from here (https://data.opendevelopmentmekong.net/th/dataset/8f3fa1b8-cb5c-48c8-9fd7-d3c213ea23db/resource/1559cee4-fedc-4330-be9c-d8cf3dd75015/download/tha_admbnda_adm1_rtsd_20190221.zip). You will then fill each province with colors corresponding to incidence groups.

## Expected result
![image](https://user-images.githubusercontent.com/9914505/138046049-6c6b5890-2459-4a7b-898b-f972930839bb.png)

## Hints
- The difficult part of this assigment is the handling of the shapefile. The shapefile contains both polygons and data set. You can access the data set with a '@' sign (e.g. shp@data). Please take time to understand how the shapefile works.
- The covid report data set is large with ~1 million rows. Please make sure you download a correct file and filter the data befor plotting.
- Important R pacakges: rgdal, sf, maps. They might be difficult to install please contant me (Dumrong) if you have any trouble installing these packages.
