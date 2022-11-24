import 'package:flutter/material.dart';

class AnimateImage extends StatefulWidget {
  const AnimateImage({Key? key}) : super(key: key);

  @override
  _AnimateImageState createState() => _AnimateImageState();
}

class _AnimateImageState extends State<AnimateImage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 3),
  )..repeat(reverse: true);

  late final Animation<Offset> _animation = Tween(
    begin: Offset.zero,
    end: const Offset(0,0.08),
  ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/clouds.png'),
        SlideTransition(
          position: _animation,
          child: Image.asset('assets/rocket_person.png'),
        ),
      ],
    );
  }
}
