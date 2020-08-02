Is Donald Trump still famous
============================

This project automates the checking on Google to see if Donald Trump is still
one of the most famous people on the planet.

We do this by using the *Robot framework* and in particular the
*SeleniumLibrary* library. The search key is *"Who is the most famous person
today"*. If we get *"Donald Trump"* on the first page of results, then he is
still famous.

Running
=======
Method 1
```
robot isDonaldTrumpStillFamous.robot
```

Method 2
```
python -m robot isDonaldTrumpStillFamous.robot
```

The test results can be found on the console or by opening report.html in a
browser.

Sample Output on CLI
====================
```
(searchForFamous) √ searchForFamous % robot isDonaldTrumpStillFamous.robot
==============================================================================
isDonaldTrumpStillFamous :: Is Donald Trump still the most famous person to...
==============================================================================
Check if Donald Trump is still famous                                 | PASS |
------------------------------------------------------------------------------
isDonaldTrumpStillFamous :: Is Donald Trump still the most famous ... | PASS |
1 critical test, 1 passed, 0 failed
1 test total, 1 passed, 0 failed
==============================================================================
Output:  /Users/vpattni/local/Projects/robot/searchForFamous/output.xml
Log:     /Users/vpattni/local/Projects/robot/searchForFamous/log.html
Report:  /Users/vpattni/local/Projects/robot/searchForFamous/report.html

```


Setup
=====
Within a python virtual environment:
```
pip install robotframework
pip install robotframework-seleniumlibrary
pip install webdrivermanager
webdrivermanager chrome firefox
```

The web driver (for chrome and firefox) is installed into the local bin folder, within the python venv if you are using one. It just needs to be in the execution path. Can setup like below as well:
```
webdrivermanager chrome firefox --linkpath /usr/local/bin
```

Notes on web driver
===================
1. Firefox web driver works out of the box
2. Safari on mac does not need a separate web driver
   - Preferences > Advanced > “Show Develop menu in menu bar” has to be enabled, then
   - Develop > “Allow report automation” has to be enabled
3. Chrome does not need any extra tweaks


When running on mac, it will complain about security / untrusted binary etc:
- Go to Mac > System Preferences > Security & Privacy
- Clear warning and let the chromebrowser driver run
