// import 'package:flutter/material.dart';
// import 'package:ecommerce_project_chienbm/core/src_core.dart';

// class ListViewShimmer extends StatelessWidget {
//   const ListViewShimmer({
//     super.key,
//     this.scrollDirection = Axis.vertical,
//     this.height = 150,
//     this.aspectRatio = 0.9,
//     required this.items,
//     this.separatorBuilder,
//   });

//   final Axis scrollDirection;

//   final double height;

//   final double aspectRatio;

//   final Widget items;

//   final IndexedWidgetBuilder? separatorBuilder;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: scrollDirection == Axis.vertical ? null : height,
//       child: ListView.separated(
//         shrinkWrap: true,
//         scrollDirection: scrollDirection,
//         physics: const NeverScrollableScrollPhysics(),
//         itemCount: 20,
//         separatorBuilder: separatorBuilder ??
//             (context, index) {
//               return scrollDirection == Axis.vertical
//                   ? UtilWidget.sizedBoxPaddingHuge
//                   : UtilWidget.sizedBoxWidthPadding;
//             },
//         itemBuilder: (context, index) {
//           return AspectRatio(
//             aspectRatio: aspectRatio,
//             child: items,
//           );
//         },
//       ),
//     );
//   }
// }
