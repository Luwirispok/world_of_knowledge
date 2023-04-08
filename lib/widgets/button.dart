import 'package:flutter/material.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key, required this.child, required this.onTap}) : super(key: key);

  final Widget child;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ScaleTap(
      onPressed: onTap,
      child: child,
    );
  }
}
