___

# Godot iOS plugin template

This repository contains a *starter* Xcode and SCons configuration to build a Godot plugin for iOS.
Xcode project and Scons configuration allows to build static `.a` library, that could be used with `.gdip` file as Godot's plugin to include platform functionality into exported application.

<br/>

___

# Prerequisites

- [Install SCons](https://scons.org/doc/production/HTML/scons-user/ch01s02.html)
- [Install CocoaPods](https://guides.cocoapods.org/using/getting-started.html)

<br/>

___

# Customization

- Run `./script/init.sh <name of plugin>` to replace the template plugin name with the actual name of the plugin.

<br/>

___

# Run build

- Run `./script/build.sh -A <godot version>` initially to run a full build
- Run `./script/build.sh -cgA <godot version>` to clean, redownload Godot, and rebuild
- Run `./script/build.sh -ca` to clean and build without redownloading Godot
- Run `./script/build.sh -h` for more information on the build script

<br/>

___

# Libraries

Library archives will be created in the `bin/release` directory.

Note: make sure to use `[plugin_name].debug.a` when exporting with `Export With Debug` checkbox checked and use `[plugin_name].release.a` otherwise.  Linker errors may occur if the wrong file is used.

___

# Troubleshooting

## Podfile

If you add third-party dependencies to your Podfile and encounter the following error:

```
[!] CDN: trunk URL couldn't be downloaded: https://[dependency-url].podspec.json Response: Failure when receiving data from the peer
```

Running the build script with the -p option may solve the issue by removing pod repository trunk before building plugin.

`./script/build.sh -cpb`

or

`./script/build.sh -cpgA4.2`

## Build-time Errors

If you are experiencing build-time errors, you may want to place the following snippet at the end of your SConstruct file to examine build-time environment (aka. construction environment) variables:

`print (f'{env.Dump()}')`
