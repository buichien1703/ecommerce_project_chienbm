// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:ecommerce_project_chienbm/core/src_core.dart';

// mixin GetViewLoading {
//   static const String dataPending = "Đang lấy dữ liệu";
//   Widget loadingWidget({
//     required RxBool isShowLoading,
//     required WidgetCallback child,
//     bool isShowTitleLoading = false,
//     String title = dataPending,
//   }) {
//     return Obx(
//       () => isShowLoading.value
//           ? Center(
//               child: Container(
//                 height: 100,
//                 width: 100,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(8),
//                   color: Colors.transparent,
//                 ),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     LoadingWidget.loadingBouncing,
//                     UtilWidget.sizedBox10,
//                     Flexible(
//                       child: TextBuild(
//                         title: title,
//                         overflow: TextOverflow.visible,
//                         maxLines: 2,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             )
//           : child(),
//     );
//   }
// }
