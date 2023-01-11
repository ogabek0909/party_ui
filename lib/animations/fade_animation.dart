import 'package:flutter/material.dart';
import 'package:simple_animations/animation_builder/loop_animation_builder.dart';
import 'package:simple_animations/animation_builder/play_animation_builder.dart';

class FadeAnimation extends StatelessWidget {
  final Widget child;
  final int duration;
  const FadeAnimation({super.key, required this.child, required this.duration});

  @override
  Widget build(BuildContext context) {
    return PlayAnimationBuilder<double>(
      // child: child,
      tween: Tween(begin: -200, end: 0),
      duration: Duration(seconds: duration),
      builder: (context, value, ch) {
        // return child;
        return Transform.translate(

          offset: Offset(0, value),
          child: child,
        );
      },
    );
  }
}
