# My Cookbooks & `soloistrc`

For when I need to configure a new Mac.

Uses the [Pivotal Workstation Cookbook](http://github.com/pivotal/pivotal_workstation) cookbook, eventually my own cookbook, and a soloistrc file for installing all the things.

## Instructions

* Install XCode + the command line tools (under Preferences) to get `git`
* `git clone git@github.com:infews/cookbooks.git`
* From ~, `gem install soloist`
* `cd cookbooks`
* `git submodule update --init`
* Review all the recipes
* `soloist` 