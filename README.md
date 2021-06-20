# ui_tool

With UI Tool you can easily make your app responsive for different screen sizes.


## Installation

Add this to your `pubspec.yaml` dependencies:

```
ui_tool: ^0.0.1
```

## How to use

Add the widget to your app like this (It automatically calculates the ratio):

```dart

    MaterialApp(      
        home:  UIWrapper(
            width:428, // Real pixel width will be 1284px
            height:926, // Real pixel height will be 2778px
            isViewport: true, // Viewport or Pixel
            child: SplashScreen(), //Your first screen
        ),
    ),

```

Then use the ratio with your size values.

```dart

    MaterialApp(      
        home:  UIWrapper(
            child: SplashScreen(), //Your first screen
        ),
    ),

```
