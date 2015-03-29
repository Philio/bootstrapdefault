Bootstrap Default for Piwigo
============================

A minimalist version of the [Piwigo](http://piwigo.org/) default theme based on [Bootstrap](http://getbootstrap.com/).
Intended as a parent theme for creating responsive themes for [Piwigo](http://piwigo.org/).

## Features

* Fully responsive and fully featured theme based on Bootstrap's default theme
* Browse albums as a grid or list with selectable thumbnail sizes
* Image size selection enabled for better viewing of images and slide show on higher resolution monitors, with
  responsive scaling of over sized images
* Slide in side bar with image information
* Share buttons for Twitter, Facebook and Google+
* Gravatar support for comment avatars
* Masonry style tag view

## Live demo

A demo of the theme can be found here: http://bootstrapdefault.phil.si/

Note: The demo site is automatically cloned from my live site and automatically deployed from the Github master branch,
however the database has to be updated manually which can occasionally cause some images not to load. Please don't
report this as an issue.

## Installing

The theme is currently a work in progress, but is probably around 90% complete and there are only a few simple pages
left to style.

If you would like to check out the theme in it's current state, please clone this repository with the included sub
modules into your [Piwigo](http://piwigo.org/) themes directory.

## Bundled libraries

* [Bootstrap](http://getbootstrap.com/) 3.3.4 - Included as sub module
* [Selectize.js](http://brianreavis.github.io/selectize.js/) 0.12.0 - Included as sub module. Note: The bundled version
with Piwigo 2.7.x is ignored in favour of the latest build with Bootstrap styling.

## License

    Copyright 2015 Phil Bayfield

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.