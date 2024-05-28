// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:web4s/core/src_core.dart';
// import 'package:web4s/feature/src_feature.dart';

// enum CommentType { rating, comment }

// class CommentBlock extends BaseGetWidget<CommentBlockController> {
//   const CommentBlock({
//     super.key,
//     this.commentType = CommentType.comment,
//   });

//   @override
//   CommentBlockController get controller => Get.put(
//         CommentBlockControllerImp(commentType: commentType),
//         tag: commentType.toString(),
//       );

//   final CommentType commentType;

//   @override
//   Widget buildWidgets(BuildContext context) {
//     return WidgetWithTile(
//       titleLeading: controller.configModel?.configLayout?.title ?? "",
//       widgetPadding: UtilWidget.sizedBoxPadding,
//       content: CardItem(
//         // //boxShadow: AppColors.listDefaultShadow,
//         radiusModel: const RadiusModel(radiusAll: AppDimens.radius8),
//         child: _buildBody(),
//       ),
//     );
//   }

//   Widget _buildBody() {
//     return Column(
//       children: [
//         Obx(
//           () => BuildListComment(
//             listComment: controller.listCommentData.value,
//             like: controller.liked,
//             commentType: commentType,
//             onLoadMoreFunction: (parrentId) =>
//                 controller.getChildComment(parrentId),
//             showReplyComment: false,
//           ),
//         ),
//         // Obx(
//         //   () => SimpleListView(
//         //     scrollPhysics: const NeverScrollableScrollPhysics(),
//         //     scrollDirection: Axis.vertical,
//         //     itemBuilder: (context, index) {
//         //       return _buildComment(index);
//         //     },
//         //     separatorWidget: UtilWidget.sizedBoxPaddingHuge,
//         //     data: controller.listCommentData.value,
//         //   ).paddingSymmetric(
//         //     horizontal: AppDimens.defaultPadding,
//         //   ),
//         // ),
//         UtilWidget.sizedBoxPaddingHuge,
//         _buildButton(),
//       ],
//     );
//   }

//   Widget _buildButton() {
//     return Column(
//       children: [
//         BaseButton(
//           // backgroundColor: AppColors.appColor,
//           radiusButton: AppDimens.radius8,
//           width: Get.width / 2,
//           function: () {
//             controller.goToCommentPage();
//           },
//           titleButton: controller.commentType == CommentType.comment
//               ? BlockCommentStr.comment
//               : BlockCommentStr.rating,
//         ),
//         UtilWidget.sizedBoxPaddingHuge,
//       ],
//     );
//   }
// }

// // class CommentBlockBody extends GetView<CommentBlockController>
// //     with GetViewLoading {
// //   const CommentBlockBody({super.key, this.commentType = CommentType.rating});

// //   final CommentType commentType;

// //   @override
// //   CommentBlockController get controller =>
// //       Get.find(tag: commentType.toString());

// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(
// //       children: [
// //         Obx(
// //           () => BuildListComment(
// //             listComment: controller.listCommentData.value,
// //             like: controller.liked,
// //             commentType: commentType,
// //             onLoadMoreFunction: (parrentId) =>
// //                 controller.getChildComment(parrentId),
// //             showReplyComment: false,
// //           ),
// //         ),
// //         // Obx(
// //         //   () => SimpleListView(
// //         //     scrollPhysics: const NeverScrollableScrollPhysics(),
// //         //     scrollDirection: Axis.vertical,
// //         //     itemBuilder: (context, index) {
// //         //       return _buildComment(index);
// //         //     },
// //         //     separatorWidget: UtilWidget.sizedBoxPaddingHuge,
// //         //     data: controller.listCommentData.value,
// //         //   ).paddingSymmetric(
// //         //     horizontal: AppDimens.defaultPadding,
// //         //   ),
// //         // ),
// //         UtilWidget.sizedBoxPaddingHuge,
// //         _buildButton(),
// //       ],
// //     );
// //   }

// //   Widget _buildButton() {
// //     return Obx(
// //       () => Column(
// //         children: [
// //           BaseButton(
// //             backgroundColor: AppColors.appColor,
// //             radiusButton: AppDimens.radius8,
// //             width: Get.width / 2,
// //             function: () {
// //               controller.goToCommentPage();
// //             },
// //             titleButton: controller.commentType == CommentType.comment
// //                 ? BlockCommentStr.comment
// //                 : BlockCommentStr.rating,
// //           ),
// //           UtilWidget.sizedBoxPaddingHuge,
// //         ],
// //       ),
// //     );
// //   }

// //   // Widget _buildComment(int index) {
// //   //   var parrentComment = controller.listCommentData[index];
// //   //   RxBool isLoading = false.obs;
// //   //   return Column(
// //   //     children: [
// //   //       Obx(
// //   //         () => CommentItem(
// //   //           commentParent: parrentComment.commentParrent,
// //   //           listCommentChild: parrentComment.commentChild.value,
// //   //         ),
// //   //       ),
// //   //       loadingWidget(
// //   //         isShowTitleLoading: false,
// //   //         isShowLoading: isLoading,
// //   //         child: () => Visibility(
// //   //           visible: (parrentComment.commentParrent.numberReply ?? 0) != 0,
// //   //           child: TextBuild(
// //   //             function: () async {
// //   //               try {
// //   //                 isLoading.value = true;
// //   //                 parrentComment.commentChild.assignAll(await controller
// //   //                     .getChildComment(parrentComment.commentParrent.id));
// //   //               } finally {
// //   //                 isLoading.value = false;
// //   //               }
// //   //             },
// //   //             title: CommentBlockStr.showMore(
// //   //                 parrentComment.commentParrent.numberReply ?? 0),
// //   //           ),
// //   //         ),
// //   //       )
// //   //     ],
// //   //   );
// //   // }
// // }
