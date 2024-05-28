// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:ecommerce_project_chienbm/core/src_core.dart';

// class BaseCardProductItem extends StatelessWidget {
//   const BaseCardProductItem({
//     super.key,
//     this.funcCallBack,
//     this.isSlider = false,
//     this.radiusModel = const RadiusModel(),
//     this.boxShadow = const [],
//     this.description = const SizedBox(),
//     required this.layout,
//     required this.urlImage,
//     this.backgroundColor,
//   });
//   final ConfigLayout? layout;
//   final RadiusModel radiusModel;
//   final VoidCallback? funcCallBack;
//   final bool isSlider;
//   final List<BoxShadow> boxShadow;
//   final String urlImage;
//   final Widget? description;
//   final Color? backgroundColor;
//   @override
//   Widget build(BuildContext context) {
//     return CardItem(
//       onTap: funcCallBack,
//       boxShadow: boxShadow,
//       backgroundColor: backgroundColor,
//       radiusModel: radiusModel,
//       child: Column(
//         children: [
//           _buildImage(),
//           if (description != null)
//             Expanded(
//               child: description!
//                   .paddingSymmetric(horizontal: AppDimens.paddingVerySmall),
//             )
//         ],
//       ),
//     );
//   }

//   Widget _buildImage() {
//     return NetworkImageWidget(
//       layout: layout,
//       isSlider: isSlider,
//       fit: BoxFit.cover,
//       urlImage: urlImage,
//       radiusImage: radiusModel,
//     );
//   }
// }
