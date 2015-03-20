#govm [![Build Status](https://drone.io/github.com/MakeNowJust/govm/status.png)](https://drone.io/github.com/MakeNowJust/govm/latest)

GoVM is the Version Manager of Go.
Inspired [nodebrew](https://github.com/hokaccha/nodebrew) and [vvm](https://github.com/kana/vim-version-manager).

##Feature

  - Main program is python script of one file.
  - One liner install
  - Cross compile support
  - __Windows support__

##Install

Prequirees:

  - Python (version 2 only)
  - Git
  - And [Go requires](http://golang.org/doc/install).

If you use ubuntu or debian, 

```
$ sudo apt-get install git build-essential
```

Using curl one liner.

```
$ curl -L git.io/govm | python - setup
```

Or, python only one liner.

```
$ python -c 'import urllib2; print urllib2.urlopen("http://git.io/govm").read()' | python - setup
```

Add `$PATH` setting your shell config file (`.bashrc` or `.zshrc`).

```sh
export GOVM_ROOT=$HOME/.govm
export PATH=$GOROOT/versions/current/bin:$PATH
```

Reload config.

```
$ source ~/.bashrc
```

Confirm.

```
$ govm help
```

##Setting

GoVM read setting from environment variables.

###`$GOVM_ROOT`

It means govm's home directory. default is `$HOME/.govm`.

```sh
export GOVM_ROOT=/path/to/.govm
```

###`$GOVM_REPO_URL`

It means the repository of Go. default is `https://code.google.com/p/go`.

###`$GOVM_SELF_REPO_URL`

It means the repository of GoVM. default is `https://github.com/MakeNowJust/govm.git`.

##Example

Install.

```
$ govm install go1.4.2
govm> ...
```

Swintch use version.

```
$ govm use go1.4.2
$ go version
go version go1.4.2 ...
```

Build for cross compiling.

```
$ govm build go1.4.2 windows amd64
govm> ...
```

View all installed version list.

```
$ govm list
* go1.4.2
```

Remote version view.

```
$ govm list_remote
...
go1.4.2
```

Uninstall.

```
$ govm uninstall go1.4.2
```

Update GoVM.

```
$ govm self_update
```

View help.

```
$ govm help
Version: 0.7.0

Available commands:
  build        Build a specific version of Go runtime for cross compiling.
  help         Show help message to use GoVM.
  install      Install a specific version of Go.
  list         List currently installed versions of Go.
  list_remote  List remote versions of Go.
  self_update  Update GoVM itself.
  setup        Set up files and directories for GoVM
  uninstall    Uninstall a specific version of Go.
  use          Use a specific version of Go as the default one.

Examples:
  govm install go1.4.2             # install go1.4.2
  govm use go1.4.2                 # using go1.4.2 as default
  govm build go1.4.2 windows amd64 # build runtime for windows/amd64 cross compiling
  govm uninstall go1.4.2           # uninstall go1.4.2
```

##Directory structure

```
$GOVM_ROOT
  govm        This script.
  repo        Place to store repository of Go.
  versions    Place to store binary and source Go.    
    current   Symbolic link for an install directory.
    ...       And other versions of Go
```

##More help

  - If you want to change version of Go by directories, you should use [direnv](https://github.com/zimbatm/direnv).

##Developing

Run test.

```
$ ./test/all.bash
```

##Contributing

  1. Fork it. ( <https://github.com/MakeNowJust/govm/fork> )
  2. Create your feature branch. ( `git checkout -b your-new-feature` )
  3. Commit your changes. ( `git commit -am 'Add some feature'` )
  4. Push to the branch. ( `git push origin your-new-feature` )
  5. Create new Pull Request.

##License

This software is released under the MIT License, see LICENSE or <http://makenowjust.github.io/license/mit?2014-2015>.
