import 'package:flutter/material.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: ()=>bottomSheet(context),
          child: const Text('Press Me '),
        ),
      ),
    );
  }

  void bottomSheet(BuildContext context){
    showBottomSheet(

        context: context, builder: (_){
      return Container(
        padding: const EdgeInsets.only(top: 20,right: 20,left: 20),
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Column(children: const[
        Icon(Icons.access_alarm_rounded),
         SizedBox(height: 20,),
        Icon(Icons.add_circle),
        SizedBox(height: 20,),
        Icon(Icons.access_alarm_rounded),
      ],),
      );
  });
  }
}
