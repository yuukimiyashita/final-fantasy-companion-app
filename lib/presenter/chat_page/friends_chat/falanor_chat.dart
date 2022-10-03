import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';

class FalanorChat extends StatefulWidget {
  const FalanorChat({Key? key}) : super(key: key);

  @override
  State<FalanorChat> createState() => _FalanorChatState();
}

class _FalanorChatState extends State<FalanorChat> {
  final messageController = TextEditingController();

  List<Message> messages = [
    Message(
      text: 'Yuuki!',
      date: DateTime.now().subtract(const Duration(minutes: 1)),
      isSentByMe: false,
    ),
  ].reversed.toList();

  FocusNode focusChat = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 25, 25, 29),
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              child: ClipOval(
                child: Image.asset(
                  'assets/images/falanorface.jpg',
                  height: 40,
                  width: 40,
                ),
              ),
            ),
            const SizedBox(width: 10),
            const Text('Falanor Onkydrasa'),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: GroupedListView<Message, DateTime>(
              padding: const EdgeInsets.all(8),
              reverse: true,
              order: GroupedListOrder.DESC,
              useStickyGroupSeparators: true,
              floatingHeader: true,
              elements: messages,
              groupBy: (message) => DateTime(
                message.date.year,
                message.date.month,
                message.date.day,
              ),
              groupHeaderBuilder: (Message message) => SizedBox(
                height: 40,
                child: Center(
                  child: Card(
                    color: Theme.of(context).primaryColor,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        DateFormat.yMMMd().format(message.date),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              itemBuilder: (context, Message message) => Align(
                alignment: message.isSentByMe
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                child: Card(
                  elevation: 8,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(message.text),
                  ),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            width: 350,
            height: 50,
            child: TextField(
              focusNode: focusChat,
              controller: messageController,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(20),
              ),
              onSubmitted: (text) async {
                final message = Message(
                  text: messageController.text,
                  date: DateTime.now(),
                  isSentByMe: true,
                );
                setState(() {
                  messages.add(message);
                  messageController.clear();
                  focusChat.requestFocus();
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

class appBarChatPage extends StatelessWidget {
  const appBarChatPage(
      {Key? key, required this.whoImage, required this.whoName})
      : super(key: key);

  final Widget whoImage;
  final Widget whoName;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Row(
      children: [
        CircleAvatar(
          radius: 20,
          child: ClipOval(
            child: Image.asset(
              'assets/images/yuukiface.png',
              height: 40,
              width: 40,
            ),
          ),
        ),
        const SizedBox(width: 10),
        const Text('Falanor Onkydrasa'),
      ],
    ));
  }
}

class Message {
  final String text;
  final DateTime date;
  final bool isSentByMe;

  const Message({
    required this.text,
    required this.date,
    required this.isSentByMe,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'text': text});
    result.addAll({'date': date.millisecondsSinceEpoch});
    result.addAll({'isSentByMe': isSentByMe});

    return result;
  }

  factory Message.fromMap(Map<String, dynamic> map) {
    return Message(
      text: map['text'] ?? '',
      date: DateTime.fromMillisecondsSinceEpoch(map['date']),
      isSentByMe: map['isSentByMe'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Message.fromJson(String source) =>
      Message.fromMap(json.decode(source));
}
