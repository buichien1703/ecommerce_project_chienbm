// import 'package:get/get.dart';
// import 'package:web4s/core/src_core.dart';
// import 'package:web4s/feature/src_feature.dart';
// import 'package:web4s/pages/routes.dart';

// class CommentBlockControllerImp extends CommentBlockController {
//   CommentBlockControllerImp({required super.commentType});

//   @override
//   void onInit() {
//     super.onInit();
//     updateBlock();
//   }

//   // @override
//   // void onInit() async {
//   //   // _initialData();
//   //   // try {
//   //   //   showLoading();
//   //   //   await updateBlock();
//   //   // } finally {
//   //   //   hideLoading();
//   //   // }
//   //   super.onInit();
//   // }

//   @override
//   Future<void> updateBlock() async {
//     try {
//       showLoading();
//       await repository.getListBlock(baseRequestPage).then((value) {
//         if (value.data.isNotEmpty) {
//           configModel = value.data.first;
//           if (configModel?.blockData.runtimeType == CommentModel ||
//               configModel?.blockData.runtimeType == RatingResponse) {
//             // pagination.value = configModel?.blockData.pagination;

//             var response = List<CommentExt>.from(configModel?.blockData.data
//                 .map((e) => CommentExt(commentParrent: e)));
//             listCommentData.value = response.map((e) {
//               var oldComment = listCommentData.firstWhereOrNull((element) =>
//                   element.commentParrent.id == e.commentParrent.id);
//               return e.copyWith(
//                 isLoadMore: oldComment?.isLoadMore,
//                 commentParrent: oldComment?.commentParrent,
//                 commentChild: oldComment?.commentChild,
//               );
//             }).toList();
//             //  listCommentData.assignAll(
//             // List<CommentExt>.from(configModel
//             //     ?.blockData.data
//             //     .map((e) => CommentExt(commentParrent: e))));
//           }
//         }
//       });
//     } finally {
//       hideLoading();
//     }
//   }

//   @override
//   Future<void> goToCommentPage() async {
//     switch (commentType) {
//       case CommentType.comment:
//         Get.toNamed(
//           AppRoutes.commentPage,
//           arguments: productDetailCtr.request.id,
//         )?.then((_) {
//           updateBlock();
//         });
//         break;
//       case CommentType.rating:
//         Get.toNamed(
//           AppRoutes.ratingPage,
//           arguments: productDetailCtr.request.id,
//         )?.then((_) {
//           updateBlock();
//         });
//         break;
//       default:
//     }
//   }

//   // @override
//   // Future<CommentData?> liked(CommentData commentData) async {
//   //   var response =
//   //       await commentRepository.likeComment(commentData.id.toString());
//   //   return CommentData(
//   //     numberLike: response.data?.numberLike,
//   //     liked: response.data?.type == CommentBlockStr.dislike ? 0 : 1,
//   //   );
//   // }

//   // ///Reply chỉ hoạt động ở màn comment
//   // @override
//   // Future<void> reply(CommentData commentData) async {
//   //   commentController.focusNode.requestFocus();
//   //   commentController.tagReply.value = commentData;
//   // }

//   // @override
//   // Future<List<CommentData>> getChildComment(int? commentId) async {
//   //   return (await commentRepository.getListReplyComment(CommentReplyRequest(
//   //           typeComment: commentType.name.toString(),
//   //           parrentId: commentId ?? -1)))
//   //       .data;
//   // }

//   @override
//   Future<void> onLoadMore() {
//     // TODO: implement onLoadMore
//     throw UnimplementedError();
//   }

//   @override
//   Future<void> onRefresh() {
//     // TODO: implement onRefresh
//     throw UnimplementedError();
//   }
// }
