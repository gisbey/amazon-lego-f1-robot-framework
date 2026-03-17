@echo off
cd C:\development\robot-scripts\amazon
call robot -d results/batch/win11edge-mercedes -v BROWSER:edge -v SEARCH_TERM:"LEGO Speed Champions Mercedes-AMG F1 W15" Tests/amazon.robot

