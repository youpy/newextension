Usage:

$ newextension -a yourname foo
$ cd foo
$ ls -R
Rakefile        chrome          chrome.manifest install.rdf

./chrome:
content skin

./chrome/content:
Foo.js          overlay.xul

./chrome/skin:
$ rake create_extension_xpi
