import 'package:flutter/material.dart';

class SlideInFromLeft extends StatefulWidget {
  final Widget child;
  final double delay;

  const SlideInFromLeft({super.key, required this.child, required this.delay});

  @override
  State<SlideInFromLeft> createState() => _SlideInFromLeftState();
}

class _SlideInFromLeftState extends State<SlideInFromLeft> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animation = Tween<Offset>(
      begin: const Offset(-1.0, 0.0),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(widget.delay, 1.0, curve: Curves.easeIn),
      ),
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: widget.child,
    );
  }
}
