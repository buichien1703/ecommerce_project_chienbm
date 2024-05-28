// import 'package:flutter/material.dart';
// import 'package:ecommerce_project_chienbm/core/src_core.dart';

// class LicenseWidget extends StatelessWidget {
//   const LicenseWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         _buildSocialConnect(),
//         UtilWidget.sizedBoxPadding,
//         _buildLicense(),
//       ],
//     );
//   }

//   Widget _buildSocialConnect() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Container(
//           margin:
//               const EdgeInsets.symmetric(horizontal: AppDimens.paddingSmall),
//           height: AppDimens.sizeImage35,
//           width: AppDimens.sizeImage35,
//           decoration: const BoxDecoration(
//             image: DecorationImage(image: AssetImage(ImageAsset.messenger)),
//           ),
//         ),
//         Container(
//           margin:
//               const EdgeInsets.symmetric(horizontal: AppDimens.paddingSmall),
//           height: AppDimens.sizeImage35,
//           width: AppDimens.sizeImage35,
//           decoration: const BoxDecoration(
//             image: DecorationImage(image: AssetImage(ImageAsset.messenger)),
//           ),
//         ),
//         Container(
//           margin:
//               const EdgeInsets.symmetric(horizontal: AppDimens.paddingSmall),
//           height: AppDimens.sizeImage35,
//           width: AppDimens.sizeImage35,
//           decoration: const BoxDecoration(
//             image: DecorationImage(image: AssetImage(ImageAsset.messenger)),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildLicense() {
//     return const TextBuild(title: "Chính sách bảo mật \t / \t Điều khoản sử dụng");
//   }
// }
