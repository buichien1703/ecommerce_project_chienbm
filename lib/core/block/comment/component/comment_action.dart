// import 'package:flutter/material.dart';
// import 'package:web4s/core/src_core.dart';
// import 'package:web4s/feature/src_feature.dart';

// class ActionComment extends StatelessWidget {
//   const ActionComment({
//     super.key,
//     this.voidCallback,
//     required this.iconData,
//     required this.title,
//   });

//   final VoidCallback? voidCallback;

//   final IconData iconData;

//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       splashColor: Colors.transparent,
//       highlightColor: Colors.transparent,
//       onTap: voidCallback,
//       child: IntrinsicHeight(
//         child: Row(
//           children: [
//             Icon(
//               iconData,
//             ),
//             UtilWidget.sizedBoxWidth5,
//             TextBuild(
//               title: title,
//               fontSize: AppDimens.sizeTextDefault,
//               textColor: HexColor.fromHex(ColorsProduct.hexColorSubtitle),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
