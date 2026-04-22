import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProductDetailScreen extends StatelessWidget {

  final String productName;

  ProductDetailScreen({required this.productName});

  void openWhatsApp() async {

    final url = Uri.parse(
        "https://wa.me/919322098176?text=I want $productName");

    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    }

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text(productName),
      ),

      body: Center(
        child: ElevatedButton(
          child: Text("Order on WhatsApp"),
          onPressed: openWhatsApp,
        ),
      ),
    );
  }
}