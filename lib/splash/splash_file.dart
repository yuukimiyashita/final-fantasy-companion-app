import '../login_page.dart';
import 'package:flutter/material.dart';

class SplashFile extends StatefulWidget {
  const SplashFile({Key? key}) : super(key: key);

  @override
  State<SplashFile> createState() => _SplashFileState();
}

class _SplashFileState extends State<SplashFile> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5)).then((value) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Image.asset(
        'assets/images/mogglelogo.png',
        fit: BoxFit.cover,
        height: 500,
        width: 500,
      ),
    );
  }
}
