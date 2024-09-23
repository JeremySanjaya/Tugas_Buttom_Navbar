import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_buttom_navbar/controller/bottom_nav_controller.dart';
import 'package:tugas_buttom_navbar/menu/home.dart';
import 'package:tugas_buttom_navbar/menu/profile.dart';
import 'package:tugas_buttom_navbar/menu/search.dart';
import 'package:tugas_buttom_navbar/menu/notification.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // connect UI ke controller
    final BottomNavController bottomNavController =
        Get.put(BottomNavController());

    final List<Widget> menus = [Home(), Profile(), Search(), Notifications()];

    return Obx(() {
      return Scaffold(
        body: menus[bottomNavController.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: bottomNavController.selectedIndex.value,
            onTap: bottomNavController.changeIndexMenu,
            selectedItemColor: Colors.green,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profle"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notification_add), label: "Notification"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Search")
            ]),
      );
    });
  }
}
