import 'package:get/get.dart';
import 'package:tugas_buttom_navbar/models/shoe_model.dart';

class ShoeController extends GetxController {
  var shoes = <ShoeModel>[].obs;
  var bookmarks = <ShoeModel>[].obs; 
  var selectedCategory = ''.obs; 

  @override
  void onInit() {
    super.onInit();
    loadShoes(); 
  }


  void loadShoes() {
  
    shoes.addAll([
      ShoeModel(
        id: '1',
        name: 'Nike Air Max',
        description: 'Comfortable running shoes.',
        price: 120000.0,
        imageUrl: 'assets/images/nike_air_max.png',
      ),
      ShoeModel(
        id: '2',
        name: 'Adidas Superstar',
        description: 'Classic street style shoes.',
        price: 90000.0,
        imageUrl: 'assets/images/adidas_superstar.png',
      ),
    ]);
  }


  void addShoe(ShoeModel shoe) {
    shoes.add(shoe); 
  }


  void deleteShoe(String id) {
    shoes.removeWhere(
        (shoe) => shoe.id == id); 
  }

  void toggleBookmark(ShoeModel shoe) {
    if (bookmarks.contains(shoe)) {
      bookmarks.remove(shoe);
      Get.snackbar('Removed from Bookmarks', shoe.name,
          snackPosition: SnackPosition.BOTTOM);
    } else {
      bookmarks.add(shoe);
      Get.snackbar('Added to Bookmarks', shoe.name,
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  bool isBookmarked(ShoeModel shoe) {
    return bookmarks.contains(shoe);
  }

  void changeCategory(String category) {
    selectedCategory.value = category; 
  }
}
