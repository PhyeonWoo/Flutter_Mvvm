import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:training/MVVM/views/mvvm_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.ltr, // 또는 rtl
        child: PatternHome(),
      ),
    );
  }
}

class PatternHome extends StatelessWidget {
  const PatternHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('패턴')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text('MVVM PATTERN'),
              onPressed: () {
                Get.to(MVVMView());
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => MVVMView()),
                // );
              },
            ),
          ],
        ),
      ),
    );
  }
}
