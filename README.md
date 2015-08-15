Bootstrap Default theme for Piwigo 1.0.2
========================================

A modern and responsive theme for [Piwigo](http://piwigo.org/) built with standard [Bootstrap](http://getbootstrap.com/) components and using the default [Bootstrap](http://getbootstrap.com/) theme.
Intended for easy customisation using [Bootstrap](http://getbootstrap.com/) styles or as a parent theme for creating responsive themes for [Piwigo](http://piwigo.org/).

## Features

* Fully responsive and fully featured theme based on Bootstrap's default theme
* Browse albums as a grid or list with selectable thumbnail sizes
* Image size selection enabled for better viewing of images and slide show on higher resolution monitors, with
  responsive scaling of over sized images
* Slide in side bar with image information
* Share buttons for Twitter, Facebook and Google+
* Gravatar support for comment avatars
* Masonry style tag view
* Configuration page in admin to customise features such as Bootstrap theme, social integration and comments
* Works with all supported languages (admin page is currently English only)

## Live demo

A demo of the theme can be found here: https://phil.si/

## Installing

Download the latest release from the [Piwigo website](http://piwigo.org/ext/extension_view.php?eid=796).

## Get the source

Clone the [Github repository](https://github.com/Philio/bootstrapdefault):

    git clone git@github.com:Philio/bootstrapdefault.git
    
*Add the `--recursive` option to include the submodules or run `git submodule update --init` after cloning.*

## Bundled libraries

* [Bootstrap](http://getbootstrap.com/) 3.3.5 - Included as sub module
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
