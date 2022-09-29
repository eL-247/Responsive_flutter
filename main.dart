// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:newer/Responsive/responsive.dart';
import 'package:newer/Responsive/desktop.dart';
import 'package:newer/Responsive/mobile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final isDesktop = DesktopVer();
  final isMobile = MobileVer();

  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive app'),
      ),
      body: Responsive(isDesktop: isDesktop, isMobile: isMobile),
    );
  }
}
