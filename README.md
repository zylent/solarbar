# Bars

Personal [Übersicht](http://tracesof.net/uebersicht/) system information bars for use with [chunkwm](https://github.com/koekeishiya/chunkwm) Window manager and designed with colors from the soloarized theme, though there are other color schemes in the color folder.

Shamelessly stolen from wherever I've found interesting ideas

The original widget created by *herrbischoff* can be found [here](https://github.com/herrbischoff/nerdbar.widget).

Further modifications were made by [koekeishiya](https://github.com/koekeishiya), whose version can be found [here](https://github.com/koekeishiya/nerdbar.widget).


# How it works:

## Ubersicht

[Übersicht](http://tracesof.net/uebersicht/) creates a webview and places it on your desktop, just above the wallpaper but behind everyting else. Ubersicht widgets are written as .coffee files which let you format elements with html, style them with css and manipulate data with javascript and coffeescript. For dynamic widgets, Ubersicht let's you run terminal commands and insert the output into html, so just about any language can be used to write scripts for widgets. My scripts use bash, python and AppleScript.

You can find the necessary scripts in scripts directory.

### Backgrounds
Draws the bars

### mode(x).coffee
![img](https://github.com/apierz/nerdbar.widget/blob/master/screens/screenshotthree.png?raw=true)

This set of widgets displays the current window id from chunkwm, and the current desktop mode. currently kind of hacky as you need to display each copy once on each screen. I have 3 screens, so 3 separate scripts.
Edit the mode(x).coffee to point at the matching screens(x) shell script in /screens, and insert the monitor id of the monitor that mode(x).coffee will run on.
You can run these commands in a shell to test you're getting what you expect.
This also displays the focused window, and contains the rules for the iconization of the application title. Adjust as necessary, all fontawesome icons are cool to use here.

### status.coffee
![img](https://github.com/apierz/nerdbar.widget/blob/master/screens/screenshot5.png?raw=true)

* This widget shows the current time and date.
* The battery widget changes color from green to yellow to red as battery percentage changes. Now has a little lightning bolt that will appear when the computer is plugged in (taken from [Mizzazz](https://github.com/Mizzazz/Betterbar)).
* Network connection indicator widget. Shows grey if no connection detected and blue if there's an active connection on Wi-Fi or Ethernet. Shows different icons for Wi-Fi and Ethernet and will show your IP or current wifi network name.

### weather.coffee
![img](https://github.com/apierz/nerdbar.widget/blob/master/screens/screenshot6.png?raw=true)

This used to be a part of status.coffee but since it uses an API call it was very inefficent to have it update every few seconds. It is now its own widget that updates every 10 minutes signifigantly reducing the resources used.

* The weather widget tells the current temperature ( color is blue, yellow or red depending on temperature) and an icon showing the current weather status. Uses the Yahoo Weather API for forecast data and [ip-api](http://ip.api.com) to determine current location.
* Clicking on the temperature loads a five day forecast panel with location, current condition, date, condition, and low and high temperatures for the week. To use, enable an interaction shortcut in the Übersicht preference menu and hold down that key while clicking on the temperature.

### stats.coffee
![img](https://github.com/apierz/nerdbar.widget/blob/master/screens/screenshot7.png?raw=true)

This widget shows a number of current system indicators.

* Network upload and download traffic, adapted from [dionmonk's](https://github.com/dionmunk) [ubersicht-network-throughput](https://github.com/dionmunk/ubersicht-network-throughput) widget.
* Current memory and CPU percentage
* Current free HD space in gb

### spotify.coffee 
I use spotify, so I use this for music management. You must install shpotify for this to work:

`brew install shpotify`

### volume.coffee
![img](https://github.com/apierz/nerdbar.widget/blob/master/screens/screenshot10.png?raw=true)

Mostly broken but including it anyways

### vpn.coffee 
Displays current VPN status and IP, need to make it not break when not on vpn
"work in progress"

## Installation

Make sure you have [Übersicht](http://tracesof.net/uebersicht/) installed.

Then clone this repository.

```bash
git clone https://github.com/zylent/chunkbar.widget $HOME/Library/Application\ Support/Übersicht/widgets/chunkbar.widget
```

or to your current widget directory if you have changed it.
The scripts may require installing some additional packages, such as Python, but all are available via homebrew.
The stripts directory may also contain random unused scripts, because I'm lazy.

The icons require the use of extra fonts:

* [FontAwesome](http://fontawesome.io) for the icons
* [All-the-icons](https://github.com/domtronn/all-the-icons.el) for the weather icons.

That have to be installed system wide. You can drag the files into FontBook.app to do this.

