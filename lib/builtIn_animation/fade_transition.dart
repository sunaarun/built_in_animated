import 'package:flutter/material.dart';
class MyFadeTransition extends StatefulWidget {
  const MyFadeTransition({Key? key}) : super(key: key);

  @override
  _MyFadeTransitionState createState() => _MyFadeTransitionState();
}

class _MyFadeTransitionState extends State<MyFadeTransition> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 5),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeInCirc,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FadeTransition Example"),),
      body: Center(
        child: FadeTransition(
      opacity: _animation,
      child: Container(
        margin: EdgeInsets.all(20),
        width: 200,
        height: 200,
        color: Colors.teal
      ),
    ),
      ),
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }
}
