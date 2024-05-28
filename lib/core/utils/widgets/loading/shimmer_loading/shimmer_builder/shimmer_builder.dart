// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:web4s/core/src_core.dart';

// enum ShimmerType {
//   home,
//   product,
//   productDetail,
//   listOrder,
//   category,
//   article,
//   comment,
// }

// class ShimmerLoadingBuilder extends StatelessWidget {
//   ShimmerLoadingBuilder.home(this.controller, {super.key, required this.child})
//       : type = ShimmerType.home,
//         shimmer = HomeShimmerLoading();

//   ShimmerLoadingBuilder.product(this.controller,
//       {super.key, required this.child})
//       : type = ShimmerType.product,
//         shimmer = ProductShimmerLoading();

//   ShimmerLoadingBuilder.listOrder(this.controller,
//       {super.key, required this.child})
//       : type = ShimmerType.listOrder,
//         shimmer = ListOrderShimmerLoading();

//   ShimmerLoadingBuilder.productDetail(this.controller,
//       {super.key, required this.child})
//       : type = ShimmerType.productDetail,
//         shimmer = ProductDetailShimmerLoading();

//   ShimmerLoadingBuilder.category(this.controller,
//       {super.key, required this.child})
//       : type = ShimmerType.category,
//         shimmer = CategoryShimmerLoading();

//   ShimmerLoadingBuilder.article(this.controller,
//       {super.key, required this.child})
//       : type = ShimmerType.article,
//         shimmer = ArticleShimmerLoading();

//   ShimmerLoadingBuilder.comment(this.controller,
//       {super.key, required this.child})
//       : type = ShimmerType.comment,
//         shimmer = CommentShimmerLoading();

//   final ShimmerType type;

//   final BaseGetxController controller;

//   final WidgetCallback child;

//   final BaseShimmer shimmer;

//   @override
//   Widget build(BuildContext context) {
//     return Obx(
//       () => controller.isShowLoading.value
//           ? ShimmerLoadingAnimation(
//               shimmer: shimmer,
//             )
//           : child(),
//     );
//   }
// }
