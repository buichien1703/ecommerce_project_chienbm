// import 'package:web4s/core/src_core.dart';
// import 'package:web4s/pages/page_type.dart';

// class RatingBlockControllerImp extends RatingBlockController {
//   @override
//   void onInit() async {
//     blockRepository = BaseGetBlockRepository(this);
//     try {
//       showLoading();
//       await _getRateOfProduct();
//     } finally {
//       hideLoading();
//     }
//     super.onInit();
//   }

//   Future<void> _getRateOfProduct() async {
//     await blockRepository
//         .getListBlock(
//       BaseRequestPage(
//         pageType: PageType.productDetail,
//         blockCode: BlockCodeStr.rating,
//         data: productDetailCtr.request,
//       ),
//     )
//         .then((value) {
//       if (value.data.isNotEmpty) {
//         configModel = value.data.first;
//         if (configModel?.blockData.runtimeType == RatingResponse) {
//           ratingResponse = configModel?.blockData;
//         }
//       }
//     });
//   }

//   // Future<void> updateBlock()
// }
