import 'package:flutter/material.dart';
import 'package:updish_task/core/constants/app_assets.dart';
import 'package:updish_task/core/constants/loader.dart';
import 'package:updish_task/core/widgets/products_card.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  bool showProducts = false;

  void loadProducts() {
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        showProducts = true;
      });
    });
  }

  @override
  void initState() {
    Future.delayed(Duration.zero, loadProducts);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Products',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16),
        child: showProducts
            ? ListView(
                children: [
                  ProductContainer(
                    title: 'Fried Rice',
                    images: AppAssets.product1,
                    price: '20,000',
                    onTab: () {},
                  ),
                  ProductContainer(
                    title: 'Soup Rice',
                    images: AppAssets.product2,
                    price: '34,000',
                    onTab: () {},
                  ),
                  ProductContainer(
                    title: 'Jollof Rice',
                    images: AppAssets.product1,
                    price: '15,000',
                    onTab: () {},
                  ),
                  ProductContainer(
                    title: 'Jazzy Burger',
                    images: AppAssets.product2,
                    price: '20,000',
                    onTab: () {},
                  ),
                ],
              )
            : const Center(child: Loader()),
      )),
    );
  }
}
