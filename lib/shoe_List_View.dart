import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_buttom_navbar/controller/shoe_controller.dart';
import 'package:tugas_buttom_navbar/models/shoe_model.dart';

class ShoeListView extends StatelessWidget {
  final ShoeController shoeController = Get.put(ShoeController());

  @override
  Widget build(BuildContext context) {
    shoeController.loadShoes(); 

    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Sepatu'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              ShoeModel shoe = ShoeModel(
                id: DateTime.now().millisecondsSinceEpoch.toString(),
                name: "Nama Sepatu",
                description: "Deskripsi Sepatu",
                price: 100000.0,
                imageUrl: 'assets/images/placeholder.png',
              );
              shoeController.addShoe(shoe);
              Get.snackbar("Success", "Shoe added successfully",
                  snackPosition: SnackPosition.BOTTOM);
            },
            child: const Text('Tambah Sepatu'),
          ),
          Expanded(
            child: Obx(() {
              return ListView.builder(
                itemCount: shoeController.shoes.length,
                itemBuilder: (context, index) {
                  final shoe = shoeController.shoes[index];
                  return ListTile(
                    title: Text(shoe.name),
                    subtitle: Text(
                        '${shoe.description} - Rp${shoe.price.toString()}'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () {
                            shoeController.deleteShoe(shoe.id!);
                            Get.snackbar("Success", "Shoe deleted successfully",
                                snackPosition: SnackPosition.BOTTOM);
                          },
                        ),
                        IconButton(
                          icon: Icon(
                            shoeController.bookmarks.contains(shoe)
                                ? Icons.bookmark
                                : Icons.bookmark_border,
                          ),
                          onPressed: () {
                            shoeController.toggleBookmark(shoe);
                            Get.snackbar(
                                "Bookmark Toggled", "Bookmark status changed",
                                snackPosition: SnackPosition.BOTTOM);
                          },
                        ),
                      ],
                    ),
                  );
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}
