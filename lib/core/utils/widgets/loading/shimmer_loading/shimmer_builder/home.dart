// part of 'base_shimmer.dart';

// class HomeShimmerLoading implements BaseShimmer {
//   @override
//   Widget builder() {
//     return ListView(
//       physics: const NeverScrollableScrollPhysics(),
//       shrinkWrap: true,
//       children: const [
//         TopHeader(),
//         UtilWidget.sizedBoxPaddingHuge,
//         CardListItem(),
//         UtilWidget.sizedBoxPaddingHuge,
//         ListViewShimmer(
//           scrollDirection: Axis.horizontal,
//           items: ShimmerLoading(isLoading: true, child: Card()),
//         ),
//         UtilWidget.sizedBoxPaddingHuge,
//         GridViewShimmerItems(),
//         UtilWidget.sizedBoxPaddingHuge,
//       ],
//     );
//   }
// }
