#!/bin/bash

# 10 entries for 1987 - 2008
#https://github.com/h2oai/h2o-2/wiki/Hacking-Airline-DataSet-with-H2O
#Year,Month,DayofMonth,DayOfWeek,DepTime,CRSDepTime,ArrTime,CRSArrTime,UniqueCarrier,FlightNum,TailNum,ActualElapsedTime,CRSElapsedTime,AirTime,ArrDelay,DepDelay,Origin,Dest,Distance,TaxiIn,TaxiOut,Cancelled,CancellationCode,Diverted,CarrierDelay,WeatherDelay,NASDelay,SecurityDelay,LateAircraftDelay

while read line
do
        echo "$line" | ./kafka-console-producer.sh --broker-list my-cluster-kafka-bootstrap.myproject-dev:9092 --topic airlineinputtopic;
done < allyears.csv
#done < allyears2k.csv
exec "$@"
