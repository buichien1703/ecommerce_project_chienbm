// import 'package:flutter/material.dart';
// import 'package:ecommerce_project_chienbm/core/src_core.dart';

// class GridViewShimmerItems extends StatelessWidget {
//   const GridViewShimmerItems(
//       {super.key,
//       this.numberItemsInline = 2,
//       this.isShowText = true,
//       this.itemCount = 20});

//   final int numberItemsInline;

//   final bool isShowText;

//   final int itemCount;

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       shrinkWrap: true,
//       physics: const NeverScrollableScrollPhysics(),
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: numberItemsInline,
//         childAspectRatio: 0.9,
//         mainAxisSpacing: AppDimens.defaultPadding,
//         crossAxisSpacing: AppDimens.spaceBetweenGridViewDefault,
//       ),
//       itemCount: itemCount,
//       itemBuilder: (context, index) {
//         return ShimmerLoading(
//           isLoading: true,
//           child: Column(
//             children: [
//               Expanded(
//                   child: Container(
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(AppDimens.radius8)),
//               )),
//               UtilWidget.sizedBox10,
//               if (isShowText) _buildText(),
//             ],
//           ),
//         );
//       },
//     );
//   }

//   Widget _buildText() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           width: double.infinity / numberItemsInline,
//           height: 48 / numberItemsInline,
//           decoration: BoxDecoration(
//             color: Colors.black,
//             borderRadius: BorderRadius.circular(16),
//           ),
//         ),
//         UtilWidget.sizedBox5,
//         Container(
//           width: 200 / numberItemsInline,
//           height: 48 / numberItemsInline,
//           decoration: BoxDecoration(
//             color: Colors.black,
//             borderRadius: BorderRadius.circular(16),
//           ),
//         ),
//       ],
//     );
//   }
// }
