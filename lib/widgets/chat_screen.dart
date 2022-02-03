import 'package:chat_ui/models/message_models.dart';
import 'package:chat_ui/models/user_model.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final User? user;
  ChatScreen({this.user});
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  _buildMessage(message, isMe) {
    return Container(
      margin: isMe
          ? EdgeInsets.only(
              top: 8,
              bottom: 8,
              left: 88,
            )
          : EdgeInsets.only(
              top: 8,
              bottom: 8,
              right: 88,
            ),
      padding: EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 15,
      ),
      decoration: BoxDecoration(
        color: isMe ? Theme.of(context).accentColor : Color(0xFFFFEFEE),
        borderRadius: isMe
            ? BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              )
            : BorderRadius.only(
                topRight: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
      ),
      child: Column(
        children: [
          Text(message.time),
          SizedBox(height: 5),
          Text(message.text),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text(''),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz,
              size: 28,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: ClipRRect(
                //cut the edges

                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                child: ListView.builder(
                  padding: EdgeInsets.only(top: 15),
                  itemBuilder: (context, index) {
                    final Message message = messages[index];
                    bool isMe = message.sender?.id == currentUser.id;
                    return _buildMessage(message, isMe);
                  },
                  itemCount: messages.length,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
