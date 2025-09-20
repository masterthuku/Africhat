import 'package:africhat/core/theme.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage("https://picsum.photos/200"),
            ),
            SizedBox(width: 10),
            Text("John Doe", style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: DefaultColors.whiteText,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(20),
              children: [
                _buildRecievedMessage(context, "Hello, how are you doing"),
                SizedBox(height: 10),
                _buildSentMessage(context, "I am fine, how are you?"),
                SizedBox(height: 10),
                _buildRecievedMessage(context, "I am fine, thanks for asking."),
                SizedBox(height: 10),
                _buildSentMessage(
                  context,
                  "What's the progress on the Chat app?",
                ),
                SizedBox(height: 10),
                _buildRecievedMessage(
                  context,
                  "The Chat app is almost done, we are just testing it.",
                ),
                SizedBox(height: 10),
                _buildSentMessage(context, "When will it be ready?"),
                SizedBox(height: 10),
                _buildRecievedMessage(
                  context,
                  "We are working on it, it will be ready in a week.",
                ),
                SizedBox(height: 10),
                _buildSentMessage(context, "Great👌, thanks for the update."),
                SizedBox(height: 10),
                _buildRecievedMessage(context, "You're welcome."),
              ],
            ),
          ),
          _buildMessageInput(context),
        ],
      ),
    );
  }

  Widget _buildRecievedMessage(BuildContext context, String message) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(right: 30, top: 5, bottom: 5),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: DefaultColors.receiverMessage,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(message, style: Theme.of(context).textTheme.bodyMedium),
      ),
    );
  }

  Widget _buildSentMessage(BuildContext context, String message) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: EdgeInsets.only(right: 30, top: 5, bottom: 5),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: DefaultColors.senderMessage,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(message, style: Theme.of(context).textTheme.bodyMedium),
      ),
    );
  }

  Widget _buildMessageInput(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: DefaultColors.sentMessageInput,
        borderRadius: BorderRadius.circular(25),
      ),
      margin: EdgeInsets.all(25),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          GestureDetector(
            child: Icon(Icons.camera_alt, color: Colors.grey),
            onTap: () {},
          ),
          SizedBox(width: 10),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Message",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none,
              ),
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(width: 10),
          GestureDetector(child: Icon(Icons.send, color: Colors.grey,
          ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
