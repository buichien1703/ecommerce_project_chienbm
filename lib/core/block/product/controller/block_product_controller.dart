// import 'package:get/get.dart';
// import 'package:web4s/core/src_core.dart';
// import 'package:web4s/core/utils/extension/pagination.dart';

// abstract class BlockProductCtr extends BaseRefreshGetxController {
//   RxList<ProductBlockData> currentData = RxList<ProductBlockData>.empty();

//   late final BlockProductRepository blockProductRepository;

//   Rx<Pagination?> pagination = Rx(null);

//   ConfigModel configModel;

//   BlockProductCtr(this.configModel);

//   late BaseRequestPage baseRequestPage;

//   bool get canLoadMore => pagination.value.canLoadMore;

//   ConfigLayout get configLayout => configModel.configLayout!;

//   List<ProductBlockData> get dataFirstCall =>
//       (configModel.blockData as ProductBlockModel).data;

//   void goProductDetailPage(ProductBlockData item);

//   Future<void> filterProduct();
// }
