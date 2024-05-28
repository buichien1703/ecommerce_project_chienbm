// import 'dart:convert';

// import 'package:get/get.dart';
// import 'package:ecommerce_project_chienbm/core/src_core.dart';
// import 'package:web4s/pages/page_type.dart';
// import 'package:web4s/pages/routes.dart';

// enum ProductType { sale, hot }

// class BlockProductCtrImp extends BlockProductCtr {
//   BlockProductCtrImp(super.configModel);

//   @override
//   void onInit() {
//     super.onInit();
//     blockProductRepository = BlockProductRepository(this);
//     pagination.value = (configModel.blockData as ProductBlockModel).pagination;
//     initData();
//   }

//   void initData() {
//     currentData.assignAll((configModel.blockData as ProductBlockModel).data);
//   }

//   @override
//   void goProductDetailPage(ProductBlockData item) {
//     Get.toNamed(AppRoutes.productDetailPage, arguments: item.id);
//   }

//   @override
//   Future<void> onLoadMore() async {
//     if (canLoadMore) {
//       try {
//         showLoading();
//         pagination.value =
//             pagination.value?.copyWith(page: (pagination.value?.page ?? 0) + 1);
//         // pagination.value?.page = (pagination.value!.page ?? 0) + 1;
//         baseRequestPage = BaseRequestPage(
//           pageType: PageType.product,
//           blockCode: configModel.blockCode ?? "",
//           params: jsonEncode(pagination.value?.toJson()),
//         );

//         var response =
//             await blockProductRepository.getProductFilter(baseRequestPage);

//         if (response.isNotEmpty) {
//           for (int i = 0; i < response.length; i++) {
//             animateGridView.currentState?.insertItem(currentData.length);
//             currentData.add(response[i]);
//           }
//         }
//       } catch (e) {
//         pagination.value =
//             pagination.value?.copyWith(page: (pagination.value?.page ?? 0) - 1);
//       } finally {
//         hideLoading();
//         refreshController.loadComplete();
//       }
//     }
//   }

//   @override
//   Future<void> onRefresh() async {}

//   @override
//   Future<void> filterProduct() async {}
// }
