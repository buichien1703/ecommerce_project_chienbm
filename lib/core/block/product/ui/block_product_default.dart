// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:web4s/core/src_core.dart';
// import 'package:web4s/feature/src_feature.dart';

// class BlockProductDefault implements BlockProductUI {
//   final ConfigModel configModel;
//   BlockProductDefault({required this.configModel});
//   @override
//   Widget buildWidget() {
//     return _BlockProductDefaultWidget(configModel);
//   }
// }

// class _BlockProductDefaultWidget extends BaseRefreshWidget<BlockProductCtr>
//     with GetViewLoading {
//   _BlockProductDefaultWidget(this.configModel);

//   final ConfigModel configModel;

//   @override
//   BlockProductCtr get controller =>
//       Get.put(BlockProductCtrImp(configModel), tag: configModel.blockCode);

//   @override
//   Widget buildWidgets(BuildContext context) {
//     return Column(
//       children: [
//         Obx(
//           () => GridViewBase(
//             layout: controller.configLayout,
//             data: controller.currentData.value,
//             isHaveDescriptions: true,
//             controller: controller,
//             itemBuilder: (context, index) {
//               return ProductCardWidget(
//                 data: controller.currentData[index],
//                 layout: controller.configLayout,
//                 funcCallBack: () {
//                   controller.goProductDetailPage(controller.currentData[index]);
//                 },
//               );
//             },
//           ),
//         ),
//         UtilWidget.sizedBoxPadding,
//         if (controller.canLoadMore)
//           loadingWidget(
//             isShowLoading: controller.isShowLoading,
//             child: () => BaseButton(
//               function: () {
//                 controller.onLoadMore();
//               },
//               titleButton: HomePageStr.more,
//               width: Get.width / 3,
//             ),
//           ),
//       ],
//     );
//   }
// }
