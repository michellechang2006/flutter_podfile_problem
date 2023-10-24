# flutter_podfile_problem

## [Flutter Dev Issues](https://github.com/flutter/flutter/issues/137052) 
### Is there an existing issue for this?

- [X] I have searched the [existing issues](https://github.com/flutter/flutter/issues)
- [X] I have read the [guide to filing a bug](https://flutter.dev/docs/resources/bug-reports)

### Steps to reproduce

Hi, I've been learning Flutter dev recently.  I can't run the `pod install`, so I can't launch the application on the iPhone 15 simulator (if I install the pub package)

I'm sure that there's a `Podfile' in the project(iOS folder) directory.


<details>
<summary>`Podfile' file</summary>

```
# Uncomment the next line to define a global platform for your project
# platform :ios, '11.0'

target 'Runner' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Runner

  target 'RunnerTests' do
    inherit! :search_paths
    # Pods for testing
  end

end
```
</details>

### Actual results

 I can't launch the application on the iPhone 15 simulator (if I add the pub package).

### Logs

<details>
<summary>Logs</summary>

```console

Launching lib/main.dart on iPhone 15 in debug mode...
main.dart:1
CocoaPods' output:
↳
    [!] No `Podfile' found in the project directory.
    /opt/homebrew/Cellar/cocoapods/1.13.0/libexec/gems/cocoapods-1.13.0/lib/cocoapods/command.rb:161:in `verify_podfile_exists!'
    /opt/homebrew/Cellar/cocoapods/1.13.0/libexec/gems/cocoapods-1.13.0/lib/cocoapods/command/install.rb:46:in `run'
    /opt/homebrew/Cellar/cocoapods/1.13.0/libexec/gems/claide-1.1.0/lib/claide/command.rb:334:in `run'
    /opt/homebrew/Cellar/cocoapods/1.13.0/libexec/gems/cocoapods-1.13.0/lib/cocoapods/command.rb:52:in `run'
    /opt/homebrew/Cellar/cocoapods/1.13.0/libexec/gems/cocoapods-1.13.0/bin/pod:55:in `<top (required)>'
    /opt/homebrew/Cellar/cocoapods/1.13.0/libexec/bin/pod:25:in `load'
    /opt/homebrew/Cellar/cocoapods/1.13.0/libexec/bin/pod:25:in `<main>'
Error running pod install
Error launching application on iPhone 15.
Exited

```

</details>


### Flutter Doctor output

<details>
<summary>Doctor output</summary>

```console

$flutter doctor -v
[✓] Flutter (Channel stable, 3.13.8, on macOS 14.0 23A344 darwin-arm64, locale
    zh-Hant-TW)
    • Flutter version 3.13.8 on channel stable at /Users/mimichang/tools/flutter
    • Upstream repository https://github.com/flutter/flutter.git
    • Framework revision 6c4930c4ac (5 days ago), 2023-10-18 10:57:55 -0500
    • Engine revision 767d8c75e8
    • Dart version 3.1.4
    • DevTools version 2.25.0

[✓] Android toolchain - develop for Android devices (Android SDK version 34.0.0)
    • Android SDK at /Users/mimichang/Library/Android/sdk
    • Platform android-33, build-tools 34.0.0
    • Java binary at: /Applications/Android
      Studio.app/Contents/jbr/Contents/Home/bin/java
    • Java version OpenJDK Runtime Environment (build 17.0.6+0-17.0.6b829.9-10027231)
    • All Android licenses accepted.

[✓] Xcode - develop for iOS and macOS (Xcode 15.0.1)
    • Xcode at /Applications/Xcode.app/Contents/Developer
    • Build 15A507
    • CocoaPods version 1.13.0

[✓] Chrome - develop for the web
    • Chrome at /Applications/Google Chrome.app/Contents/MacOS/Google Chrome

[✓] Android Studio (version 2022.3)
    • Android Studio at /Applications/Android Studio.app/Contents
    • Flutter plugin can be installed from:
      🔨 https://plugins.jetbrains.com/plugin/9212-flutter
    • Dart plugin can be installed from:
      🔨 https://plugins.jetbrains.com/plugin/6351-dart
    • Java version OpenJDK Runtime Environment (build 17.0.6+0-17.0.6b829.9-10027231)

[✓] VS Code (version 1.84.0-insider)
    • VS Code at /Applications/Visual Studio Code - Insiders.app/Contents
    • Flutter extension version 3.75.20231002

[✓] Connected device (3 available)
    • iPhone 15 (mobile) • B3478F62-9583-4453-8519-A48708E11F1A • ios            •
      com.apple.CoreSimulator.SimRuntime.iOS-17-0 (simulator)
    • macOS (desktop)    • macos                                • darwin-arm64   •
      macOS 14.0 23A344 darwin-arm64
    • Chrome (web)       • chrome                               • web-javascript •
      Google Chrome 118.0.5993.88

[✓] Network resources
    • All expected network resources are available.

• No issues found!

```

</details>
