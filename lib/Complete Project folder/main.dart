import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hero Animation'),
        ),
        body: MyFirstApp(),
      ),
    );
  }
}

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => MySecondApp()),
      child: Hero(
        tag: 'mytag',
        child: Image.network(
          'https://images.unsplash.com/photo-1581833971358-2c8b550f87b3?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8YW5pbWV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
          height: 200,
          width: 100,
          alignment: Alignment.topLeft,
        ),
      ),
    );
  }
}

class MySecondApp extends StatelessWidget {
  const MySecondApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'mytag',
      child: Image.network(
        'https://images.unsplash.com/photo-1581833971358-2c8b550f87b3?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8YW5pbWV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
      ),
    );
  }
}
