// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:ecommerce_project_chienbm/core/src_core.dart';

// class RatingBarWidget extends StatelessWidget {
//   const RatingBarWidget(
//       {super.key,
//       required this.ratingValue,
//       this.numberEvaluate,
//       this.showRatingValue = false,
//       this.onRatingUpdate,
//       this.sizeStar,
//       this.canUpdateRate = false,
//       this.mainAxisAlignment = MainAxisAlignment.center});

//   final num ratingValue;

//   final num? numberEvaluate;

//   final bool showRatingValue;

//   final Function(double)? onRatingUpdate;

//   final double? sizeStar;

//   final bool canUpdateRate;

//   final MainAxisAlignment mainAxisAlignment;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         if (showRatingValue)
//           TextBuild(
//             title: ratingValue.toDouble().toString(),
//             isBoldText: true,
//             fontSize: AppDimens.sizeTextVeryLarge,
//             textColor: ColorLight.startColors,
//           ),
//         Row(
//           mainAxisAlignment: mainAxisAlignment,
//           children: [
//             RatingBar.builder(
//               initialRating: ratingValue.toDouble(),
//               minRating: 0,
//               maxRating: 5,
//               direction: Axis.horizontal,
//               allowHalfRating: true,
//               itemCount: 5,
//               itemSize: sizeStar ?? AppDimens.sizeIcon,
//               itemBuilder: (context, index) {
//                 return Icon(
//                   Icons.star,
//                   color: ColorLight.startColors,
//                 );
//               },
//               glow: false,
//               unratedColor: ColorLight.startColors,
//               ignoreGestures: !canUpdateRate,
//               onRatingUpdate: (value) {
//                 onRatingUpdate?.call(value);
//               },
//             ),
//             if (numberEvaluate != null) ...[
//               UtilWidget.sizedBoxWidth10,
//               TextBuild(
//                 title: "$numberEvaluate đánh giá",
//                 fontSize: AppDimens.sizeTextSmall,
//               ),
//             ],
//           ],
//         ),
//       ],
//     );
//   }
// }
