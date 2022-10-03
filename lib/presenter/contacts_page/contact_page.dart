import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);
  static const route = '/contact-page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 25, 25, 29),
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: Column(
        children: [
          ListTile(
            onTap: () {
              Navigator.of(context).pushNamed('/mika-chat');
            },
            leading: CircleAvatar(
              radius: 18,
              child: ClipOval(
                child: Image.asset(
                  'assets/images/mika.jpg',
                ),
              ),
            ),
            title: const Text(
              'Mika Ruru                                          Online',
              textAlign: TextAlign.start,
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushNamed('/falanor-chat');
            },
            leading: CircleAvatar(
              radius: 18,
              child: ClipOval(
                child: Image.asset(
                  'assets/images/falanorface.jpg',
                ),
              ),
            ),
            title: const Text(
              'Falanor Onkydrasa                           Online',
              textAlign: TextAlign.start,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
