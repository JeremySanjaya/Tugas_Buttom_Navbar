import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_buttom_navbar/controller/bottom_nav_controller.dart';
import 'package:tugas_buttom_navbar/menu/home.dart';
import 'package:tugas_buttom_navbar/menu/profile.dart';
import 'package:tugas_buttom_navbar/menu/cart.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Connect UI to controller
    final BottomNavController bottomNavController =
        Get.put(BottomNavController());

    final List<Widget> menus = [Home(), Cart(), Profile()];

    return Obx(() {
      return Scaffold(
        body: menus[bottomNavController.selectedIndex.value],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                spreadRadius: 5,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: bottomNavController.selectedIndex.value,
              onTap: bottomNavController.changeIndexMenu,
              selectedItemColor: Colors.orange,
              unselectedItemColor: Colors.grey,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              iconSize: 28,
              selectedLabelStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
              unselectedLabelStyle: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  activeIcon: Icon(Icons.home, color: Colors.orange),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_outlined),
                  activeIcon: Icon(Icons.shopping_cart, color: Colors.orange),
                  label: "Cart",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline),
                  activeIcon: Icon(Icons.person, color: Colors.orange),
                  label: "Profile",
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
