@echo off
cd C:\development\robot-scripts\amazon
call robot -d results/batch/win11chrome-ferrari -v BROWSER_TYPE:chrome -v SEARCH_TERM:"LEGO Speed Champions Ferrari SF-24" Tests/amazon.robot

