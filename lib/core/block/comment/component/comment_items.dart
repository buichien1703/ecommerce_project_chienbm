// import 'package:comment_tree/comment_tree.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:web4s/core/src_core.dart';
// import 'package:web4s/feature/src_feature.dart';

// class CommentItem extends StatelessWidget {
//   const CommentItem({
//     super.key,
//     required this.commentParent,
//     this.showReplyComment = false,
//     this.like,
//     this.replyComment,
//     this.listCommentChild = const [],
//   });

//   final CommentData commentParent;

//   final List<CommentData> listCommentChild;

//   final Future<CommentData?> Function(CommentData)? like;

//   final Function(CommentData)? replyComment;

//   final bool showReplyComment;

//   @override
//   Widget build(BuildContext context) {
//     return CommentTreeWidget<CommentData, CommentData>(
//       commentParent,
//       listCommentChild,
//       treeThemeData:
//           TreeThemeData(lineWidth: 1, lineColor: Colors.grey.shade200),
//       contentRoot: (context, value) {
//         return Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             _buildTextContent(context, value),
//             UtilWidget.sizedBox5,
//             _buildAction(value),
//             _buildImages(value),
//           ],
//         );
//       },
//       contentChild: (context, value) {
//         return Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             _buildTextContent(context, value, isChild: true),
//             UtilWidget.sizedBox5,
//             _buildAction(value),
//             _buildImages(value, isChild: true),
//           ],
//         );
//       },
//       avatarChild: (context, value) {
//         return const PreferredSize(
//           preferredSize: Size.fromRadius(10),
//           child: CircleAvatar(
//             radius: 10,
//             backgroundColor: Colors.grey,
//             backgroundImage: AssetImage(ImageAssetProfile.emptyAccount),
//           ),
//         );
//       },
//       avatarRoot: (context, value) {
//         return const PreferredSize(
//           preferredSize: Size.fromRadius(18),
//           child: CircleAvatar(
//             radius: 18,
//             backgroundColor: Colors.grey,
//             backgroundImage: AssetImage(ImageAssetProfile.emptyAccount),
//           ),
//         );
//       },
//     );
//   }

//   Widget _buildTextContent(BuildContext context, CommentData data,
//       {bool isChild = false}) {
//     return CardItem(
//       backgroundColor: context.backGroundCardColor,
//       alignment: Alignment.centerLeft,
//       paddingModel: const PaddingModel(paddingAll: AppDimens.paddingVerySmall),
//       radiusModel: const RadiusModel(radiusAll: AppDimens.radius8),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           TextBuild(
//             title: data.fullName ?? "",
//             overflow: TextOverflow.visible,
//             maxLines: 1,
//             fontSize:
//                 isChild ? AppDimens.sizeTextSmall : AppDimens.sizeTextMedium,
//             isBoldText: true,
//           ),
//           TextBuild(
//             title: data.time ?? "",
//             overflow: TextOverflow.visible,
//             maxLines: 1,
//             fontSize:
//                 isChild ? AppDimens.sizeTextVerySmall : AppDimens.sizeTextSmall,
//             fontStyle: FontStyle.italic,
//           ),
//           TextBuild(
//             title: data.content ?? "",
//             overflow: TextOverflow.visible,
//             maxLines: 3,
//             fontSize:
//                 isChild ? AppDimens.sizeTextVerySmall : AppDimens.sizeTextSmall,
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildImages(
//     CommentData commentData, {
//     bool isChild = false,
//   }) {
//     return SimpleListView(
//       showEmptyWidget: false,
//       data: commentData.images,
//       scrollDirection: Axis.horizontal,
//       height: 100,
//       itemBuilder: (context, index) {
//         return _buildImage(commentData.images[index], isChild: isChild);
//       },
//       separatorWidget: UtilWidget.sizedBoxWidthPadding,
//     );
//   }

//   Widget _buildImage(String image, {bool isChild = false}) {
//     return NetworkImageWidget(
//       heightImage: isChild ? 75 : 100,
//       widthImage: isChild ? 75 : 100,
//       urlImage: image.formatUrl(),
//     ).paddingAll(AppDimens.paddingVerySmall);
//   }

//   Widget _buildAction(
//     CommentData commentData,
//   ) {
//     Rx<CommentData> rxData = commentData.obs;
//     return Row(
//       children: [
//         IntrinsicHeight(
//           child: Obx(
//             () => SimpleButton(
//               onPressed: () async {
//                 var response = await like?.call(commentData);
//                 rxData.value = rxData.value.copyWith(
//                   liked: response?.liked,
//                   numberLike: response?.numberLike ?? 0,
//                 );
//               },
//               child: Row(
//                 children: [
//                   Icon(
//                     rxData.value.liked == 1 ? Iconsax.like_15 : Iconsax.like_1,
//                   ),
//                   UtilWidget.sizedBoxWidth5,
//                   TextBuild(
//                     title: rxData.value.numberLike.formatNumber(),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//         UtilWidget.sizedBoxWidth5,
//         Visibility(
//           visible: showReplyComment,
//           child: Row(
//             children: [
//               SimpleButton(
//                 onPressed: () => replyComment?.call(commentData),
//                 child: const Icon(Iconsax.message),
//               ),
//               UtilWidget.sizedBoxWidth5,
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }
