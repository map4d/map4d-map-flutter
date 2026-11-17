# map4d_map_example

Demonstrates how to use the map4d_map plugin.

## Build for iOS

The example enables Swift Package Manager and targets iOS 15. If you previously built it with CocoaPods, move any generated `ios/Podfile` and `ios/Podfile.lock` out of the example before building with SwiftPM.

From this directory, build for a device without signing:

```sh
mise exec -- flutter build ios --no-codesign
```

Flutter 3.44.8 includes the `lipo` fix needed for simulator builds with Xcode 27.2. Build with the version pinned in `mise.toml`:

```sh
mise exec -- flutter build ios --simulator
```

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
