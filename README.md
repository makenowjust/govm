#govm [![Build Status](https://drone.io/github.com/MakeNowJust/govm/status.png)](https://drone.io/github.com/MakeNowJust/govm/latest)

GoVM is the Version Manager of Go.
Inspired [nodebrew](https://github.com/hokaccha/nodebrew) and [vvm](https://github.com/kana/vim-version-manager).

##Install

Prequirees:

  - Python (version 2 only)
  - Git
  - Mercurial
  - GCC

If you use ubuntu or debian, 

```
$ sudo apt-get install git mercurial build-essential
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
export GOROOT=$GOVM_ROOT/versions/current
export PATH=$GOROOT/bin:$PATH
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
$ govm install go1.3
govm> ...
```

Swintch use version.

```
$ govm use go1.3
$ go version
go version go1.3 ...
```

Build for cross compiling.

```
$ govm build go1.3 windows amd64
govm> ...
```

View all installed version list.

```
$ govm list
* go1.3
```

Remote version view.

```
$ govm list_remote
go1.3
...
```

Uninstall.

```
$ govm uninstall go1.3
```

Update GoVM.

```
$ govm self_update
```

View help.

```
$ govm help
Version: 0.2.2

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
  govm install go1.3             # install go1.3
  govm use go1.3                 # using go1.3 as default
  govm build go1.3 windows amd64 # build runtime for windows/amd64 cross compiling
  govm uninstall go1.3           # uninstall go1.3
```

##Contributing

  1. Fork it. ( <https://github.com/MakeNowJust/govm/fork> )
  2. Create your feature branch. ( `git checkout -b your-new-feature` )
  3. Commit your changes. ( `git commit -am 'Add some feature'` )
  4. Push to the branch. ( `git push origin your-new-feature` )
  5. Create new Pull Request.

##License

This software is released under the MIT License, see LICENSE.
