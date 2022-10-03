import 'package:flutter/material.dart';

import '../button_circle_home.dart';
import '../drawer_homepage.dart';

class ScaffoldMain extends StatefulWidget {
  const ScaffoldMain({
    Key? key,
  }) : super(key: key);

  @override
  State<ScaffoldMain> createState() => _scaffoldMainState();
}

class _scaffoldMainState extends State<ScaffoldMain> {
  bool visible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      endDrawer: const DrawerHomePage(),
      backgroundColor: const Color.fromARGB(255, 10, 10, 10),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Yuuki Miyashiya'),
      ),
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            //usar position
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                'assets/images/yuuki body.jpg',
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
              ),
              ////aaaaaaaaa
              Positioned(
                top: 70,
                left: 20,
                child: visible
                    ? Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        width: 148,
                        height: 25,
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            Icon(
                              Icons.alarm_off_outlined,
                              size: 16,
                              color: const Color.fromARGB(132, 71, 67, 67)
                                  .withOpacity(0.9),
                            ),
                            const SizedBox(width: 10),
                            const Text(
                              'Bahamut',
                              style: TextStyle(
                                color: Color.fromARGB(255, 241, 237, 192),
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(width: 15),
                            IconButton(
                              onPressed: () => setState(() {
                                visible = !visible;
                              }),
                              iconSize: 16,
                              icon: Icon(
                                visible
                                    ? Icons.keyboard_arrow_up
                                    : Icons.keyboard_arrow_down,
                              ),
                              color: const Color.fromARGB(0, 26, 84, 170)
                                  .withOpacity(0.7),
                            ),
                          ],
                        ),
                      )
                    : Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        width: 150,
                        height: 60,
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            Icon(
                              Icons.alarm_off_outlined,
                              size: 16,
                              color: const Color.fromARGB(132, 71, 67, 67)
                                  .withOpacity(0.9),
                            ),
                            const SizedBox(width: 10),
                            const Text(
                              'Historic: \nDurandal',
                              style: TextStyle(
                                color: Color.fromARGB(255, 241, 237, 192),
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(width: 15),
                            IconButton(
                              onPressed: () => setState(() {
                                visible = !visible;
                              }),
                              iconSize: 16,
                              icon: Icon(
                                visible
                                    ? Icons.keyboard_arrow_up
                                    : Icons.keyboard_arrow_down,
                              ),
                              color: const Color.fromARGB(0, 26, 84, 170)
                                  .withOpacity(0.7),
                            ),
                          ],
                        ),
                      ),
              ),
              //////aaaaaaa
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ButtonCircleIconHome(
                        descrition: 'Chat',
                        icon: Icons.chat,
                        route: '/chat-page',
                      ),
                      ButtonCircleIconHome(
                        descrition: 'Events',
                        icon: Icons.event_available,
                        route: '/events-page',
                      ),
                      ButtonCircleIconHome(
                        descrition: 'Contacts',
                        icon: Icons.contact_mail_sharp,
                        route: '/contact-page',
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      ButtonCircleIconHome(
                        descrition: 'Items',
                        icon: Icons.shopping_bag,
                        route: '/item-page',
                      ),
                      ButtonCircleIconHome(
                        descrition: 'Sell',
                        icon: Icons.sell,
                        route: '/sell-page',
                      ),
                      ButtonCircleIconHome(
                        descrition: 'Buy',
                        icon: Icons.shopping_cart,
                        route: '/buy-page',
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ],
          ),
        ],
      )),
    );
  }
}
