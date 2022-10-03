import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);
  static const route = '/item-page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 25, 25, 29),
      appBar: AppBar(
        title: const Text('Inventory'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          SizedBox(height: 15),
          MaterialButtonItemPage(
            route: '/sell-page',
            name: 'Yuuno Sabitsumade',
          ),
          SizedBox(height: 20),
          MaterialButtonItemPage(
            route: '/sell-page',
            name: 'Mika Hoshii',
          ),
          SizedBox(height: 20),
          MaterialButtonItemPage(
            route: '/sell-page',
            name: 'Yuuno Sabitsumade',
          ),
        ],
      ),
    );
  }
}

class MaterialButtonItemPage extends StatelessWidget {
  const MaterialButtonItemPage(
      {Key? key, required this.name, required this.route})
      : super(key: key);
  final String name;
  final String route;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.of(context).pushNamed(route);
      },
      color: Colors.transparent.withOpacity(0.1),
      height: 70,
      minWidth: 350,
      child: Text(
        name,
        style: const TextStyle(fontSize: 15, color: Colors.white),
        textAlign: TextAlign.start,
      ),
    );
  }
}
