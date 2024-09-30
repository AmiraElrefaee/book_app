import 'package:flutter/cupertino.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.SlidingAnimation,
  });

  final Animation<Offset> SlidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation:SlidingAnimation ,
        builder: (context,_) {
          return SlideTransition(
            position: SlidingAnimation,
            child: const  Text('Read Free Books',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 80,
                  fontFamily: 'libre'
              ),),
          );
        }
    );
  }
}