import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kbc/kbc.dart';
import 'package:kbc/losspage.dart';
import 'package:kbc/question.dart';
import 'package:kbc/winpage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>kbc(),
        'que':(context)=>question(),
        'W':(context)=>Win(),
        'L':(context)=>Loss(),
      },
    ),
  );
}
