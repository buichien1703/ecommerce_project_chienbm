// import 'package:flutter/material.dart';
// import 'package:ecommerce_project_chienbm/core/src_core.dart';

// class GridViewBase<T, R extends BaseRefreshGetxController>
//     extends StatelessWidget {
//   final ConfigLayout layout;
//   final List<T> data;
//   final IndexedWidgetBuilder itemBuilder;
//   final bool isHaveDescriptions;
//   final double? customHeight;
//   final R? controller;
//   final bool enablePullDown;
//   final bool enablePullUp;
//   final bool isLastBlock;
//   const GridViewBase({
//     super.key,
//     required this.layout,
//     required this.data,
//     required this.itemBuilder,
//     this.controller,
//     this.isHaveDescriptions = false,
//     this.customHeight,
//     this.enablePullDown = false,
//     this.enablePullUp = false,
//     this.isLastBlock = false,
//   });

//   double get ratioItem => layout.ratioItemOfBlock(
//         isHaveDescription: isHaveDescriptions,
//         customHeight: customHeight ?? AppDimens.infoProductSizeDefault,
//       );

//   @override
//   Widget build(BuildContext context) {
//     return isLastBlock
//         ? data.isNotEmpty
//             ? BuildSmartRefreshWidget(
//                 controller: controller,
//                 enablePullDown: enablePullDown,
//                 enablePullUp: enablePullUp,
//                 child: _buildBody(),
//               )
//             : const EmptyWidget()
//         : data.isNotEmpty
//             ? _buildBody()
//             : const EmptyWidget();
//   }

//   Widget _buildBody() {
//     return GridView.builder(
//       physics: const NeverScrollableScrollPhysics(),
//       shrinkWrap: true,
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisSpacing: (AppDimens.spaceBetweenGridViewDefault * 2),
//         mainAxisSpacing: (AppDimens.spaceBetweenGridViewDefault * 2),
//         crossAxisCount: layout.numbItemOfLine().toInt(),
//         childAspectRatio: ratioItem,
//       ),
//       itemCount: data.length,
//       itemBuilder: itemBuilder,
//     );
//   }
// }
