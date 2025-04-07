import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/friend_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_messager_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://cdn-icons-png.flaticon.com/512/6858/6858504.png',
            ),
          ),
        ),
        centerTitle: false,
        title: Text('My friend'),
      ),
      body: _ChatContent(),
    );
  }
}

class _ChatContent extends StatelessWidget {
  const _ChatContent();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  // if (index %% 0) return Text('xd');

                  return (index % 2 == 0)
                      ? MyMessageBubbleWidget()
                      : FriendMessageBubble();
                },
              ),
            ),
            Text('data'),
          ],
        ),
      ),
    );
  }
}
