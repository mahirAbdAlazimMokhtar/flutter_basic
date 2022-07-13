import 'package:flutter/material.dart';

class MapFunction extends StatelessWidget {
  MapFunction({Key? key}) : super(key: key);

  List<Info> info = [
    Info(name: 'maher', height: 185, data: DateTime.now()),
    Info(name: 'ALi', height: 100, data: DateTime.now()),
    Info(name: 'Ahmed', height: 120, data: DateTime.now()),
    Info(name: 'Mohammed', height: 100, data: DateTime.now()),
    Info(name: 'Mona', height: 200, data: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ...info.map((val) {
            return Row(
              children: [
                Text('${val.name}',style:const  TextStyle(fontSize: 22)),
                Text('${val.data}',style:const  TextStyle(fontSize: 22),),
                Text('${val.height}',style:const  TextStyle(fontSize: 22),),
              ],
            );
          }).toList(),
        ],
      ),
    );
  }
}

class Info {
  String? name;
  double? height;
  DateTime? data;

  Info({required this.name, required this.height, required this.data});
}
