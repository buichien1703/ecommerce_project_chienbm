// import 'package:flutter/material.dart';
// import 'package:ecommerce_project_chienbm/core/src_core.dart';

// typedef ItemProductBuilder<T> = Widget Function(T data);

// class ScrollWidget<T, R extends BaseRefreshGetxController>
//     extends StatelessWidget {
//   const ScrollWidget({
//     super.key,
//     this.layout,
//     required this.data,
//     required this.itemBuilder,
//     this.isHaveDescription = false,
//     this.spaceBetween,
//     this.heightDescription,
//     this.customHeightImage,
//     this.controller,
//     this.enablePullDown = false,
//     this.enablePullUp = false,
//     this.isScrollVertical = false,
//     this.customWidth,
//   });
//   final ConfigLayout? layout;
//   final List<T> data;
//   final ItemProductBuilder<T> itemBuilder;
//   final bool isHaveDescription;
//   final double? heightDescription;
//   final double? spaceBetween;
//   final double? customHeightImage;
//   final R? controller;
//   final bool enablePullDown;
//   final bool enablePullUp;
//   final bool isScrollVertical;
//   final double? customWidth;

//   double? get heightWithLayout => layout.itemHeight(
//       isHaveDescription: heightDescription != null,
//       customHeight: heightDescription ?? 0);
//   bool get isOnlyTextAndNotDependencyLayout => customHeightImage == null;

//   double get paddingItemShowShadow => AppDimens.paddingSmall;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//         height: isScrollVertical
//             ? null
//             : (((layout != null
//                         ? heightWithLayout
//                         : isOnlyTextAndNotDependencyLayout
//                             ? heightDescription
//                             : customHeightImage! + (heightDescription ?? 0)) ??
//                     0) +
//                 paddingItemShowShadow * 2),
//         child: data.isEmpty
//             ? const EmptyWidget()
//             : BuildSmartRefreshWidget(
//                 controller: controller,
//                 scrollDirection:
//                     isScrollVertical ? Axis.vertical : Axis.horizontal,
//                 enablePullDown: enablePullDown,
//                 enablePullUp: enablePullUp,
//                 child: _buildList(),
//               ));
//   }

//   Widget _buildList() {
//     return ListView.separated(
//       scrollDirection: isScrollVertical ? Axis.vertical : Axis.horizontal,
//       physics: const BouncingScrollPhysics(),
//       shrinkWrap: true,
//       itemBuilder: (context, index) {
//         return _buildItem(index);
//       },
//       separatorBuilder: (context, index) {
//         return SizedBox(
//           width: (spaceBetween ?? AppDimens.spaceBetweenGridViewDefault * 2),
//           height: (spaceBetween ?? AppDimens.spaceBetweenGridViewDefault * 2),
//         );
//       },
//       itemCount: data.length,
//     );
//   }

//   Widget _buildItem(int index) {
//     return Container(
//       padding: isScrollVertical
//           ? null
//           : EdgeInsets.symmetric(vertical: paddingItemShowShadow),
//       width: isScrollVertical
//           ? null
//           : layout != null
//               ? layout.itemWidth()
//               : customWidth ?? customHeightImage,
//       child: itemBuilder(data[index]),
//     );
//   }
// }
