import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final notificationBarHeight = MediaQuery.of(context).padding.top;
    return Container(
      decoration:const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(145, 131, 222, 1),
            Color.fromRGBO(160, 148, 227, 1),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: notificationBarHeight,),
              SizedBox(height: 10,),

            ],
          ),
        ),
      ),
    );
  }
}



