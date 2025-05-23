enum FromWho { me, friend }

class Message {
  final String text;
  final String? image;
  final FromWho fromWho;

  Message({required this.text, this.image, required this.fromWho});
}
