// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:web4s/core/src_core.dart';
// import 'package:web4s/feature/src_feature.dart';

// class BlockCategory extends StatelessWidget {
//   final ConfigModel configModel;

//   const BlockCategory(
//     this.configModel, {
//     super.key,
//     this.callBackItem,
//     this.productFilter,
//   });
//   final VoidCallback? callBackItem;

//   final Rx<ProductFilter>? productFilter;

//   List<CategoryBlockData> get dataOfCategoryBlock =>
//       (configModel.blockData as CategoryBlockModel).data;

//   @override
//   Widget build(BuildContext context) {
//     return GridViewBase(
//       layout: configModel.configLayout!,
//       data: dataOfCategoryBlock,
//       isHaveDescriptions: true,
//       customHeight: AppDimens.categoryProductSize,
//       itemBuilder: (context, index) {
//         return Obx(
//           () => CategoryItem(
//             data: dataOfCategoryBlock[index],
//             layout: configModel.configLayout!,
//             productFilter: productFilter?.value,
//           ),
//         );
//       },
//     );
//   }
// }
