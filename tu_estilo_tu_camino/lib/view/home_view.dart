import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  final List<Map<String, String>> fallbackProducts = [
    {'name': 'Camiseta', 'price': '10', 'imageUrl': 'https://via.placeholder.com/150'},
    {'name': 'Pantalón', 'price': '20', 'imageUrl': 'https://via.placeholder.com/150'},
    {'name': 'Zapatos', 'price': '30', 'imageUrl': 'https://via.placeholder.com/150'},
    {'name': 'Suéter', 'price': '25', 'imageUrl': 'https://via.placeholder.com/150'},
    {'name': 'Gorra', 'price': '15', 'imageUrl': 'https://via.placeholder.com/150'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catálogo de Productos'),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: fallbackProducts.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            final product = fallbackProducts[index];
            return ProductCard(
              name: product['name']!,
              price: product['price']!,
              imageUrl: product['imageUrl']!,
            );
          },
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String name;
  final String price;
  final String imageUrl;

  ProductCard({
    required this.name,
    required this.price,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      elevation: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(10.0)),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  '\$${price}',
                  style: const TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
