import 'package:flutter/material.dart';

class LikeAnimation extends StatefulWidget {
  final Widget child;
  final bool isAnimating;
  final Duration duration;
  final VoidCallback? onEnd;
  final bool smallLike;

  const LikeAnimation({
    super.key,
    required this.child,
    required this.isAnimating,
    this.duration = const Duration(milliseconds: 150),
    this.onEnd,
    this.smallLike = false,
  });

  @override
  State<LikeAnimation> createState() => _LikeAnimationState();
}

class _LikeAnimationState extends State<LikeAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scale;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: widget.duration);
    scale = Tween<double>(begin: 1, end: 1.2).animate(controller);
  }

  @override
  void didUpdateWidget(covariant LikeAnimation oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isAnimating != oldWidget.isAnimating) {
      // Trigger the animation only if it's not already animating
      if (widget.isAnimating) {
        startAnimation();
      }
    }
  }

  // Starts the animation when isAnimating is true
  startAnimation() async {
    if (widget.isAnimating || widget.smallLike) {
      // Ensure we only trigger the animation once and avoid repeated triggers
      await controller.forward();
      await controller.reverse();
      await Future.delayed(const Duration(milliseconds: 200));

      // Callback to notify when the animation ends
      if (widget.onEnd != null) {
        widget.onEnd!();
      }
    }
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Wrap the child widget with ScaleTransition
    return ScaleTransition(scale: scale, child: widget.child);
  }
}
