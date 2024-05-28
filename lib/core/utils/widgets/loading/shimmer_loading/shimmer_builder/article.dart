// part of 'base_shimmer.dart';

// class ArticleShimmerLoading implements BaseShimmer {
//   @override
//   Widget builder() {
//     return Column(
//       children: [
//         const ListViewShimmer(
//           scrollDirection: Axis.horizontal,
//           height: 50,
//           aspectRatio: 2,
//           items: ShimmerLoading(isLoading: true, child: Card()),
//         ),
//         UtilWidget.sizedBoxPaddingHuge,
//         Expanded(
//           child: ListViewShimmer(
//             items: ShimmerLoading(isLoading: true, child: _buildText()),
//           ),
//         )
//       ],
//     );
//   }

//   Widget _buildText() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: const [
//         Expanded(
//           child: CardItem(
//             radiusModel: RadiusModel(radiusAll: AppDimens.radius8),
//             backgroundColor: Colors.white,
//             child: SizedBox.shrink(),
//           ),
//         ),
//         UtilWidget.sizedBox10,
//         BoxShimmerLoading(width: 300),
//         UtilWidget.sizedBox10,
//         BoxShimmerLoading(width: 200),
//       ],
//     );
//   }
// }
