import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimatedGradientContainer extends StatefulWidget {
  final Duration animationDuration;
  final Widget child;

  const AnimatedGradientContainer({
    Key? key,
    this.animationDuration = const Duration(seconds: 5), required this.child,
  }) : super(key: key);

  @override
  State<AnimatedGradientContainer> createState() =>
      _AnimatedGradientContainerState();
}

class _AnimatedGradientContainerState extends State<AnimatedGradientContainer>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<double> _gradientShift;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(microseconds: 1),
    )..repeat();
    _gradientShift =
        Tween<double>(begin: 0.0, end: 10.0).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [context.theme.hintColor, context.theme.focusColor],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          transform: GradientRotation(
            _gradientShift.value,
          ),
        ),
      ),
      child: widget.child,
    );
  }
}
