import 'package:ecommerce/presentation/ui/widgets/categori_card.dart';
import 'package:ecommerce/presentation/ui/widgets/product_card.dart';
import 'package:flutter/material.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({super.key});

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Wish List',
          style: TextStyle(color: Colors.black),
        ),
        leading: const BackButton(
          color: Colors.black,
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return const FittedBox(child: ProductCard());
          },
        ),
      ),
    );
  }
}
