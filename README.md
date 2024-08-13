# cupertino_blur_dialog

A Flutter package that provides a ios-style dialog with a blurred background.


-by Raman Daksh

## Usage

```dart
import 'package:cupertino_blur_dialog/cupertino_blur_dialog.dart';

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
