import 'package:flutter/material.dart';

class Product {
  final String name;
  final double price;
  final String imageUrl;
  const Product({required this.name, required this.price, required this.imageUrl});
}

class SecB3Screen extends StatelessWidget {
  const SecB3Screen({super.key});

  final List<Product> products = const [
    Product(name: 'Wireless Headphones', price: 99.99, imageUrl: 'https://picsum.photos/300/300?1'),
    Product(name: 'Smart Watch', price: 149.50, imageUrl: 'https://picsum.photos/300/300?2'),
    Product(name: 'Running Shoes', price: 79.99, imageUrl: 'https://picsum.photos/300/300?3'),
    Product(name: 'Backpack', price: 49.99, imageUrl: 'https://picsum.photos/300/300?4'),
    Product(name: 'Sunglasses', price: 29.99, imageUrl: 'https://picsum.photos/300/300?5'),
    Product(name: 'Coffee Maker', price: 89.00, imageUrl: 'https://picsum.photos/300/300?6'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Section B - Q3: Product Listing')),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            elevation: 3,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                    child: Image.network(product.imageUrl, width: double.infinity, fit: BoxFit.cover),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(product.name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16), maxLines: 1, overflow: TextOverflow.ellipsis),
                      const SizedBox(height: 4),
                      Text('\$${product.price.toStringAsFixed(2)}', style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
