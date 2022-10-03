import 'package:flutter/material.dart';

import 'home_page/home.dart';
import 'home_page/widgets/main_material_app.dart';

void main() {
  runApp(
    const MaterialAppMain(),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const ScaffoldMain();
  }
}
