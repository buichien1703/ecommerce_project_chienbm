// import 'package:get/get.dart';
// import 'package:web4s/core/src_core.dart';
// import 'package:flutter/material.dart';
// import 'package:web4s/feature/src_feature.dart';
// import 'package:web4s/pages/page_type.dart';
// import 'package:web4s/pages/pages.dart';

// class CategoryItem extends StatelessWidget {
//   const CategoryItem({
//     super.key,
//     required this.data,
//     required this.layout,
//     this.productFilter,
//   });
//   final CategoryBlockData data;
//   final ConfigLayout layout;
//   final ProductFilter? productFilter;

//   @override
//   Widget build(BuildContext context) {
//     return BaseCardProductItem(
//       funcCallBack: () {
//         PageRoutes.navigator(
//           page: ProductPage(
//             baseRequestPage: BaseRequestPage(
//               pageType: PageType.product,
//               data: CategoryProductRequest(
//                 categoryId: data.id ?? -1,
//                 productFilter: productFilter,
//               ),
//             ),
//           ),
//           preventDuplicates: false,
//         );
//         // Get.to(
//         //   () => ProductPage(
//         //     baseRequestPage: BaseRequestPage(
//         //       pageType: PageType.product,
//         //       data: CategoryProductRequest(categoryId: data.id ?? -1),
//         //     ),
//         //   ),
//         //   preventDuplicates: false,
//         //   transition: Transition.fadeIn,
//         // );
//       },
//       backgroundColor: Colors.transparent,
//       layout: layout,
//       urlImage: ImageBlockData(
//               image: data.imageAvatar, source: ImageSourceEnum.fromCDN)
//           .getUrlImage(),
//       description: TextBuild(
//         title: data.name ?? "",
//         maxLines: 2,
//       ).paddingOnly(top: AppDimens.paddingVerySmall),
//     );
//   }
// }
