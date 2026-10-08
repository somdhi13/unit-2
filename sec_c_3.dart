import 'package:flutter/material.dart';

class SecC3Screen extends StatelessWidget {
  const SecC3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Section C - Q3: Product Detail')),
      body: Column(
        children: [
          Stack(
            children: [
              Image.network('https://picsum.photos/600/350', height: 250, width: double.infinity, fit: BoxFit.cover),
              Positioned(
                top: 16,
                right: 16,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(20)),
                  child: const Text('20% OFF', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Premium Wireless Headphones', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    children: const [
                      Chip(label: Text('Bluetooth 5.2')),
                      Chip(label: Text('Active Noise Cancelling')),
                      Chip(label: Text('40h Battery')),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Experience crystal-clear sound and immersive bass with our top-tier wireless headphones engineered for daily comfort.',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      const Expanded(
                        child: Text('\$199.99', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.green)),
                      ),
                      Expanded(
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo, foregroundColor: Colors.white),
                          onPressed: () {},
                          icon: const Icon(Icons.shopping_cart),
                          label: const Text('Add to Cart'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
