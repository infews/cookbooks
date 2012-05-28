# My Cookbooks & `soloistrc`

For when I need to configure a new Mac.

Uses the [Pivotal Workstation Cookbook](http://github.com/pivotal/pivotal_workstation) cookbook, eventually my own cookbook, and a soloistrc file for installing all the things.

## Instructions

* Install XCode + the command line tools (under Preferences) to get `git`

	$ cd
	$ git clone git@github.com:infews/cookbooks.git
	$ cd cookbooks
	$ git submodule update --init
	$ gem install soloist
	$ # review all recipes
	$ soloist

## TODO

* make a new, real cookbook repo
* Write these recipies:
  * Todo.txt and save to /bin
  * Onsi's ShiftIt
  * Quicksilver
  * Update all apps on Mac App store? (don't save password)
  * Solarized for Terminal & make default (https://github.com/cap10morgan/solarized/tree/master/osx-terminal.app-colors-solarized)
  * Solarized for Textmate (Dark and Light)
  * Run through some of these: https://gist.github.com/2260182
  * Setup background images (move to Dropbox, symlink?, setup in SystemPrefs)
  * pip ?
  * Pygments ?
  * Download Marked's extras and install
  * Any setup for Marked authoring of Github docs