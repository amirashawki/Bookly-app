import 'package:flutter/material.dart';

class SildingText extends StatelessWidget {
  const SildingText({
    super.key,
    required this.slideAnimation,
  });

  final Animation<Offset> slideAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slideAnimation,
      builder: (context, _) {
        return SlideTransition(
          position: slideAnimation,
          child: Center(
            child: Text(
              'Read free Books',
            ),
          ),
        );
      },
    );
  }
}
