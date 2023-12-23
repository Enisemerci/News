import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:onlynews/ehoca.dart';
import 'package:onlynews/colors.dart';
import 'package:onlynews/mainpage.dart';
import 'package:onlynews/userinput.dart';
import 'firstpage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SafeArea(
      child: Scaffold(
        backgroundColor: HexColor(secondcolor),
        body: firstpage(),
      ),
    ),
  ));
}
