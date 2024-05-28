// part of 'base_shimmer.dart';

// class ProductShimmerLoading implements BaseShimmer {
//   @override
//   Widget builder() {
//     return ListView(
//       physics: const NeverScrollableScrollPhysics(),
//       children: const [
//         ListViewShimmer(
//           height: 40,
//           aspectRatio: 16 / 9,
//           scrollDirection: Axis.horizontal,
//           items: ShimmerLoading(
//             isLoading: true,
//             child: Card(),
//           ),
//         ),
//         UtilWidget.sizedBoxPaddingHuge,
//         GridViewShimmerItems(
//           numberItemsInline: 4,
//           itemCount: 10,
//         ),
//         UtilWidget.sizedBoxPaddingHuge,
//         GridViewShimmerItems()
//       ],
//     );
//   }
// }
