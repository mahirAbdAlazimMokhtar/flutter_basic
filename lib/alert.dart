import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'home.dart';

class AlertCustom extends StatefulWidget {
  const AlertCustom({Key? key}) : super(key: key);

  @override
  State<AlertCustom> createState() => _AlertCustomState();
}

class _AlertCustomState extends State<AlertCustom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            child: const Text(
              'Click Me',
            ),
            onPressed: () {
              showDialog(
                barrierDismissible: true,
                //hide the space in background
                barrierColor: Colors.black,
                //color for background space
                  context: context,
                  builder: ((BuildContext ctx) {
                    return AlertDialog(
                    
                      content: Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => HomePage()));
                              },
                              child: const Text('Go To Home'),),
                              const SizedBox(width: 15,),
                               ElevatedButton(
                              onPressed: () {
                                Navigator.pop(
                                    context,
                                   );
                              },
                              child: const Text('Close Alert'),),
                        ],
                      ),

                      title: const Text('Send a Message'),
                    );
                  }));
            }),
      ),
    );
  }
}
