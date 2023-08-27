# ui_tool

With various screen sizes and pixel densities of mobile phones, it is difficult to maintain the consistency of the UI design. So, UI Tool is developed for every mobile phone screen size, which calculates the ratio of the current device compared to the originally designed device and then applies it to the Size parameters.(i.e If the UI is originally designed for iPhone 12 Pro Max, the UI on the iPhone 5s must be the similar. This may cause fat-thumb problem. Use it wisely.)


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
ui_tool: ^0.2.0
```

## How to use

Add the widget to your app like this (It automatically calculates the ratio):

If the design is given with viewport sizes (iPhone 12 Pro Max):

```dart

MaterialApp(
      builder: (context, child) {
        UI.initialize(
            context,
            viewportWidth: 428,
            viewportHeight: 926,
            );
        return  MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: UI.ratio),
            child: child!,
        );
      },
)

```


Then use the ratio with your size values.

```dart

import 'package:ui_tool/ui_tool.dart';

    Container(      
        width: 200.r,
        height: 250.r,
        child:  Text(
           "Sample Responsive Text",
           style: TextStyle(
               fontSize: 16, //Fonts will be automatically scaled
           )
        ),
    ),

```
