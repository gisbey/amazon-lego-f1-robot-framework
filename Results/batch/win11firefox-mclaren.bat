@echo off
cd C:\development\robot-scripts\amazon
call robot -d results/batch/win11firefox-mclaren -v BROWSER:firefox -v SEARCH_TERM:"LEGO Speed Champions McLaren F1 Team MCL38" Tests/amazon.robot

