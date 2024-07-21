import 'package:app_yes_or_not/presentation/widgets/chat/my_message_bubble.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage("https://bookingagentinfo.com/wp-content/uploads/2023/05/Elizabeth-Lail-scaled-1.jpg"),
          ),
        ),
        title: const Text("Mi amor <3"),
        centerTitle: false,
      ) ,
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child:ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                return const MyMessageBubble();
              })
            ),
            Text("Hola mundo")
        
          ],
        ),
      ),
    );
  }
}



