import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  elevation: 20,
                ),
                onPressed: () {},
                child: const Text('this is Button',style: TextStyle(
                  color: Colors.white
                ),),
              ),
              OutlinedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.access_alarm_rounded),
                label: const Text('this is Button'),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red)
                ),
                  onPressed: () {},
                  child: const Text('this is ElevatedButton')),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.media_bluetooth_off),
                label: const Text('this is ElevatedButton'),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.media_bluetooth_off),
                label: const Text('this is ElevatedButton'),
              ),
              TextButton(
                  onPressed: () {}, child: const Text('this is ElevatedButton'))
            ],
          ),
        ),
      ),
    );
  }
}
