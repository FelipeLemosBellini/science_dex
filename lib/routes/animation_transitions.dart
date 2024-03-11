import 'package:flutter/material.dart';

abstract class AnimationTransitions {
  static Widget rightToLeft(context, animation, secondaryAnimation, child) => SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(1.0, 0.0),
        end: Offset.zero,
      ).animate(CurvedAnimation(parent: animation, curve: Curves.easeInOut)),
      child: SlideTransition(
          position: Tween<Offset>(
            begin: Offset.zero,
            end: const Offset(-1.0, 0.0),
          ).animate(CurvedAnimation(parent: secondaryAnimation, curve: Curves.easeInOut)),
          child: child));

  static Widget leftToRight(context, animation, secondaryAnimation, child) => SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(-1.0, 0.0),
        end: Offset.zero,
      ).animate(CurvedAnimation(parent: animation, curve: Curves.easeInOut)),
      child: SlideTransition(
          position: Tween<Offset>(
            begin: Offset.zero,
            end: const Offset(1.0, 0.0),
          ).animate(CurvedAnimation(parent: secondaryAnimation, curve: Curves.easeInOut)),
          child: child));

  static Widget downToUp(context, animation, secondaryAnimation, child) => SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0.0, 1.0),
        end: Offset.zero,
      ).animate(CurvedAnimation(parent: animation, curve: Curves.easeInOut)),
      child: SlideTransition(
          position: Tween<Offset>(
            begin: Offset.zero,
            end: const Offset(0.0, -1.0),
          ).animate(CurvedAnimation(parent: secondaryAnimation, curve: Curves.easeInOut)),
          child: child));
}
