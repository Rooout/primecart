import 'package:flutter/material.dart';
import 'package:primecart/models/product.dart';

class ItemDetailPage extends StatelessWidget {
  final Product product;

  const ItemDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.fields.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.fields.name,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              "Price: ${product.fields.price}",
              style: const TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 16.0),
            const Text(
              "Description:",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(
              product.fields.description,
              style: const TextStyle(fontSize: 16.0),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back to List'),
            ),
          ],
        ),
      ),
    );
  }
}
