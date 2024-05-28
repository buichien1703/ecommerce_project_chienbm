// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:web4s/core/src_core.dart';

// class BlockProductScroll implements BlockProductUI {
//   BlockProductScroll({
//     required this.configModel,
//   });

//   final ConfigModel configModel;

//   @override
//   Widget buildWidget() {
//     return _BlockProductWidget(configModel: configModel);
//   }
// }

// class _BlockProductWidget extends GetView<BlockProductCtr> {
//   const _BlockProductWidget({required this.configModel});

//   final ConfigModel configModel;

//   @override
//   BlockProductCtr get controller =>
//       Get.put(BlockProductCtrImp(configModel), tag: configModel.blockCode);

//   @override
//   Widget build(BuildContext context) {
//     return Obx(
//       () => ScrollWidget(
//         layout: controller.configLayout,
//         data: controller.currentData.value,
//         isHaveDescription: true,
//         enablePullUp: controller.canLoadMore,
//         heightDescription: AppDimens.infoProductSizeDefault,
//         itemBuilder: (item) {
//           return ProductCardWidget(
//             data: item,
//             layout: controller.configLayout,
//             // isHaveDescription: true,
//             funcCallBack: () {
//               controller.goProductDetailPage(item);
//             },
//           );
//         },
//       ),
//     );
//   }
// }
 