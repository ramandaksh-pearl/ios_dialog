# cupertino_blur_dialog

A Flutter package that provides a ios-style dialog with a blurred background.


-by Raman Daksh

## Usage

```dart
import 'package:ios_dialog/ios_dialog.dart';

showCupertinoBlurDialog(
  context: context,
  title: Text('Dialog Title'),
  content: Text('This is the dialog content.'),
  actions: [
    CupertinoDialogAction(
      child: Text('Cancel'),
      onPressed: () {
        Navigator.of(context).pop();
      },
    ),
    CupertinoDialogAction(
      child: Text('OK'),
      onPressed: () {
        Navigator.of(context).pop();
      },
    ),
  ],
);
