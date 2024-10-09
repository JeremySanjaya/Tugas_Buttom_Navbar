import 'package:flutter/material.dart';
import 'package:tugas_buttom_navbar/models/shoe_model.dart';

class ProductDetail extends StatelessWidget {
  final ShoeModel product;

  const ProductDetail({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: SingleChildScrollView( 
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              product.imageUrl,
              fit: BoxFit.cover, 
            ),
            const SizedBox(height: 16),
            Text(
              product.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'Price: Rp ${product.price.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 16),
            Text(
              product.description.isNotEmpty
                  ? product.description
                  : 'No description available.', 
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
