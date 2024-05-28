import 'package:flutter/material.dart';
import 'package:ecommerce_project_chienbm/core/src_core.dart';

class BoxShimmerLoading extends StatelessWidget {
  const BoxShimmerLoading({
    super.key,
    this.height = 24,
    this.width = double.infinity,
  });

  final double? height;

  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          AppDimens.radius8,
        ),
      ),
    );
  }
}
