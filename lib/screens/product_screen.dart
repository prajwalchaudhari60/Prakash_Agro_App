import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({Key? key}) : super(key: key);

  final List<String> products = [
    'Seed',
    'Fertilizer',
    'Pesticide',
    'Tractor Parts',
    'Irrigation',
    'Harvest Tools',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.95,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.agriculture, size: 50, color: Colors.green),
                SizedBox(height: 10),
                Text(products[index], style: TextStyle(fontSize: 16))
              ],
            ),
          );
        },
      ),
    );
  }
}