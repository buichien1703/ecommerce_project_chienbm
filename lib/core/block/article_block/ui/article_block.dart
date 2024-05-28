// import 'package:get/get.dart';
// import 'package:ecommerce_project_chienbm/core/src_core.dart';
// import 'package:flutter/material.dart';
// import 'package:web4s/feature/src_feature.dart';

// class ArticleBlock extends BaseRefreshWidget<ArticleBlockController> {
//   const ArticleBlock(this.configModel, {super.key});

//   final ConfigModel configModel;

//   @override
//   ArticleBlockController get controller => Get.put(ArticleBlockControllerImp());
//   @override
//   Widget buildWidgets(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         SizedBox(
//           height: 50,
//           child: ListView.separated(
//             shrinkWrap: true,
//             scrollDirection: Axis.horizontal,
//             separatorBuilder: (context, index) {
//               return UtilWidget.sizedBoxWidth10;
//             },
//             itemCount: controller.listTab.length,
//             itemBuilder: (context, index) {
//               return Obx(
//                 () => CardItem(
//                     onTap: () => controller.onTabChange(index),
//                     paddingModel: const PaddingModel(
//                         paddingHorizontal: AppDimens.paddingSmall),
//                     width: 120,
//                     isBorder: true,
//                     alignment: Alignment.center,
//                     backgroundColor: controller.currentIndexTab.value == index
//                         ? context.primaryColor
//                         : Colors.transparent,
//                     radiusModel:
//                         const RadiusModel(radiusAll: AppDimens.radius8),
//                     child: Text(
//                       (controller.listTab[index].name ?? ""),
//                       style: controller.currentIndexTab.value != index
//                           ? null
//                           : const TextStyle(fontWeight: FontWeight.bold),
//                     )),
//               );
//             },
//           ),
//         ),
//         UtilWidget.sizedBoxPadding,
//         Expanded(
//           child: PageView.builder(
//             itemCount: controller.listTab.length,
//             controller: controller.pageController,
//             onPageChanged: (int page) {
//               controller.onTabChange(page);
//             },
//             itemBuilder: (context, index) {
//               return ArticleItem(index);
//             },
//           ),
//         ),
//       ],
//     ).paddingSymmetric(
//       horizontal: AppDimens.defaultPadding,
//       vertical: AppDimens.paddingSmall,
//     );
//   }
// }
