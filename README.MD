# Is Donald Trump still famous

This project automates the checking on Google to see if Donald Trump is still
one of the most famous people on the planet.

We do this by using the *Robot framework* and in particular the
*SeleniumLibrary* library. The search key is *"Who is the most famous person
today"*. If we get *"Donald Trump"* on the first page of results, then he is
still famous.

## Setup notes
Within a python virtual environment:
'''
pip install -r requirements.txt
webdrivermanager chrome firefox
'''

The web driver (for chrome and firefox) is installed into the local bin folder.

1. Firefox web driver works out of the box
2. Safari on mac does not need a separate web driver
   - Preferences > Advanced > “Show Develop menu in menu bar” has to be enabled, then
   - Develop > “Allow report automation” has to be enabled
3. Chrome does not need any extra tweaks

When running on mac, it will complain about security / untrusted binary etc:
- Go to Mac > System Preferences > Security & Privacy
- Clear warning and let the chromebrowser driver run
