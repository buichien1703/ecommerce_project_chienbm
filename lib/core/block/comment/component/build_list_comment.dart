// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:web4s/core/src_core.dart';
// import 'package:web4s/feature/src_feature.dart';

// class BuildListComment extends StatefulWidget {
//   const BuildListComment({
//     super.key,
//     required this.listComment,
//     this.onLoadMoreFunction,
//     this.like,
//     this.replyComment,
//     this.showReplyComment = false,
//     this.commentType = CommentType.comment,
//     this.scrollPhysics,
//   });

//   final List<CommentExt> listComment;

//   final Future<List<CommentData>> Function(int?)? onLoadMoreFunction;

//   final Future<CommentData?> Function(CommentData)? like;

//   final Function(CommentData)? replyComment;

//   final bool showReplyComment;

//   final CommentType commentType;

//   final ScrollPhysics? scrollPhysics;

//   @override
//   State<BuildListComment> createState() => _BuildListCommentState();
// }

// class _BuildListCommentState extends State<BuildListComment>
//     with GetViewLoading {
//   bool showOptionsLoadmore(int index) {
//     return (widget.listComment[index].commentParrent.numberReply ?? 0) != 0 &&
//         !widget.listComment[index].isLoadMore;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SimpleListView(
//       scrollPhysics: const NeverScrollableScrollPhysics(),
//       scrollDirection: Axis.vertical,
//       itemBuilder: (context, index) {
//         return _buildComment(index);
//       },
//       separatorWidget: UtilWidget.sizedBoxPaddingHuge,
//       data: widget.listComment,
//     ).paddingSymmetric(
//       horizontal: AppDimens.defaultPadding,
//     );
//   }

//   Widget _buildComment(int index) {
//     RxBool isLoading = false.obs;
//     return Column(
//       children: [
//         CommentItem(
//           commentParent: widget.listComment[index].commentParrent,
//           listCommentChild: widget.listComment[index].commentChild,
//           showReplyComment: widget.showReplyComment,
//           like: widget.like,
//           replyComment: widget.replyComment,
//         ),
//         loadingWidget(
//           isShowTitleLoading: false,
//           isShowLoading: isLoading,
//           child: () => Visibility(
//             visible: showOptionsLoadmore(index),
//             child: TextBuild(
//               function: () async {
//                 try {
//                   isLoading.value = true;
//                   await widget.onLoadMoreFunction
//                       ?.call(widget.listComment[index].commentParrent.id)
//                       .then((value) {
//                     if (value.isNotEmpty) {
//                       widget.listComment[index] =
//                           widget.listComment[index].copyWith(
//                         commentChild: value,
//                         isLoadMore: showOptionsLoadmore(index),
//                       );
//                     }
//                   });
//                   setState(() {});
//                 } finally {
//                   isLoading.value = false;
//                 }
//               },
//               title: CommentBlockStr.showMore(
//                   widget.listComment[index].commentParrent.numberReply ?? 0),
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }
