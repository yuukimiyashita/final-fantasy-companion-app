import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerHomePage extends StatelessWidget {
  const DrawerHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 48, 48, 51),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 90,
              width: 500,
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 0, 66, 209)),
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset(
                      "assets/images/yuukiface.jpg",
                      height: 45,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Yuuki Miyashiya',
                    style: TextStyle(
                      color: (Colors.white),
                      fontSize: 17,
                    ),
                  ),
                  const SizedBox(width: 60),
                  IconButton(
                    icon: const Icon(Icons.account_circle),
                    iconSize: 27,
                    color: Colors.white,
                    onPressed: () async {
                      await launchUrl(Uri.parse(
                          'https://na.finalfantasyxiv.com/lodestone/account/login/'));
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 47,
              width: 270,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 36, 35, 35),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                children: const [
                  SizedBox(width: 12),
                  Icon(Icons.cookie_outlined),
                  SizedBox(width: 160),
                  Text(
                    '2',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    '/2',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 47,
              width: 270,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 36, 35, 35),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 12),
                  const Icon(Icons.apple_outlined),
                  const SizedBox(width: 160),
                  const Text(
                    '0',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_box,
                      size: 30,
                    ),
                  )
                ],
              ),
            ),
            ListTile(
              title: const Text(
                'Account',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
              leading: const Icon(
                Icons.mode_standby_outlined,
                color: Colors.grey,
                size: 26,
              ),
            ),
            const Divider(
              height: 2,
              endIndent: 150,
              color: Colors.grey,
            ),
            ListTile(
              title: const Text(
                'App Settings',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
              leading: const Icon(
                Icons.settings,
                color: Colors.grey,
                size: 26,
              ),
            ),
            const Divider(
              height: 2,
              endIndent: 150,
              color: Colors.grey,
            ),
            ListTile(
              title: const Text(
                'Change Character',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
              leading: const Icon(
                Icons.change_circle_outlined,
                color: Colors.grey,
                size: 26,
              ),
            ),
            const SizedBox(height: 20),
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                const Divider(
                  height: 2,
                  thickness: 27,
                  color: Color.fromARGB(255, 36, 35, 35),
                ),
                Text(
                  '     FINAL FANTASY XIV',
                  style: TextStyle(
                    color: Colors.grey.shade400,
                  ),
                ),
              ],
            ),
            ListTile(
              title: const Text(
                'News',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
              leading: const Icon(
                Icons.newspaper,
                color: Colors.grey,
                size: 26,
              ),
            ),
            const Divider(
              height: 2,
              endIndent: 150,
              color: Colors.grey,
            ),
            ListTile(
              title: const Text(
                'Gameplay Guide',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
              leading: const Icon(
                Icons.book,
                color: Colors.grey,
                size: 26,
              ),
            ),
            const Divider(
              height: 2,
              endIndent: 150,
              color: Colors.grey,
            ),
            ListTile(
              title: const Text(
                'Eorzea Database',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
              leading: const Icon(
                Icons.book_outlined,
                color: Colors.grey,
                size: 26,
              ),
            ),
            const SizedBox(height: 20),
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                const Divider(
                  height: 2,
                  thickness: 27,
                  color: Color.fromARGB(255, 36, 35, 35),
                ),
                Text(
                  '   Help',
                  style: TextStyle(
                    color: Colors.grey.shade400,
                  ),
                ),
              ],
            ),
            ListTile(
              title: const Text(
                'User Guide',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
              leading: const Icon(
                Icons.bookmark_outline_outlined,
                color: Colors.grey,
                size: 26,
              ),
            ),
            const Divider(
              height: 2,
              endIndent: 150,
              color: Colors.grey,
            ),
            ListTile(
              title: const Text(
                'FAQ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
              leading: const Icon(
                Icons.g_translate_sharp,
                color: Colors.grey,
                size: 26,
              ),
            ),
            const Divider(
              height: 2,
              endIndent: 150,
              color: Colors.grey,
            ),
            ListTile(
              title: const Text(
                'About FFXIV Companion',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
              leading: const Icon(
                Icons.phone_android_sharp,
                color: Colors.grey,
                size: 26,
              ),
            ),
            const Divider(
              height: 2,
              endIndent: 150,
              color: Colors.grey,
            ),
            ListTile(
              title: const Text(
                'Support',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
              leading: const Icon(
                Icons.support_agent_sharp,
                color: Colors.grey,
                size: 26,
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
