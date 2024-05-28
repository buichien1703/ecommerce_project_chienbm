// import 'dart:developer';

// import 'package:get/get.dart';
// import 'package:ecommerce_project_chienbm/core/src_core.dart';
// import 'package:ecommerce_project_chienbm/feature/src_feature.dart';
// import 'package:ecommerce_project_chienbm/pages/page_type.dart';

// class ArticleBlockControllerImp extends ArticleBlockController {
//   @override
//   void onInit() async {
//     baseRequestPage = const BaseRequestPage(
//       pageType: PageType.article,
//       blockCode: BlockCodeStr.articleBlock,
//     );

//     super.onInit();
//   }

//   @override
//   Future<void> onLoadMore() async {}

//   @override
//   Future<void> onRefresh() async {
//     try {
//       await fetchData();
//     } finally {
//       refreshController.refreshCompleted();
//     }
//   }

//   @override
//   Future<void> fetchData() async {
//     await getConfig(baseRequestPage);
//     if (configResponse.data.isNotEmpty) {
//       articleTabResponse = configResponse.data.first.blockData;
//     }
//   }

//   @override
//   void onTabChange(int value) async {
//     // duration: const Duration(seconds: 300), curve: Curves.easeIn
//     pageController.jumpToPage(value);
//     currentIndexTab.value = value;
//     try {
//       await Get.find<ArticleController>(tag: value.toString()).onRefresh();
//     } catch (e) {
//       log(e.toString());
//     }
//   }
// }
