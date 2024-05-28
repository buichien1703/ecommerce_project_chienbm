// import 'package:flutter/material.dart';
// import 'package:ecommerce_project_chienbm/core/src_core.dart';

// part "shimmer_widget.dart";
// part "shimmer_loading.dart";

// const _shimmerGradient = LinearGradient(
//   colors: [
//     Color(0xFFEBEBF4),
//     Color(0xFFF4F4F4),
//     Color(0xFFEBEBF4),
//   ],
//   stops: [
//     0.1,
//     0.3,
//     0.4,
//   ],
//   begin: Alignment(-1.0, -0.3),
//   end: Alignment(1.0, 0.3),
//   tileMode: TileMode.clamp,
// );

// class ShimmerLoadingAnimation extends StatefulWidget {
//   const ShimmerLoadingAnimation({
//     super.key,
//     required this.shimmer,
//   });

//   final BaseShimmer shimmer;

//   @override
//   State<ShimmerLoadingAnimation> createState() =>
//       _ExampleUiLoadingAnimationState();
// }

// class _ExampleUiLoadingAnimationState extends State<ShimmerLoadingAnimation> {
//   @override
//   Widget build(BuildContext context) {
//     return PageScaffold(
//       showAppBar: false,
//       child: ShimmerWidget(
//         linearGradient: _shimmerGradient,
//         child: Padding(
//           padding:
//               const EdgeInsets.symmetric(horizontal: AppDimens.defaultPadding),
//           child: widget.shimmer.builder(),
//         ),
//       ),
//     );
//   }
// }

// class _SlidingGradientTransform extends GradientTransform {
//   const _SlidingGradientTransform({
//     required this.slidePercent,
//   });

//   final double slidePercent;

//   @override
//   Matrix4? transform(Rect bounds, {TextDirection? textDirection}) {
//     return Matrix4.translationValues(bounds.width * slidePercent, 0.0, 0.0);
//   }
// }
