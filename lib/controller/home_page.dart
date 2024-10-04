import 'package:get/get.dart';

class HomeController extends GetxController {
  var selectedCategory = 'Nike'.obs;
  var selectedCard = 'Adidas'.obs;
  var searchQuery = 'Puma'.obs;
  void updateSearch(String query) {
    searchQuery.value = query;
  }

  void changeCategory(String category) {
    selectedCategory.value = category;
  }

  Map<String, List<Map<String, String>>> products = {
    'Nike': [
      {'name': 'Air Jordan', 'price': '\$Rp 1.350.000'},
      {'name': 'Air Jordan 1 Mid', 'price': '\$Rp 1.130.000'},
      {'name': 'Air Jordan High', 'price': '\$Rp 1.125.000'},
      {'name': 'Jordan Stadium', 'price': '\$Rp 1.120.000'},
      {'name': 'Nike Dunk Retro Low', 'price': '\$Rp 1.115.000'},
    ],
    'Adidas': [
      {'name': 'Rivalry Low Lux', 'price': '\$Rp 1.700.000'},
      {'name': 'Centennial RM', 'price': '\$Rp 1.600.000'},
      {'name': 'Forum Low CL', 'price': '\$Rp 1.800.000'},
      {'name': 'Stan Smith', 'price': '\$Rp 1.800.000'},
      {'name': 'Adizero Aruku', 'price': '\$RP 2.100.000'},
    ],
    'Puma': [
      {'name': 'MB.01 Inverse Toxic', 'price': '\$Rp 2.799.000'},
      {'name': 'MB.03 Porsche Legacy', 'price': '\$Rp 2.499.000'},
      {'name': 'MB.03 CNY', 'price': '\$Rp 2.399.000'},
      {'name': 'MB.03 Spark', 'price': '\$Rp 2.399.000'},
      {'name': 'MB.01 Thermal', 'price': '\$Rp 2.399.000'},
    ],
  };
}
