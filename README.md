# auto_direction

This package changes the direction of a widget from ltr direction into rtl direction and vice versa based on the language of the text provided.

## Getting Started

This widget will wrap its child with a [`Directionality`](https://api.flutter.dev/flutter/widgets/Directionality-class.html) widget and it will decide the direction based on the provided text.

```dart
...
String text = "";
...
AutoDirection(
  text: text,
  child: child: TextField(
    onChanged: (str){
      setState(() {
        text = str;
      });
    },
  ),
)
```
