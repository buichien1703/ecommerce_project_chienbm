// import 'package:comment_tree/comment_tree.dart';
// import 'package:flutter/material.dart';
// import 'package:ecommerce_project_chienbm/core/src_core.dart';

// class CommentShimmerComponent extends StatelessWidget {
//   const CommentShimmerComponent({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return CommentTreeWidget<List<int>, int>(
//       const [1, 2, 3, 4, 5, 6, 7],
//       const [1, 2, 4, 5],
//       treeThemeData:
//           TreeThemeData(lineWidth: 1, lineColor: Colors.grey.shade200),
//       avatarChild: (context, value) {
//         return const PreferredSize(
//           preferredSize: Size.fromRadius(10),
//           child: ShimmerLoading(isLoading: true, child: CircleAvatar()),
//         );
//       },
//       avatarRoot: (context, value) {
//         return const PreferredSize(
//           preferredSize: Size.fromRadius(10),
//           child: ShimmerLoading(isLoading: true, child: CircleAvatar()),
//         );
//       },
//       contentRoot: (context, value) {
//         return ShimmerLoading(
//           isLoading: true,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const BoxShimmerLoading(
//                 height: 24,
//                 width: 200,
//               ),
//               UtilWidget.sizedBox10,
//               const BoxShimmerLoading(height: 18, width: 100),
//               UtilWidget.sizedBox10,
//               const BoxShimmerLoading(height: 18),
//               UtilWidget.sizedBox5,
//               const BoxShimmerLoading(height: 18, width: 100),
//               UtilWidget.sizedBox5,
//               ListViewShimmer(
//                 aspectRatio: 16 / 10,
//                 height: 100,
//                 scrollDirection: Axis.horizontal,
//                 separatorBuilder: (context, index) {
//                   return UtilWidget.sizedBoxWidth5;
//                 },
//                 items: const BoxShimmerLoading(),
//               )
//             ],
//           ),
//         );
//       },
//       contentChild: (context, value) {
//         return ShimmerLoading(
//           isLoading: true,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const BoxShimmerLoading(
//                 height: 20,
//                 width: 200,
//               ),
//               UtilWidget.sizedBox10,
//               const BoxShimmerLoading(height: 14, width: 100),
//               UtilWidget.sizedBox10,
//               const BoxShimmerLoading(height: 14),
//               UtilWidget.sizedBox5,
//               const BoxShimmerLoading(height: 14, width: 100),
//               UtilWidget.sizedBox5,
//               ListViewShimmer(
//                 aspectRatio: 16 / 10,
//                 height: 100,
//                 scrollDirection: Axis.horizontal,
//                 separatorBuilder: (context, index) {
//                   return UtilWidget.sizedBoxWidth5;
//                 },
//                 items: const BoxShimmerLoading(),
//               )
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
