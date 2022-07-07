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
                onPressed: () {},
                child: const Text('this is Button'),
              ),
              OutlinedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.access_alarm_rounded),
                label: const Text('this is Button'),
              ),
              ElevatedButton(onPressed: (){}, child: const Text('this is ElevatedButton')),
              ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.media_bluetooth_off),label: const Text('this is ElevatedButton'),),
              TextButton.icon(onPressed: (){}, icon: Icon(Icons.media_bluetooth_off),label: const Text('this is ElevatedButton'),),
              TextButton(onPressed: (){}, child: const Text('this is ElevatedButton'))
            ],
          ),
        ),
      ),
    );
  }
}
