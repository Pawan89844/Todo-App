import 'package:flutter/material.dart';
import 'package:todo/module/home/view/home_view.dart';
import 'package:get/get.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple)),
      home: const HomeView(),
    );
  }
}
