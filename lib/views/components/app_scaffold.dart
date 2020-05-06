import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final Widget child;
  final double top;
  final double left;
  final double bottom;
  final double right;
  final AppBar appBar;

  AppScaffold(
      {@required this.child,
      this.top,
      this.left,
      this.bottom,
      this.right,
      this.appBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar,
        body: Padding(
          padding: EdgeInsets.only(
              top: top ?? 50.0,
              left: left ?? 20,
              right: right ?? 20,
              bottom: bottom ?? 0),
          child: child,
        ));
  }
}
