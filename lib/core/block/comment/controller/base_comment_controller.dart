// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:web4s/core/src_core.dart';
// import 'package:web4s/feature/src_feature.dart';
// import 'package:web4s/pages/page_type.dart';

// abstract class BaseCommentController extends BaseRefreshGetxController {
//   late final BaseGetBlockRepository repository;

//   late BaseRequestPage baseRequestPage;

//   late final CommentRepository commentRepository;

//   //Trong trường hợp block sử dụng ở màn productDetail cần gọi controller này để lấy idProduct;
//   late final ProductDetailCtr productDetailCtr =
//       Get.find(tag: ProductDetailCtrTags().tags);

//   final CommentType commentType;

//   final RxList<CommentExt> listCommentData = RxList.empty();

//   late final Rx<Pagination?> pagination = Rxn();

//   ConfigModel? configModel;

//   BaseCommentController({required this.commentType});

//   Future<CommentData?> liked(CommentData commentData) async {
//     var response =
//         await commentRepository.likeComment(commentData.id.toString());
//     return CommentData(
//       numberLike: response.data?.numberLike,
//       liked: response.data?.type == CommentBlockStr.dislike ? 0 : 1,
//     );
//   }

//   Future<List<CommentData>> getChildComment(int? commentId) async {
//     return (await commentRepository.getListReplyComment(CommentReplyRequest(
//             typeComment: commentType.name.toString(),
//             parrentId: commentId ?? -1)))
//         .data;
//   }

//   @override
//   @mustCallSuper
//   void onInit() {
//     repository = BaseGetBlockRepository(this);
//     commentRepository = CommentRepository(this);
//     baseRequestPage = BaseRequestPage(
//       pageType: PageType.productDetail,
//       blockCode: commentType == CommentType.comment
//           ? BlockCodeStr.comment
//           : BlockCodeStr.rating,
//       data: productDetailCtr.request,
//     );
//     super.onInit();
//   }

//   Future<void> updateBlock();
// }
