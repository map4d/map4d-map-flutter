# Map4dMap for Flutter
[![platform](https://img.shields.io/badge/platform-flutter-45d2fd.svg)](https://flutter.dev/)
[![pub package](https://img.shields.io/pub/v/map4d_map_dtqg.svg)](https://pub.dev/packages/map4d_map_dtqg)

A Flutter plugin that provides a [Map4dMap DTQG](https://map4d.vn/) widget.

## Minium Android/iOS SDK version support

### Android

Required Android SDK 21 or higher

Set `minSdkVersion` in `android/app/build.gradle`

```gradle
android {
    defaultConfig {
        minSdkVersion 21
    }
}
```

### iOS

Required iOS 12.0 or higher

## Require API key

The API key is a unique identifier that authenticates requests associated with your project for usage and billing purposes. You must have at least one API key associated with your project.

### Android

Provide access key from `android/app/src/main/AndroidManifest.xml`

```xml
<manifest xmlns:android="http://schemas.android.com/apk/res/android">
    <application>
        <meta-data
            android:name="vn.map4d.map.ACCESS_KEY"
            android:value="YOUR_KEY_HERE"/>
    </application>
</manifest>
```

### iOS

Provide access key from `ios/Runner/Info.plist`

```xml
<key>Map4dMapAccessKey</key>
<string>YOUR_KEY_HERE</string>
```

## Simple Usage

```dart
import 'package:flutter/material.dart';
import 'package:map4d_map_dtqg/map4d_map.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Map4D DTQG Map',
      home: MFMapView(),
    );
  }
}
```

## Documents

- API Reference: <https://pub.dev/documentation/map4d_map_dtqg/latest/>