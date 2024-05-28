// part of 'base_shimmer.dart';

// class CategoryShimmerLoading implements BaseShimmer {
//   @override
//   Widget builder() {
//     return ListView(
//       physics: const NeverScrollableScrollPhysics(),
//       children: const [
//         TopHeader(),
//         UtilWidget.sizedBoxPaddingHuge,
//         ShimmerLoading(
//             isLoading: true,
//             child: BoxShimmerLoading(
//               height: 50,
//             )),
//         UtilWidget.sizedBoxPaddingHuge,
//         GridViewShimmerItems(
//           numberItemsInline: 4,
//         ),
//         UtilWidget.sizedBoxPaddingHuge,
//       ],
//     );
//   }
// }
