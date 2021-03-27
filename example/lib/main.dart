import 'package:flutter/material.dart';
import 'package:auto_direction/auto_direction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Auto RTL TextField'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  TextEditingController textController = new TextEditingController();
  bool isRTL = false;
  String text = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AutoDirection(
              onDirectionChange: (isRTL){
                setState(() {
                  this.isRTL = isRTL;
                });
              },
              text: text,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder()
                  ),
                  onChanged: (str){
                    setState(() {
                      text = str;
                    });
                  },
                ),
              )
            ),
            Text("Direction: " + (isRTL? "RTL":"LTR") )
          ],
        ),
      ),
    );
  }
}
