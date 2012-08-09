# My Cookbooks & `soloistrc`

For when I need to configure a new Mac.

Uses the [Pivotal Workstation Cookbook](http://github.com/pivotal/pivotal_workstation) cookbook, my own recipes, and a soloistrc file for installing all the things.

## Instructions

From a clean Mountain Lion install:

* Install XCode
* Go to XCode Preferences &amp; install the command line tools (installs necessary build tools)

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

Or, use the `bootstrap.rb` file in root to get all the prerequistes installed...


## TODO

* Set MacOS clock to analog in menu bar
* Turn off Genie animation to Dock
* Turn on two-button mouse click for Apple mice
* Install Google Voice/Talk
* Fix/choose a better Solarized for Rubymine (and separate from the Terminal recipe)

## License

Copyright 2012 Infews LLC
Licensed via the MIT license
