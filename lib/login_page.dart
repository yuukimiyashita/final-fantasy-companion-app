import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  static const route = '/login-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // colocar  single child scroll view
      backgroundColor: const Color.fromARGB(255, 12, 65, 109),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 70),
            const Text(
              'Please log using and active account for ',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              '  FINAL FANTASY XIV.',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.center,
              width: 500,
              height: 380,
              color: Colors.black.withOpacity(0.5),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '     Square Enix ID',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 7),
                  SizedBox(
                    width: 360,
                    child: TextField(
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '     Square Enix Password',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 7),
                  SizedBox(
                    width: 360,
                    child: TextField(
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  MaterialButton(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(2.0))),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/home-page');
                    },
                    elevation: 5.0,
                    minWidth: 300.0,
                    height: 40,
                    color: Colors.red,
                    child: const Text(
                      'Log In',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    '* Users with security tokens must use the code displayed on their token to log in.',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 7),
                  const Text(
                    '* If you experience trouble logging in, please try deleting your cache or updating Android System WebView.',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            Container(
              height: 80,
              width: 500,
              color: Colors.black.withOpacity(0.5),
              child: Column(
                children: [
                  const SizedBox(height: 9),
                  Image.asset(
                    'assets/images/squareenixlogo.png',
                    height: 15,
                  ),
                  MaterialButton(
                    shape: const RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(2.0),
                      ),
                    ),
                    onPressed: () {},
                    minWidth: 340.0,
                    height: 30,
                    child: const Text(
                      'Forgot your ID or password?',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
