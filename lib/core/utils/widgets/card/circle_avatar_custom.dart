import 'package:flutter/material.dart';

class CircleWidget extends StatelessWidget {
  const CircleWidget({
    super.key,
    this.backgroundColor,
    this.assetName,
    this.size,
    this.child,
  });

  final Color? backgroundColor;
  final double? size;
  final String? assetName;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size ?? 50,
      width: size ?? 50,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(50),
        image: assetName != null
            ? DecorationImage(image: AssetImage(assetName!))
            : null,
      ),
      child: child,
    );
  }
}
