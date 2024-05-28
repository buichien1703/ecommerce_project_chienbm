// import 'package:web4s/core/src_core.dart';

// class BlockProductRepository extends BaseRepository {
//   BlockProductRepository(super.controller);

//   Future<List<ProductBlockData>> getProductFilter(
//       BaseRequestPage pagination) async {
//     var response = await baseSendRequest(
//       ApiUrl.urlApiTemplateSetting,
//       RequestMethod.POST,
//       jsonMap: pagination.toJson(
//         (x) => x.toJson(),
//       ),
//     );
//     ConfigModel dataResponse = BaseResponseList.fromJson(
//       response,
//       (x) => ConfigModel.fromJson(x),
//     ).data.last;
//     return (dataResponse.blockData as ProductBlockModel).data;
//   }
// }
