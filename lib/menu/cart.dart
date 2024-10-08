import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
          },
        ),
        title: Text('Cart'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  buildCartItem(
                    context,
                    'Nike Air Jordan',
                    'Rp 1.350.000',
                    'assets/images/Air_Jordan.png',
                  ),
                  buildCartItem(
                    context,
                    'Nike Air Jordan 1 Mid',
                    'Rp 1.130.000',
                    'assets/images/Air_Jordan_1_Mid.png',
                  ),
                  buildCartItem(
                      context,
                      'Adidas Rivalry Low Lux',
                      'Rp 1.700.000',
                      'assets/images/Rivalry_Low_Lux.png'),
                  buildCartItem(context, 'Adidas Centennial RM', 'Rp 1.600.000',
                      'assets/images/Centennial_RM.png'),
                  buildCartItem(
                      context,
                      'Puma MB.01 Inverse Toxic',
                      'Rp 2.799.000',
                      'assets/images/MB.01_Inverse_Toxic.png'),
                  buildCartItem(
                      context,
                      'Puma MB.03 Porsche Legacy',
                      'Rp 2.499.000',
                      'assets/images/MB.03_Porsche_Legacy.png'),
                ],
              ),
            ),
            buildTotalAmountSection(),
            buildCheckoutButton(),
          ],
        ),
      ),
    );
  }

  Widget buildCartItem(
      BuildContext context, String title, String price, String imageUrl) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Image.asset(imageUrl, height: 60, width: 60),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Men Shoe\'s'),
                  Text(price, style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.remove_circle_outline),
                  onPressed: () {
                  },
                ),
                Text('1'),
                IconButton(
                  icon: Icon(Icons.add_circle_outline),
                  onPressed: () {
                  },
                ),
              ],
            ),
            IconButton(
              icon: Icon(Icons.delete_outline, color: Colors.red),
              onPressed: () {
              },
            )
          ],
        ),
      ),
    );
  }

  Widget buildTotalAmountSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Total',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Text('Rp 10.078.000',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue)),
        ],
      ),
    );
  }

  Widget buildCheckoutButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
        },
        child: Text('Checkout'),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange, 
          padding: EdgeInsets.symmetric(vertical: 16.0),
        ),
      ),
    );
  }
}
