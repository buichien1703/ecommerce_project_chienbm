// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:ecommerce_project_chienbm/core/src_core.dart';

// class ProductCardWidget extends StatelessWidget {
//   const ProductCardWidget({
//     super.key,
//     this.funcCallBack,
//     required this.data,
//     this.layout,
//     this.isSlider = false,
//     // this.isHaveDescription = false,
//   });
//   final ConfigLayout? layout;
//   final ProductBlockData data;
//   final VoidCallback? funcCallBack;
//   final bool isSlider;
//   // final bool isHaveDescription;

//   @override
//   Widget build(BuildContext context) {
//     return BaseCardProductItem(
//       backgroundColor: context.backGroundCardColor,
//       radiusModel: const RadiusModel(radiusAll: AppDimens.borderDefault),
//       isSlider: isSlider,
//       funcCallBack: funcCallBack,
//       layout: layout,
//       description: _buildDecription(),
//       urlImage:
//           data.allImages.isNotEmpty ? data.allImages.first.formatUrl() : "",
//     );
//   }

//   Widget _buildDecription() {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         UtilWidget.sizedBox10,
//         TextBuild(
//           title: (data.name ?? "").unescapeString(),
//           maxLines: 2,
//           isAutoSizeText: true,
//           textAlign: TextAlign.left,
//           overflow: TextOverflow.clip,
//           style: Get.textTheme.bodyMedium!.copyWith(
//             fontWeight: FontWeight.bold,
//             fontSize: AppDimens.sizeTextSmall.spMin,
//           ),
//         ),
//         BuildMoney(
//           price: data.price,
//           specialPrice: data.priceSpecial,
//         )
//       ],
//     );
//   }
// }
