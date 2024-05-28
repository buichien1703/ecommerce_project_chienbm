// import 'package:get/get.dart';
// import 'package:web4s/core/src_core.dart';
// import 'package:flutter/material.dart';

// class RatingBlock extends BaseGetWidget<RatingBlockController> {
//   const RatingBlock({super.key});

//   @override
//   RatingBlockController get controller => Get.put(RatingBlockControllerImp());
//   @override
//   Widget buildWidgets(BuildContext context) {
//     return baseLoadingCircle(
//       () => WidgetWithTile(
//         widgetPadding: UtilWidget.sizedBoxPadding,
//         content: Column(
//           children: [
//             Row(
//               children: [
//                 Expanded(
//                   child: RatingBarWidget(
//                     showRatingValue: true,
//                     ratingValue:
//                         controller.ratingResponse?.ratingInfo?.avgRating ?? 0,
//                   ),
//                 ),
//                 UtilWidget.sizedBoxWidthPadding,
//                 Expanded(
//                   flex: 2,
//                   child: DescriptionRating(
//                     ratingInfo: controller.ratingResponse?.ratingInfo,
//                   ),
//                 ),
//               ],
//             ),
//             UtilWidget.sizedBoxPaddingHuge,
//             const CommentBlock(commentType: CommentType.rating),
//           ],
//         ),
//         titleLeading: controller.configModel?.configLayout?.title ?? "",
//       ),
//     ).marginSymmetric(vertical: AppDimens.paddingHuge);
//   }
// }
