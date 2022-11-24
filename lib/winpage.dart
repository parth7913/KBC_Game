import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Win extends StatefulWidget {
  const Win({Key? key}) : super(key: key);

  @override
  State<Win> createState() => _WinState();
}

class _WinState extends State<Win> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Great"),),
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                child: Text(
                  "You Answer Is Correct🥳",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
