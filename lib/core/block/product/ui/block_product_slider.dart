// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:web4s/core/src_core.dart';

// class BlockProductSlider implements BlockProductUI {
//   final ConfigModel configModel;

//   BlockProductSlider({
//     required this.configModel,
//   });

//   @override
//   Widget buildWidget() {
//     return _BlockProductSliderWidget(configModel: configModel);
//   }
// }

// class _BlockProductSliderWidget extends GetView<BlockProductCtr> {
//   final ConfigModel configModel;

//   const _BlockProductSliderWidget({
//     required this.configModel,
//   });

//   @override
//   BlockProductCtr get controller =>
//       Get.put(BlockProductCtrImp(configModel), tag: configModel.blockCode);

//   @override
//   Widget build(BuildContext context) {
//     final int _numberOnLine = numberOnLine(
//         data: controller.currentData, layout: configModel.configLayout);
//     return SliderWidget(
//       layout: controller.configLayout,
//       data: controller.currentData,
//       isHaveDescription: true,
//       autoPlay: false,
//       enableInfiniteScroll: false,
//       heightDescription: AppDimens.infoProductSizeDefault,
//       numberSlide: (controller.currentData.length / _numberOnLine).ceil(),
//       itemBuilder: (context, index, realIndex) {
//         return Row(
//           children: List.generate(_numberOnLine, (indexItem) {
//             int _index = indexItem + index * _numberOnLine;
//             return Expanded(
//               child: _index >= controller.currentData.length
//                   ? const SizedBox.shrink()
//                   : _buildItem(controller.currentData[_index]).paddingOnly(
//                       right: AppDimens.spaceBetweenGridViewDefault),
//             );
//           }),
//         );
//       },
//     );
//   }

//   Widget _buildItem(ProductBlockData item) {
//     return ProductCardWidget(
//       data: item,
//       layout: controller.configLayout,
//       isSlider: true,
//       // isHaveDescription: true,
//       funcCallBack: () {
//         controller.goProductDetailPage(item);
//       },
//     );
//   }
// }
