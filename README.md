# ui_tool

With various screen sizes and pixel densities of mobile phones, it is difficult to maintain the consistency of the UI design. So, UI Tool is developed for every mobile phone screen size, which calculates the ratio of the current device compared to the originally designed device and then applies it to the Size parameters.(i.e If the UI is originally designed for iPhone 12 Pro Max, the UI on the iPhone 5s must be the similar.)


These are the Initial views of UIs without applying Calculated Ratio.
<p align='center'>
    <img src="https://raw.githubusercontent.com/kasun-u/common/main/before.png" />
</p>

After applying the Calculated Ratio
<p align='center'>
    <img src="https://raw.githubusercontent.com/kasun-u/common/main/after.png" />
</p>


## Installation

Add this to your `pubspec.yaml` dependencies:

```
ui_tool: ^0.1.1
```

## How to use

Add the widget to your app like this (It automatically calculates the ratio):

If the design is given with viewport sizes (iPhone 12 Pro Max):

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

If the design is given in device pixels (iPhone 12 Pro Max):

```dart

    MaterialApp(      
        home:  UIWrapper(
            width:1284, 
            height:2778,  
            isViewport: false, // Viewport or Pixel
            child: SplashScreen(), //Your first screen
        ),
    ),

```

Then use the ratio with your size values.

```dart

import 'package:ui_tool/ui_tool.dart';

    Container(      
        width: 200 * UI.ratio,
        height: 250 * UI.ratio,
        child:  Text(
           "Sample Responsive Text",
           style: TextStyle(
               fontSize: 16 * UI.ratio,
           )
        ),
    ),

```
