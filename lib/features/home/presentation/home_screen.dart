import 'package:flutter/material.dart';
import '../../../core/widgets/price_tag.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Warung Digital'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Daftar Harga',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            PriceTag(label: 'Nasi Goreng', price: 15000),
            PriceTag(label: 'Es Teh Manis', price: 5000),
            PriceTag(label: 'Ayam Goreng', price: 18000),
          ],
        ),
      ),
    );
  }
}