import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_buttom_navbar/controller/shoe_controller.dart';
import 'package:tugas_buttom_navbar/models/shoe_model.dart';
import 'package:tugas_buttom_navbar/bookmark_page.dart';
import 'package:tugas_buttom_navbar/menu/product_detail.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ShoeController controller = Get.put(ShoeController());
    final screenWidth = MediaQuery.of(context).size.width;
    final padding = screenWidth * 0.05;

    final Map<String, List<Map<String, String>>> products = {
      'Nike': [
        {'name': 'Air Jordan', 'price': 'Rp 1.350.000'},
        {'name': 'Air Jordan 1 Mid', 'price': 'Rp 1.130.000'},
        {'name': 'Air Jordan High', 'price': 'Rp 1.125.000'},
        {'name': 'Jordan Stadium', 'price': 'Rp 1.120.000'},
        {'name': 'Nike Dunk Retro Low', 'price': 'Rp 1.115.000'},
      ],
      'Adidas': [
        {'name': 'Rivalry Low Lux', 'price': 'Rp 1.700.000'},
        {'name': 'Centennial RM', 'price': 'Rp 1.600.000'},
        {'name': 'Forum Low CL', 'price': 'Rp 1.800.000'},
        {'name': 'Stan Smith', 'price': 'Rp 1.800.000'},
        {'name': 'Adizero Aruku', 'price': 'Rp 2.100.000'},
      ],
      'Puma': [
        {'name': 'MB.01 Inverse Toxic', 'price': 'Rp 2.799.000'},
        {'name': 'MB.03 Porsche Legacy', 'price': 'Rp 2.499.000'},
        {'name': 'MB.03 CNY', 'price': 'Rp 2.399.000'},
        {'name': 'MB.03 Spark', 'price': 'Rp 2.399.000'},
        {'name': 'MB.01 Thermal', 'price': 'Rp 2.399.000'},
      ],
    };

    final Map<String, List<String>> shoeImages = {
      'Nike': [
        'assets/images/Air_Jordan.png',
        'assets/images/Air_Jordan_1_Mid.png',
        'assets/images/Air_Jordan_High.png',
        'assets/images/Jordan_Stadium.png',
        'assets/images/Nike_Dunk_Retro_Low.png',
      ],
      'Adidas': [
        'assets/images/Rivalry_Low_Lux.png',
        'assets/images/Centennial_RM.png',
        'assets/images/Forum_Low_CL.png',
        'assets/images/Stan_Smith.png',
        'assets/images/Adizero_Aruku.png',
      ],
      'Puma': [
        'assets/images/MB.01_Inverse_Toxic.png',
        'assets/images/MB.03_Porsche_Legacy.png',
        'assets/images/MB.03_CNY.png',
        'assets/images/MB.03_Spark.png',
        'assets/images/MB.01_Thermal.png',
      ],
    };

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: padding),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.grid_view_rounded, size: 28),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.bookmark_outline_rounded, size: 28),
                      onPressed: () {
                        Get.to(() => BookmarkPage());
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Text(
                  'Perfect Shoes',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const Text(
                  'For perfect style',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 16),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Obx(() {
                        return ElevatedButton(
                          onPressed: () => controller.changeCategory('Nike'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                controller.selectedCategory.value == 'Nike'
                                    ? Colors.orange
                                    : Colors.white,
                            foregroundColor:
                                controller.selectedCategory.value == 'Nike'
                                    ? Colors.white
                                    : Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            elevation: 0,
                          ),
                          child: const Text('Nike'),
                        );
                      }),
                      const SizedBox(width: 16),
                      Obx(() {
                        return ElevatedButton(
                          onPressed: () => controller.changeCategory('Adidas'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                controller.selectedCategory.value == 'Adidas'
                                    ? Colors.orange
                                    : Colors.white,
                            foregroundColor:
                                controller.selectedCategory.value == 'Adidas'
                                    ? Colors.white
                                    : Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            elevation: 0,
                          ),
                          child: const Text('Adidas'),
                        );
                      }),
                      const SizedBox(width: 16),
                      Obx(() {
                        return ElevatedButton(
                          onPressed: () => controller.changeCategory('Puma'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                controller.selectedCategory.value == 'Puma'
                                    ? Colors.orange
                                    : Colors.white,
                            foregroundColor:
                                controller.selectedCategory.value == 'Puma'
                                    ? Colors.white
                                    : Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            elevation: 0,
                          ),
                          child: const Text('Puma'),
                        );
                      }),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Obx(() {
                  final selectedProducts =
                      products[controller.selectedCategory.value] ?? [];
                  final selectedImages =
                      shoeImages[controller.selectedCategory.value] ?? [];

                  return GridView.builder(
                    itemCount: selectedProducts.length,
                    shrinkWrap: true,
                    physics:
                        const NeverScrollableScrollPhysics(), 
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 0.75,
                    ),
                    itemBuilder: (context, index) {
                      final product = selectedProducts[index];
                      final imageUrl = index < selectedImages.length
                          ? selectedImages[index]
                          : selectedImages[0];

                      final shoe = ShoeModel(
                        name: product['name']!,
                        price: double.parse(product['price']!
                            .replaceAll('Rp ', '')
                            .replaceAll('.', '')
                            .replaceAll(',', '.')),
                        imageUrl: imageUrl,
                        description: '', 
                      );

                      return Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset(
                                    imageUrl,
                                    fit: BoxFit.cover,
                                    height: 120,
                                    width: double.infinity,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Text(
                                    product['name']!,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Text(
                                    product['price']!,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              top: 8,
                              right: 8,
                              child: Obx(() => IconButton(
                                    icon: Icon(
                                      controller.isBookmarked(shoe)
                                          ? Icons.bookmark
                                          : Icons.bookmark_outline,
                                      color: controller.isBookmarked(shoe)
                                          ? Colors.orange
                                          : Colors.black,
                                    ),
                                    onPressed: () {
                                      controller.toggleBookmark(shoe);
                                    },
                                  )),
                            ),
                            Positioned(
                              bottom: 8,
                              right: 8,
                              child: IconButton(
                                icon: const Icon(Icons.arrow_forward),
                                onPressed: () {
                                  Get.to(() => ProductDetail(product: shoe));
                                },
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
