import 'package:crafty_bay/features/auth/ui/controller/main_bottom_nav_controller.dart';
import 'package:crafty_bay/features/common/ui/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({super.key});

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (_, __) {
        _backToHome();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Wishlist'),
          leading: IconButton(
            onPressed: _backToHome,
            icon: Icon(Icons.arrow_back_ios),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text('Prosejit Sarker'),
              Text('Live Code Editing')
            ]
          ),
        )
      ),
    );
  }

  void _backToHome() {
    Get.find<MainBottomNavController>().backToHome();
  }
}
