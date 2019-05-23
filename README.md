# auto_direction

This [widget](https://pub.dev/packages/auto_direction) changes the direction of a widget from ltr direction into rtl direction and vice versa based on the language of the text provided.

## Getting Started

This [widget](https://pub.dev/packages/auto_direction) will wrap its child with a [`Directionality`](https://api.flutter.dev/flutter/widgets/Directionality-class.html) widget and it will decide the direction based on the provided text.

```dart
...
String text = "";
...
AutoDirection(
  text: text,
  child: TextField(
    onChanged: (str){
      setState(() {
        text = str;
      });
    },
  ),
)
```
