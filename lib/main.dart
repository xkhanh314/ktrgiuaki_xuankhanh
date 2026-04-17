import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Sửa đồ lặt vặt',

      // 🎨 Theme (cho đẹp hơn)
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),

      // 🚀 Màn hình đầu tiên
      home: WelcomeScreen(),
    );
  }
}
