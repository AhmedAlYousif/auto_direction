library auto_direction;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

class AutoDirection  extends StatefulWidget{

  final String text;
  final Widget child;
  final void Function(bool isRTL) onDirectionChange;

  AutoDirection({Key key, @required this.text, @required this.child, this.onDirectionChange}) : super(key: key);

  @override
  _AutoDirectionState createState() => _AutoDirectionState();

}

class _AutoDirectionState extends State<AutoDirection>{

  String text;
  Widget childWidget;


  @override
  Widget build(BuildContext context) {
    text = widget.text;
    childWidget = widget.child;
    AutoDirection(
      child: Text("data"),
      text: "",
      onDirectionChange: (isRTL){

      },
    );
    return Directionality(
      textDirection: isRTL(text)? TextDirection.rtl : TextDirection.ltr,
      child: childWidget
    );
  }

  @override
  void didUpdateWidget(AutoDirection oldWidget){
    if(isRTL(oldWidget.text) != isRTL(widget.text)){
      if(widget.onDirectionChange != null)
        WidgetsBinding.instance.addPostFrameCallback((_)=>widget.onDirectionChange(isRTL(widget.text)));
    }
    super.didUpdateWidget(oldWidget);
  }

  bool isRTL(String text){
    return intl.Bidi.detectRtlDirectionality(text);
  }
}

