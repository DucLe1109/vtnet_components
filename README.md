This package includes view components designed by DLH Company Mobile Team that make your project
development is easier and synchronous with all of DLH's mobile apps.

## Features
Make your UI more charming, engaging and high user experience by applying or custom all view components such as:
Toast, Dialog, Chips, Animated List View, Date Picker, Time Picker, .....

## Getting started

Import the package in your Dart code:

```dart
import 'package:company_widgets/company_widgets.dart';
```

## Usage

Now, you can use any of the custom widgets provided by the package in your Flutter app:
Example: show a toast with toast type is success

- First : Create your own widget that implement BaseStatefulWidget and BaseStateFulWidgetState.
(see Example). Then call showToast method to show beautiful toast widget.

```dart
showToast(
  onActionButtonClick: () {
    // Do something
  },
  onTrailingClick: () {
    // Do somthing
  },
  toastType: ToastType.info,
  message: 'ToastType.info',
  buttonTitle: 'Button',
  isHasAction: true,
  isHasTrailing: true,
)
```

## Additional information
All of you can contribute to this package by email for me to add to this project. My email: is huyducle1109@gmail.com 
I appreciate your effort to make the project more useful, and diversified and provide it to society. 
For more information contact me by Zalo, Viber, or Whatsapp: 0961503893
