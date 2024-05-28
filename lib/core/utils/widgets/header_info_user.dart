// import 'package:flutter/material.dart';
// import 'package:ecommerce_project_chienbm/core/src_core.dart';
// import 'package:web4s/feature/home/ui/home/build_info_user.dart';
// import 'package:web4s/feature/src_feature.dart';
// import 'package:web4s/pages/page_type.dart';
// import 'package:web4s/pages/pages.dart';

// class HeaderInfoUser extends StatelessWidget {
//   HeaderInfoUser({super.key});

//   final TextEditingController searchController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         // const SizedBox(height: kToolbarHeight),
//         const InfoUser(),
//         UtilWidget.sizedBoxPadding,
//         _buildBannerTitle(),
//         UtilWidget.sizedBoxPaddingHuge,
//         _buildSearch(context),
//       ],
//     );
//   }

//   Widget _buildSearch(BuildContext context) {
//     return BuildInputText(
//       InputTextModel(
//         controller: searchController,
//         hintText: AppStr.hintSearch,
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(16),
//           borderSide: BorderSide(color: context.primaryColor),
//         ),
//         iconNextTextInputAction: TextInputAction.done,
//         submitFunc: (value) {
//           if (searchController.text.isStringNotEmpty) {
//             PageRoutes.navigator(
//               page: ProductPage(
//                 baseRequestPage: BaseRequestPage(
//                   pageType: PageType.product,
//                   data: ProductFilter(keyword: searchController.text),
//                 ),
//               ),
//             );
//           }
//         },
//       ),
//     );
//   }

//   Widget _buildBannerTitle() {
//     return Row(
//       children: const [
//         Expanded(
//           child: TextBuild(
//             title: AppStr.titleBanned,
//             maxLines: 2,
//             isBoldText: true,
//             fontSize: AppDimens.sizeTextLarge,
//             overflow: TextOverflow.ellipsis,
//             textAlign: TextAlign.start,
//           ),
//         ),
//         Expanded(
//           child: SizedBox(),
//         )
//       ],
//     );
//   }
// }
