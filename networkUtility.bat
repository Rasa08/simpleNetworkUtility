@echo off
title Simple Network Utility Tool
color a
cls
echo #####################################
echo # This Tool Provide PING , TRACERT , NSLOOKUP , PATHPING , NMAP FUNCTIONS
echo #####################################
set /p ip=IP Address: 
echo IP Tool Results>>networkResult.txt
echo --------------->>networkResult.txt
echo IP Address: "%ip%">>networkResult.txt
ping "%ip%"
ping "%ip%">>networkResult.txt

timeout 5
tracert "%ip%"
tracert "%ip%">>networkResult.txt

timeout 5
nslookup "%ip%"
nslookup "%ip%">>networkResult.txt

timeout 5
pathping "%ip%"
pathping "%ip%">>networkResult.txt

timeout 5
nmap "%ip%"
nmap "%ip%">>networkResult.txt


pause >nil