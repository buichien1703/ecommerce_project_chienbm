// import 'package:flutter/material.dart';
// import 'package:ecommerce_project_chienbm/core/src_core.dart';
// import 'package:percent_indicator/percent_indicator.dart';

// class DescriptionRating extends StatelessWidget {
//   const DescriptionRating({super.key, required this.ratingInfo});

//   final RatingInfo? ratingInfo;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         _slider("5", ratingInfo?.fiveStar ?? 0),
//         _slider("4", ratingInfo?.fourStar ?? 0),
//         _slider("3", ratingInfo?.threeStar ?? 0),
//         _slider("2", ratingInfo?.twoStar ?? 0),
//         _slider("1", ratingInfo?.oneStar ?? 0),
//       ],
//     );
//   }

//   Widget _slider(
//     String descriptionRate,
//     int rateValue,
//   ) {
//     return LinearPercentIndicator(
//       width: 180,
//       animation: true,
//       animationDuration: 1000,
//       lineHeight: 10.0,
//       leading: Row(
//         children: [
//           TextBuild(
//             title: descriptionRate,
//             fontSize: AppDimens.sizeTextSmall,
//           ),
//           UtilWidget.sizedBoxWidth3,
//           Icon(
//             Icons.star,
//             color: ColorLight.startColors,
//           ),
//         ],
//       ),
//       barRadius: const Radius.circular(AppDimens.radius8),
//       trailing: null,
//       percent: (ratingInfo?.numberRating ?? 0) == 0
//           ? 0
//           : rateValue / (ratingInfo?.numberRating ?? 0),
//       progressColor: ColorLight.startColors,
//     );
//   }
// }
