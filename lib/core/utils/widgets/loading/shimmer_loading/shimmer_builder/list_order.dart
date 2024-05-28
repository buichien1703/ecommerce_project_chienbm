// part of 'base_shimmer.dart';

// class ListOrderShimmerLoading implements BaseShimmer {
//   @override
//   Widget builder() {
//     return ListViewShimmer(
//       aspectRatio: 3,
//       separatorBuilder: (context, index) {
//         return index % 3 == 0
//             ? Column(
//                 children: const [
//                   UtilWidget.sizedBoxPadding,
//                   ShimmerLoading(
//                     isLoading: true,
//                     child: BoxShimmerLoading(
//                       height: 50,
//                     ),
//                   ),
//                   UtilWidget.sizedBoxPadding,
//                 ],
//               )
//             : UtilWidget.sizedBoxPadding;
//       },
//       items: ShimmerLoading(
//         isLoading: true,
//         child: IntrinsicHeight(
//           child: Row(
//             children: [
//               const Expanded(
//                 child: BoxShimmerLoading(
//                   height: null,
//                   width: null,
//                 ),
//               ),
//               UtilWidget.sizedBoxWidthPadding,
//               Expanded(
//                 flex: 2,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: const [
//                         BoxShimmerLoading(width: 200),
//                         UtilWidget.sizedBox10,
//                         BoxShimmerLoading(width: 100),
//                       ],
//                     ),
//                     const BoxShimmerLoading()
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildText([double? width]) {
//     return Container(
//       height: 24,
//       width: width,
//       decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(
//             AppDimens.radius8,
//           )),
//     );
//   }
// }
