import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  static const route = '/chat-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 25, 25, 29),
      appBar: AppBar(
        title: const Text('Chat'),
      ),
      body: AnimatedContainer(
        duration: const Duration(seconds: 1),
        child: Column(
          children: [
            ListTile(
              leading: const Icon(
                Icons.chat_bubble,
                color: Colors.white,
              ),
              title: const Text(
                'Mika Ruru',
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).pushNamed('/mika-chat');
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.chat_bubble,
                color: Colors.white,
              ),
              title: const Text(
                'Falanor Onkydrasa',
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).pushNamed('/falanor-chat');
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.chat_bubble,
                color: Colors.white,
              ),
              title: const Text(
                '? ? ?',
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).pushNamed('/unknow-chat');
              },
            ),
          ],
        ),
      ),
    );
  }
}
