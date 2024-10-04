import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  final String productName;
  final String productPrice;
  final String productImage;

  const ProductDetail({
    Key? key,
    required this.productName,
    required this.productPrice,
    required this.productImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(productName),
      ),
      body: SingleChildScrollView(
        // Wrap in SingleChildScrollView
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image.asset(productImage), // Display the product image
              SizedBox(height: 16),
              Text(
                productName,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                productPrice,
                style: TextStyle(fontSize: 20, color: Colors.orange),
              ),
              SizedBox(height: 16),
              // Additional details (e.g., description, sizes, colors)
              Text("Description"),
              // Add other widgets for colors, sizes, etc.
              // For now, just a placeholder
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Add to cart functionality can be added here
                },
                child: Text('Add to Cart'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
