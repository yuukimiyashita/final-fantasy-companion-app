import 'package:flutter/material.dart';

class BuyitemsPage extends StatelessWidget {
  const BuyitemsPage({Key? key}) : super(key: key);
  static const route = '/buy-page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 25, 25, 29),
      appBar: AppBar(
        title: const Text('Buy Items'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 200),
          Container(
            height: 150,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.transparent.withOpacity(0.1),
            ),
            child: Column(
              children: const [
                columnBuy(
                  itemName: 'Something',
                  itemDescription: 'something really cool',
                  itemPrice: '23990 Gil',
                  itemIcon: 'assets/images/yuukiface.jpg',
                ),
                columnBuy(
                  itemName: 'Something',
                  itemDescription: 'something really cool',
                  itemPrice: '23990 Gil',
                  itemIcon: 'assets/images/yuukiface.jpg',
                ),
                columnBuy(
                  itemName: 'Something',
                  itemDescription: 'something really cool',
                  itemPrice: '23990 Gil',
                  itemIcon: 'assets/images/yuukiface.jpg',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class columnBuy extends StatelessWidget {
  const columnBuy({
    Key? key,
    required this.itemName,
    required this.itemPrice,
    required this.itemDescription,
    required this.itemIcon,
  }) : super(key: key);
  final String itemName;
  final String itemPrice;
  final String itemDescription;
  final String itemIcon;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 8),
          Image.asset(
            itemIcon,
            height: 60,
            width: 60,
          ),
          Text(
            itemName,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),
          ),
          Text(
            itemPrice,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            itemDescription,
            style: const TextStyle(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
