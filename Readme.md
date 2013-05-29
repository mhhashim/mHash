mHash Application for iOS
===========================



New Features, Changes, and Notable Enhancements in Version 1.0
------------------------------------------------------

### Feature 1

Description of feature 1. with some *italics text*

For more info visit [My Site][hashimsite].

### Parse and write UTF8-encoded NSData

The internals of *SBJsonParser* and *SBJsonWriter* have been rewritten to be NSData based. It is no longer necessary to convert data returned by NSURLConnection into an NSString before feeding it to the parser. The old NSString-oriented API methods still exists, but now converts their inputs to NSData objects and delegates to the new methods.

### Project renamed to SBJson

The project was renamed to avoid clashing with Apple's private JSON.framework. (And to make it easier to Google for.)

* If you copy the classes into your project then all you need to update is to change the header inclusion from `#import "JSON.h"` to `#import "SBJson.h"`.
* If you link to the library rather than copy the classes you have to change the library you link to. On the Mac `JSON.framework` became `SBJson.framework`. On iOS `libjson.a` became `libsbjson-ios.a`. In both cases you now have to `#import <SBJson/SBJson.h>` in your code.

### API documentation integrated with Xcode

The *InstallDocumentation.sh* script allows you to generate [API documentation][api] from the source and install it into Xcode, so it's always at your fingertips. (This script requires [Doxygen][] to be installed.) After running the script from the top-level directory, open Xcode's documentation window and search for SBJson. (You might have to close and re-open Xcode for the changes to take effect.)

### TweetStream Example Project

An example project showing how to use the new streaming functionality to interact with Twitter's multi-document streams. This also shows how to link to the iOS static lib rather than having to copy the classes into your project.

### DisplayPretty Example Project

A small Mac example project showing how to link to an external JSON framework rather than copying the sources into your project. This is a fully functional (though simplistic) application that takes JSON input from a text field and presents it nicely formatted into another text field.

Features also present in previous versions
------------------------------------------

* BSD license.
* Super-simple high-level API: Calling `-JSONValue` on any NSString instance parses the JSON text in that string, and calling `-JSONRepresentation` on any NSArray or NSDictionary returns an NSString with the JSON representation of the object.
* The *SBJsonParser* and *SBJsonWriter* classes provides an object-oriented API providing a good balance between simplicity and flexibility.
* Configurable recursion depth limit for added security.
* Supports (but does not require) garbage collection.
* Sorted dictionary keys in JSON output.
* Pretty-printing of JSON output.

Installation
============

The simplest way to start using JSON in your application is to copy all the source files (the contents of the `Classes` folder) into your own Xcode project.

1. In the Finder, navigate to the `$PATH_TO_SBJSON/Classes` folder and select all the files.
1. Drag-and-drop them into your Xcode project.
1. Tick the **Copy items into destination group's folder** option.
1. Use `#import "SBJson.h"` in  your source files.

That should be it. Now create that Twitter client!

Upgrading
---------

If you're upgrading from a previous version, make sure you're deleting the old SBJson classes first, moving all the files to Trash.


Linking rather than copying
---------------------------

Copying the SBJson classes into your project isn't the only way to use this framework. (Though it is the simplest.) With Xcode 4's workspaces it has become much simpler to link to dependant projects. The examples in the distribution link to the iOS library and Mac framework, respectively.

* [Linking to JSON Framework on iOS](http://github.com/stig/JsonSampleIPhone)
* [Linking to JSON Framework on the Mac](http://github.com/stig/JsonSampleMac)


Links
=====

* [GitHub project page](http://github.com/stig/json-framework).
* [Example Projects](http://github.com/stig/json-framework/Examples).
* [Online API docs](http://stig.github.com/json-framework/api).
* [Frequently Asked Questions](http://github.com/stig/json-framework/wiki/FrequentlyAskedQuestions)
* [Install mMash](https%3A%2F%2Fmhhashim%40bitbucket.org%2Fmhhashim%2Fmhash.git&amp;build_conf=Release" target="_blank")

[hashimsite]: http://hashim.uphero.com/mobile/
[Doxygen]: http://doxygen.org


<!-- MacBuildServer Install Button -->
<div class="macbuildserver-block">
    <a class="macbuildserver-button" href="http://macbuildserver.com/project/github/build/?xcode_project=mHash.xcodeproj&amp;target=mHash&amp;repo_url=https%3A%2F%2Fmhhashim%40bitbucket.org%2Fmhhashim%2Fmhash.git&amp;build_conf=Release" target="_blank"><img src="http://com.macbuildserver.github.s3-website-us-east-1.amazonaws.com/button_up.png"/></a><br/><sup><a href="http://macbuildserver.com/github/opensource/" target="_blank">by MacBuildServer</a></sup>
</div>
<!-- MacBuildServer Install Button -->

