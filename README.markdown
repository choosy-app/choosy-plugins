# Choosy Plugins #

A future version of [Choosy](http://www.choosyosx.com) will support plugins, so that as well as opening URLs in browsers you can do all manner of other things with them.

This repository contains example plugins so that other developers can feedback on the general structure of plugins while the format is still in development.

## What are plugins? ##

A plugin is currently just any executable file wrapped up with an icon and a name.  Plugins will be displayed in the browser prompt and when they are clicked the URL will be passed to the executable.  Simple, but effective.

## Plugin format ##

The plugins are OS X bundles (essentially just folders with a particular structure) with a `.choice` extension.

The folder structure is:

*  **MyPlugin.choice/**
   *  **Contents/**
      *  **Info.plist** - An XML file containing metadata
      *  **Resources/**
         *  An icon file
         *  An executable file
         *  An HTML file with a description of the plugin
         *  Any other files needed by the plugin

The bundle's `Info.plist` file should contain the following Choosy-specific keys:

*  **`ChoosyDescription`** - A short description of the plugin.
*  **`ChoosyExecutable`** - A path to the executable that carries out the plugin's work. The path should be relative to the bundle's `Contents/Resources` directory. When the bundle is triggered the executable will be run with `Contents/Resources` as the current working directory and the URL as the first (and only) argument.
*  **`ChoosyAboutFile`** - A path to an HTML file that contains more information about the plugin. The path should be relative to the bundle's `Contents/Resources` directory.

It should also contain the usual OS X bundle keys:

*  **`CFBundleIconFile`** - The name of an ICNS file in the `Contents/Resources` directory.
*  **`CFBundleIdentifier`** - A unique, reverse-domain-name identifier, e.g. `org.example.plugins.myplugin`
*  **`CFBundleInfoDictionaryVersion`** - 6.0 is a magic number.
*  **`CFBundleName`** - The name of the bundle, which will be displayed to the user.
*  **`CFBundlePackageType`** - Set this to `BNDL` to tell the OS it's not an application.
*  **`CFBundleShortVersionString`** - User friendly version string.
*  **`CFBundleVersion`** - Machine friendly version number.
