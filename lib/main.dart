import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_buttom_navbar/home_page.dart';
import 'package:tugas_buttom_navbar/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        // List All Pages Here
        GetPage(
          name: '/',
          page: () => const LoginPage(),
        ),
        GetPage(
          name: '/homepage',
          page: () => const HomePage(),
        ),
      ],
    );
  }
}
