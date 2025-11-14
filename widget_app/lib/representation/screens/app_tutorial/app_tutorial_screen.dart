import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String tittle;
  final String caption;
  final String imageUrl;

  SlideInfo({
    required this.tittle,
    required this.caption,
    required this.imageUrl,
  });
}

final slides = <SlideInfo>[
  SlideInfo(
    tittle: 'Search the food',
    caption:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam tempor fermentum nulla in placerat. ',
    imageUrl: 'assets/images/1.png',
  ),

  SlideInfo(
    tittle: 'Fast delivery',
    caption:
        'Phasellus fringilla volutpat felis at cursus. Aenean eleifend nulla magna, ut aliquet tortor accumsan ut. In hac habitasse platea dictumst. Nam mollis sodales risus vulputate lacinia. In id enim at mi consectetur pharetra id quis purus. Proin ultricies dignissim sapien, eu sollicitudin mauris dignissim sed. Duis mattis blandit sodales. Nam in consequat risus.',
    imageUrl: 'assets/images/2.png',
  ),

  SlideInfo(
    tittle: 'Enjoy the food',
    caption:
        'Aliquam volutpat at quam et placerat. Phasellus ante turpis, luctus eget urna sit amet, aliquam posuere lorem. Morbi sed scelerisque massa. Aliquam tempor semper magna in mattis. Ut maximus ultrices arcu, eu efficitur sapien commodo non. Fusce vel massa nulla. Mauris a quam a nisl malesuada ullamcorper. Vestibulum lectus tellus, tincidunt sed aliquam non, congue et dui. Proin sed sem enim. Curabitur rhoncus nunc id turpis ultricies malesuada.',
    imageUrl: 'assets/images/3.png',
  ),
];

class AppTutorialScreen extends StatefulWidget {
  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  bool endReach = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            onPageChanged: (value) {
              if (value == 2) {
                setState(() {
                  endReach = true;
                });
              }

              if (endReach == true && value != 2) {
                setState(() {
                  endReach = false;
                });
              }
            },
            physics: BouncingScrollPhysics(),
            children:
                slides
                    .map(
                      (slide) => _Slide(
                        title: slide.tittle,
                        caption: slide.caption,
                        imageUrl: slide.imageUrl,
                      ),
                    )
                    .toList(),
          ),

          Positioned(
            right: 20,
            top: 50,
            child: TextButton(
              onPressed: () => context.pop(),
              child: Text('skip'),
            ),
          ),

          endReach
              ? Positioned(
                bottom: 30,
                right: 30,
                child: FilledButton(
                  onPressed: () => context.pop(),
                  child: const Text('Start'),
                ),
              )
              : SizedBox(),
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({
    required this.title,
    required this.caption,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final TextTheme(:titleLarge, :bodySmall) = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imageUrl)),

            const SizedBox(height: 10),
            Text(title, style: titleLarge),
            const SizedBox(height: 10),
            Text(caption, style: bodySmall),
          ],
        ),
      ),
    );
  }
}
