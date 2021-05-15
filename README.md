# QC Aggregations Project - QC Process API

## ABOUT THE PROJECT
  
Get all notes information from QC System API and apply business logic to aggregate each technical status and find the percentages and make comparison operations

## BUILT WITH

* REST
* Git
* Maven
* MUnit
* Mulesoft
* Anypoint Studio
* Anypoint Platform
  
## GETTING STARTED

* Go to ${users.home}/m2 folder:

    * Rename or delete repository 
    * Rename settings.xml

* Search exchange in Anypoint Studio and add module "QC System API"

* git clone https://github.com/Caliber-Mulesoft/qc-aggregations-papi.git

* Import project qc-process-api into Anypoint Studio (the folder containing the project has the same name).

* Deploy to CloudHub (Anypoint Platform)
  <!--Leave the following non-comment instruction at the bottom-->
  Please refer to the SETUP document for more detailed installation steps.

## PREREQUISITES

 * Anypoint platform
 * Anypoint studio 7.8.0
 * OpenJDK 8
 * Embedded Maven
 * HTTP connector 1.5.24
 * APIkit 1.5.1


## ENVIRONMENT VARIABLES
  N/A

## USAGE EXAMPLES

* Get percentages:  /percentages/{period}   (period can be week, year, all, or year number"2020")

* This returns the performance of all batches for a specific period:

   * week: returns the current week percentages
   * year: returns the last 52 weeks percentages
   * all: returns all time percentages
   
* Example response:
```
{
  "PoorPer": "29.63",
  "AveragePer": "22.22",
  "GoodPer": "48.15",
  "SuperstarPer": ".00"
}
```
* Get comparison: /compare/{period} (period can be week, year, or all)
 
* This returns the differnece in performance of all batches between a specific period and the current week:

   * week: returns the differnece in performance between last week and the current week
   * year: returns the differnece in performance between last 52 weeks and the current week
   * all: returns the differnece in performance between all time and the current week

* Example response:

```
{
  "PoorPercentageChange": "-29.63",
  "AveragePercentageChange": "22.22",
  "GoodPercentageChange": "48.15",
  "SuperstarPercentageChange": "0"
}
```
## ROADMAP

## ADDITIONAL MATERIAL

## AUTHORS

* Scrum Master: Brian Callahan

* Tugba Ozden

* Zephyr Zambrano

* CloudHub Captin: Iyad Shobaki
