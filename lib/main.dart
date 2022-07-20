import 'package:flutter/material.dart';
import 'package:flutter_basic/alert.dart';
import 'package:flutter_basic/http.dart';
import 'package:flutter_basic/show_bottom_sheet.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hi Man Whats app ',
      home: Scaffold(
          appBar: AppBar(
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.black,
                  Colors.yellow,
                  Colors.pink,
                  Colors.teal,
                ]),
              ),
            ),
          ),
          body: Center(
            child:AlertCustom()
          )),
    );
  }
}
