#!/bin/bash
date
echo "Wszystko OK"
date=$(date '+%d.%m.%y')
echo $date
echo $date > date
URL="https://rozklad-pkp.pl/pl/tp?queryPageDisplayed=yes&REQ0JourneyStopsS0A=1&REQ0JourneyStopsS0ID=&REQ0JourneyStops1.0G=&REQ0JourneyStopover1=&REQ0JourneyStops2.0G=&REQ0JourneyStopover2=&REQ0JourneyStopsZ0A=1&REQ0JourneyStopsZ0ID=&REQ0HafasSearchForw=1&existBikeEverywhere=yes&existHafasAttrInc=yes&existHafasAttrInc=yes&REQ0JourneyProduct_prod_section_0_0=1&REQ0JourneyProduct_prod_section_1_0=1&REQ0JourneyProduct_prod_section_2_0=1&REQ0JourneyProduct_prod_section_3_0=1&REQ0JourneyProduct_prod_section_0_1=1&REQ0JourneyProduct_prod_section_1_1=1&REQ0JourneyProduct_prod_section_2_1=1&REQ0JourneyProduct_prod_section_3_1=1&REQ0JourneyProduct_prod_section_0_2=1&REQ0JourneyProduct_prod_section_1_2=1&REQ0JourneyProduct_prod_section_2_2=1&REQ0JourneyProduct_prod_section_3_2=1&REQ0JourneyProduct_prod_section_0_3=1&REQ0JourneyProduct_prod_section_1_3=1&REQ0JourneyProduct_prod_section_2_3=1&REQ0JourneyProduct_prod_section_3_3=1&REQ0JourneyProduct_opt_section_0_list=0%3A000000&REQ0HafasOptimize1=&existOptimizePrice=&REQ0HafasChangeTime=0%3A1&existSkipLongChanges=0&REQ0HafasAttrExc=&existHafasAttrInc=yes&existHafasAttrExc=yes&wDayExt0=Pn%7CWt%7C%C5%9Ar%7CCz%7CPt%7CSo%7CNd&start=start&existUnsharpSearch=yes&singlebutton=&came_from_form=1&REQ0JourneyStopsS0G=5104140&REQ0JourneyStopsZ0G=5100069&date=${date}&dateStart=${date}&dateEnd=${date}&REQ0JourneyDate=${date}&time=06%3A34&REQ0JourneyTime=06%3A34"
echo $URL
wget --timeout=1 --tries=5 --retry-connrefused -O - $URL || true > output



