import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Loss extends StatefulWidget {
  const Loss({Key? key}) : super(key: key);

  @override
  State<Loss> createState() => _LossState();
}

class _LossState extends State<Loss> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Better Luck Next Time"),),
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                child: Text(
                  "You Answer Is Incorrect😔",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
