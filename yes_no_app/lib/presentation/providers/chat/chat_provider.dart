import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final chatScrollController = ScrollController();
  final getYesNoAnswer = GetYesNoAnswer();

  List<Message> messageList = [];

  Future<void> sendMessage(String text) async {
    //TODO implement method

    final message = Message(text: text, fromWho: FromWho.me);

    messageList.add(message);

    moveScrollToButtom();

    if (text.endsWith('?')) await friendReply();

    notifyListeners();
  }

  Future<void> friendReply() async {
    await Future.delayed(Duration(milliseconds: 100));

    final friendMessage = await getYesNoAnswer.getAnswer();

    messageList.add(friendMessage);
  }

  void moveScrollToButtom() {
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }
}
