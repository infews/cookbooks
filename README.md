# My Cookbooks & `soloistrc`

For when I need to configure a new Mac.

Uses the [Pivotal Workstation Cookbook](http://github.com/pivotal/pivotal_workstation) cookbook, eventually my own cookbook, and a soloistrc file for installing all the things.

## Instructions

From a clean Lion install:

* Install XCode
* Go to XCode Preferences &amp; install the command line tools (installs `git`)

Then:

```sh
	$ cd
	$ git clone git@github.com:infews/cookbooks.git
	$ cd cookbooks
	$ git submodule update --init # pulls in pivotal_workstation cookbook
	$ cd pivotal_workstation && git pull && cd ..
	$ sudo gem install soloist
	$ # review all recipes, starting from soloistrc
	$ soloist
```

## TODO

* Set MacOS clock to analog in menu bar
* Set Fn keys as Fn keys
* Turn off Genie animation to Dock
* Turn on two-button mouse
* Kill the installers directory and instead use the Chef cache

## License

Copyright 2012 Infews LLC
Licensed via the MIT license
