import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Container(
            width: 150,
            height: 150,
            color: Colors.purpleAccent,
            child: const Center(child: Text('This Basic Color')),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: 150,
            height: 150,
            color: const Color.fromRGBO(120, 85, 24, 1),
            child: const Center(child:  Text('This  Color From RGBO')),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: 150,
            height: 150,
            color: const Color.fromARGB(220, 100, 152, 54),
            //in this type of color you will give the opacity in the first value between 0-255
            child: const Center(child:  Text('This  Color From ARGB')),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: 150,
            height: 150,
            color:  const Color(0xffA0A0A0),
            //in this type of color you will give the opacity in the first value between 0-255
            child: const Center(child:  Text('This  Color From Hex Dec')),
          ),
        ],
      ),
    );
  }
}
