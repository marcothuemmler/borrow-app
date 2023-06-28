import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

class AnimatedIconWidget extends StatefulWidget {
  const AnimatedIconWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _AnimatedIconWidgetState();
  }
}

class _AnimatedIconWidgetState extends State<AnimatedIconWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 700),
  )..repeat(reverse: true);

  late final Animation<Offset> _animation = Tween<Offset>(
    begin: const Offset(0, 1.1),
    end: const Offset(0, 1.3),
  ).animate(_controller);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SlideTransition(
          position: _animation,
          child: const Icon(
            Icons.keyboard_arrow_down_outlined,
            size: 30,
            color: CupertinoColors.systemGrey,
          ),
        )
      ],
    );
  }
}
