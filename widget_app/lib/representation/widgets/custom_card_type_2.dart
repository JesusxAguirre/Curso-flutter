import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 50,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(
              'https://www.westcountrygalleries.co.uk/media/artwork/ART1040317-colourful%20landscape.jpg',
            ),
            placeholder: AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          ),
          Container(
            alignment: AlignmentDirectional.center,
            padding: EdgeInsets.only(right: 20, top: 10, bottom: 10),

            child: Text('Un hermoso paisaje'),
          ),
        ],
      ),
    );
  }
}
