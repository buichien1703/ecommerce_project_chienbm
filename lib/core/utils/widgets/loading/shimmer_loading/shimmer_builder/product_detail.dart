// part of 'base_shimmer.dart';

// class ProductDetailShimmerLoading implements BaseShimmer {
//   @override
//   Widget builder() {
//     return ListView(
//       physics: const NeverScrollableScrollPhysics(),
//       children: [
//         const CardListItem(),
//         UtilWidget.sizedBoxPaddingHuge,
//         IntrinsicHeight(
//           child: ShimmerLoading(
//             isLoading: true,
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: const [
//                       BoxShimmerLoading(),
//                       UtilWidget.sizedBox10,
//                       BoxShimmerLoading(width: 100),
//                       UtilWidget.sizedBox10,
//                       BoxShimmerLoading(width: 200),
//                       UtilWidget.sizedBox10,
//                       BoxShimmerLoading(width: 100),
//                     ],
//                   ),
//                 ),
//                 UtilWidget.sizedBoxWidth10,
//                 const BoxShimmerLoading(
//                   width: 100,
//                 ),
//               ],
//             ),
//           ),
//         ),
//         UtilWidget.sizedBoxPaddingHuge,
//         const ListViewShimmer(
//           aspectRatio: 2,
//           scrollDirection: Axis.horizontal,
//           height: 50,
//           items: ShimmerLoading(
//             isLoading: true,
//             child: Card()),
//         ),
//         UtilWidget.sizedBoxPaddingHuge,
//         const CommentShimmerComponent()
//       ],
//     );
//   }
// }
