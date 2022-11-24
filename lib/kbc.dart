import 'package:flutter/material.dart';

class kbc extends StatefulWidget {
  const kbc({Key? key}) : super(key: key);

  @override
  State<kbc> createState() => _kbcState();
}

class _kbcState extends State<kbc> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text("Kaun Banega Crorepati"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.network("assets/images/kbcab.jpg"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 150,
                ),
              ),
              InkWell(
                child: Center(
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 70,
                    child: Text(
                      "PLAY",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'que');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
