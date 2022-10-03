import 'package:flutter/material.dart';

class SellsPage extends StatelessWidget {
  const SellsPage({Key? key}) : super(key: key);
  static const route = '/sell-page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 25, 25, 29),
      appBar: AppBar(
        title: const Text('Sell Items'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(height: 70),
            inventoryRow(iconImg: 'assets/images/yuuki body.jpg'),
            // SizedBox(height: 15),
            // inventoryRow(),
            // SizedBox(height: 15),
            // inventoryRow(),
            // SizedBox(height: 15),
            // inventoryRow(),
            // SizedBox(height: 15),
            // inventoryRow(),
            // SizedBox(height: 15),
            // inventoryRow(),
            // SizedBox(height: 15),
            // inventoryRow(),
            // SizedBox(height: 15),
            // inventoryRow(),
            // SizedBox(height: 15),
            // inventoryRow(),
            // SizedBox(height: 15),
            // inventoryRow(),
            // SizedBox(height: 15),
            // inventoryRow(),
            // SizedBox(height: 15),
            // inventoryRow(),
          ],
        ),
      ),
    );
  }
}

class inventoryRow extends StatelessWidget {
  const inventoryRow({Key? key, required this.iconImg}) : super(key: key);
  final String iconImg;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.black38,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Image.asset(iconImg),
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.black38,
            borderRadius: BorderRadius.circular(12),
          ),
          //child: Image.asset('name'),
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.black38,
            borderRadius: BorderRadius.circular(12),
          ),
          //child: Image.asset('name'),
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.black38,
            borderRadius: BorderRadius.circular(12),
          ),
          //child: Image.asset('name'),
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.black38,
            borderRadius: BorderRadius.circular(12),
          ),
          //child: Image.asset('name'),
        ),
      ],
    );
  }
}
