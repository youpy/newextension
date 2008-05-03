Installation:

RubyGems >= 1.1.1
$ sudo gem sources -a http://gems.github.com/
$ sudo gem install youpy-newextension

RubyGems < 1.1.1
$ sudo gem install youpy-newextension --source=http://gems.github.com

Usage:

create skeleten

$ newextension -a yourname foo
$ cd foo
$ ls -R
Rakefile        chrome          chrome.manifest install.rdf

./chrome:
content skin

./chrome/content:
Foo.js          overlay.xul

./chrome/skin:

create xpi

$ rake create_extension_xpi

install in your local profile

$ rake install

uninstall from your local profile

$ rake uninstall
