import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({Key? key}) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

bool passwordShow = true;
var char = 'U+1F600';

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: Colors.grey.shade100,
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: TextField(
                obscuringCharacter: '0',
                keyboardType: TextInputType.visiblePassword,
                obscureText: passwordShow,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: const TextStyle(
                    color: Colors.purple,

                    //backgroundColor: Colors.blueAccent,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        passwordShow = !passwordShow;
                      });
                    },
                    //this for toggle between icon show password and hide password
                    icon:passwordShow ?  Icon(Icons.visibility) : Icon(Icons.visibility_off),
                  ),
                  // labelText: 'Enter your Email',
                  // labelStyle: TextStyle(
                  //   color: Colors.purple,
                  //   //backgroundColor: Colors.blueAccent,
                  // ),
                  label: const Text('this a label'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
