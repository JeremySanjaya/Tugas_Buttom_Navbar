import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_buttom_navbar/bindings/login_bindings.dart';
import 'home_page.dart';
import 'login_page.dart';
import 'bookmark_page.dart'; // Import BookmarkPage

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => const LoginPage(),
          binding: LoginBindings(),
        ),
        GetPage(
          name: '/homepage',
          page: () => const HomePage(),
        ),
      ],
    );
  }
}
