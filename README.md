# ProMotion [![Build Status](https://travis-ci.org/clearsightstudio/ProMotion.png)](https://travis-ci.org/clearsightstudio/ProMotion) [![Code Climate](https://codeclimate.com/github/clearsightstudio/ProMotion.png)](https://codeclimate.com/github/clearsightstudio/ProMotion)

## A new way to easily build RubyMotion apps.

ProMotion is a RubyMotion gem that makes iOS development more like Ruby and less like Objective-C.
It introduces a clean, Ruby-style syntax for building screens that is easy to learn and remember and
abstracts a ton of boilerplate UIViewController, UINavigationController, and other iOS code into a
simple, Ruby-like DSL.

```ruby
class AppDelegate < PM::Delegate
  def on_load(app, options)
    open RootScreen.new(nav_bar: true)
  end
end

class RootScreen < PM::Screen
  title "Root Screen"
  
  def push_new_screen
    open NewScreen
  end
end

class NewScreen < PM::TableScreen
  title "Table Screen"
  
  def table_data
    [{
      cells: [
        { title: "About this app", action: :tapped_about },
        { title: "Log out", action: :log_out }
      ]
    }]
  end
end
```

# Features

|Screens|Table Screens|
|---|---|
|![ProMotion::Screen](https://f.cloud.github.com/assets/1479215/728896/6e5ffd02-e220-11e2-8ec7-c82cb02f6bb8.png)|![ProMotion::TableScreen](https://f.cloud.github.com/assets/1479215/707518/5ea9291a-de1f-11e2-8186-4c4a02dc04a0.png)|

|Navigation Bars|Tab Bars|
|---|---|
|![Nav Bars](https://f.cloud.github.com/assets/1479215/707499/63916eb6-de1e-11e2-90e4-e632202c5da7.png)|*Screenshot coming soon*|

<<<<<<< HEAD
=======
Featured on the RubyMotion blog: [http://blog.rubymotion.com/post/50523137515/introducing-promotion-a-full-featured-rubymotion](http://blog.rubymotion.com/post/50523137515/introducing-promotion-a-full-featured-rubymotion)

## New: Version 1.0 is on its way!

Go check out the [version-1.0](https://github.com/clearsightstudio/ProMotion/tree/version-1.0) branch -- 
it's got some great improvements and cleaner source code. Although it's not completely ready to launch, 
we recommend trying it out.

We use [Semantic Versioning](http://semver.org/). Current stable version is 0.7.6.


**Table of Contents**  *generated with [DocToc](http://doctoc.herokuapp.com/)*

- [ProMotion ](#promotion-)
  - [A new way to easily build RubyMotion apps.](#a-new-way-to-easily-build-rubymotion-apps)
- [Tutorials](#tutorials)
  - [Screencasts](#screencasts)
  - [Sample Apps](#sample-apps)
  - [Apps Built With ProMotion](#apps-built-with-promotion)
- [Getting Started](#getting-started)
  - [Setup](#setup)
- [What's New?](#whats-new)
  - [Version 0.7](#version-07)
- [Usage](#usage)
  - [Creating a basic screen](#creating-a-basic-screen)
  - [Loading your first screen](#loading-your-first-screen)
  - [Creating a split screen (iPad apps only)](#creating-a-split-screen-ipad-apps-only)
  - [Creating a tab bar](#creating-a-tab-bar)
  - [Add navigation bar buttons](#add-navigation-bar-buttons)
  - [Opening and closing screens](#opening-and-closing-screens)
    - [Note about split screens and universal apps](#note-about-split-screens-and-universal-apps)
  - [Adding view elements](#adding-view-elements)
  - [Table Screens](#table-screens)
  - [Using your own UIViewController](#using-your-own-uiviewcontroller)
- [API Reference](#api-reference)
- [Help](#help)
- [Contributing](#contributing)
  - [Working on Features](#working-on-features)
  - [Submitting a Pull Request](#submitting-a-pull-request)
  - [Primary Contributors](#primary-contributors)
>>>>>>> master

# Tutorials

Shows how to make a basic app in ProMotion. Updated in May.

[http://www.clearsightstudio.com/insights/ruby-motion-promotion-tutorial](http://www.clearsightstudio.com/insights/ruby-motion-promotion-tutorial)

## Screencasts

Shows how to create a Youtube app that shows Portland Trailblazer highlights.

[http://www.clearsightstudio.com/insights/tutorial-make-youtube-video-app-rubymotion-promotion/](http://www.clearsightstudio.com/insights/tutorial-make-youtube-video-app-rubymotion-promotion/)

## Sample Apps

Here's a demo app that is used to test new functionality. You might have to change the Gemfile
source to pull from Github.

[https://github.com/jamonholmgren/promotion-demo](https://github.com/jamonholmgren/promotion-demo)

## Apps Built With ProMotion

[View apps built with ProMotion (feel free to submit yours!)](https://github.com/clearsightstudio/ProMotion/wiki/Apps-built-on-ProMotion)

# Getting Started

Check out our new [Getting Started Guide](https://github.com/clearsightstudio/ProMotion/wiki/Getting-Started-Guide) in the wiki!

# What's New?

## Version 1.0

* TODO

# Usage

Check out the [Basic Usage Examples](https://github.com/clearsightstudio/ProMotion/wiki/Basic-Usage-Examples) in the wiki for usage examples.

# API Reference

We've created a comprehensive and always updated wiki with code examples, usage examples, and API reference.

### [ProMotion API Reference](https://github.com/clearsightstudio/ProMotion/wiki/_pages)

# Help

If you need help, feel free to ping me on twitter [@jamonholmgren](http://twitter.com/jamonholmgren)
or open an issue on GitHub. Opening an issue is usually the best and we respond to those pretty quickly.

# Contributing

I'm very open to ideas. Tweet me with your ideas or open a ticket (I don't mind!)
and let's discuss. **It's a good idea to run your idea by the committers before creating
a pull request.** We'll always consider your ideas carefully but not all ideas will be
incorporated.

## Working on Features

1. Clone the repos into `Your-Project/Vendor/ProMotion`
2. Update your `Gemfile`to reference the project as `gem 'ProMotion', :path => "vendor/ProMotion/"`
3. Run `bundle`
4. Run `rake clean` and then `rake`
5. Contribute!

## Submitting a Pull Request

1. Fork the project
2. Create a feature branch
3. Code
4. Update or create new specs ** NOTE: your PR is far more likely to be merged if you include comprehensive tests! **
5. Make sure tests are passing by running `rake spec` *(you can run functional and unit specs separately with `rake spec:functional` and `rake spec:unit`)*
6. Submit pull request
7. Make a million little nitpicky changes that @jamonholmgren wants
8. Merged, then fame, adoration, kudos everywhere

## Primary Contributors

* Jamon Holmgren: [@jamonholmgren](https://twitter.com/jamonholmgren)
* Silas Matson: [@silasjmatson](https://twitter.com/silasjmatson)
* Matt Brewer: [@macfanatic](https://twitter.com/macfanatic)
* Mark Rickert: [@markrickert](https://twitter.com/markrickert)
* [Many others](https://github.com/clearsightstudio/ProMotion/graphs/contributors)
* Run `git shortlog -s -n -e` to see everyone who has contributed.

