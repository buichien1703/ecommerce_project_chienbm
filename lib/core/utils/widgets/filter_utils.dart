// import 'package:auto_size_text/auto_size_text.dart';
// import 'package:easy_pos/core/core_src.dart';

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../theme/themes_src.dart';
// import '../../values/values_src.dart';
// import '../../../feature/home/models/filter_model.dart';
// import '../utils_src.dart';

// Widget buildListViewChip(
//   List<ChipFilterModel> _list,
//   String titleStr, {
//   required Function(ChipFilterModel) onCompareFunc,
//   required Function(ChipFilterModel) onSelectedFunc,
//   int numberItemPerRow = 3,
//   double borderRadius = 30,
//   TextStyle? textStyle,
// }) {
//   final _width =
//       (Get.size.width - (1 + numberItemPerRow) * AppDimens.defaultPadding) /
//           numberItemPerRow;
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       AutoSizeText(
//         titleStr,
//         style: textStyle ??
//             Get.textTheme.bodyText1!.copyWith(color: AppColors.hintTextColor()),
//       ).paddingOnly(
//           bottom: AppDimens.paddingSmall, top: AppDimens.paddingSmall),
//       Wrap(
//         alignment: WrapAlignment.start,
//         spacing: AppDimens.defaultPadding,
//         runSpacing: AppDimens.defaultPadding * 0.5,
//         children: List<Widget>.generate(
//           _list.length,
//           (int index) {
//             return SizedBox(
//               width: _width.mulSF,
//               child: Obx(
//                 () {
//                   final ChipFilterModel _item = _list[index];
//                   final bool _isSelected = onCompareFunc(_item);
//                   return ChoiceChip(
//                     backgroundColor: AppColors.chipColorTheme(),
//                     selectedColor: AppColors.selectedChip(),
//                     padding: const EdgeInsets.symmetric(
//                         vertical: AppDimens.paddingSmall, horizontal: 5),
//                     shape: RoundedRectangleBorder(
//                         borderRadius:
//                             BorderRadius.all(Radius.circular(borderRadius))),
//                     label: Container(
//                       alignment: Alignment.topCenter,
//                       child: AutoSizeText(_item.title.tr,
//                           textAlign: TextAlign.center,
//                           style: Get.textTheme.subtitle2!.copyWith(
//                               color: _isSelected
//                                   ? Colors.white
//                                   : AppColors.textColor())),
//                     ),
//                     selected: _isSelected,
//                     onSelected: (bool selected) {
//                       onSelectedFunc(_item);
//                     },
//                   );
//                 },
//               ),
//             );
//           },
//         ).toList(),
//       ),
//     ],
//   );
// }

// Widget buildListViewChipTime(List<ChipFilterModel> _list, String titleStr,
//     {required Function(ChipFilterModel) onSelectedFunc}) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.stretch,
//     children: [
//       AutoSizeText(
//         titleStr,
//         style:
//             Get.textTheme.bodyText1!.copyWith(color: AppColors.hintTextColor()),
//       ).paddingAll(AppDimens.paddingSmall),
//       Wrap(
//         alignment: WrapAlignment.spaceBetween,
//         children: List.generate(
//           _list.length,
//           (int index) {
//             final ChipFilterModel _item = _list[index];
//             return ChoiceChip(
//               backgroundColor: AppColors.chipColorTheme(),
//               selectedColor: Colors.blueAccent[700],
//               shape: const RoundedRectangleBorder(
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(20),
//                 ),
//               ),
//               label: SizedBox(
//                 width: isTabletDevice() ? Get.width / 10 : Get.width / 5,
//                 child: AutoSizeText(
//                   _item.title,
//                   textAlign: TextAlign.center,
//                   style: Get.textTheme.subtitle2!.copyWith(
//                     color: AppColors.textColor(),
//                   ),
//                 ),
//               ),
//               selected: false,
//               onSelected: (bool selected) {
//                 onSelectedFunc(_item);
//               },
//             ).paddingOnly(
//               bottom: AppDimens.paddingVerySmall,
//               right: AppDimens.paddingVerySmall,
//             );
//           },
//         ).toList(),
//       ),
//     ],
//   );
// }

// Widget buildButtonDateOption(String title, RxString dateStr,
//     {Function()? onClick}) {
//   return TextButton(
//     onPressed: UtilWidget.baseOnTap(onClick),
//     child: Column(
//       mainAxisSize: MainAxisSize.min,
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         AutoSizeText(
//           title,
//           textAlign: TextAlign.start,
//           style: Get.textTheme.subtitle1!
//               .copyWith(color: AppColors.hintTextColor()),
//         ).paddingOnly(bottom: AppDimens.paddingSmall),
//         Obx(
//           () => AutoSizeText(
//             initDateTime(dateStr.value),
//             maxLines: 1,
//             overflow: TextOverflow.clip,
//             style: Get.textTheme.bodyText1,
//           ),
//         ),
//       ],
//     ),
//   );
// }

// Widget buildButtonHourOption(String title, RxString dateStr,
//     {Function()? onClick}) {
//   return TextButton(
//     onPressed: UtilWidget.baseOnTap(onClick),
//     child: Column(
//       mainAxisSize: MainAxisSize.min,
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         AutoSizeText(
//           title,
//           textAlign: TextAlign.start,
//           style: Get.textTheme.subtitle1!
//               .copyWith(color: AppColors.hintTextColor()),
//         ).paddingOnly(bottom: AppDimens.paddingSmall),
//         Obx(
//           () => AutoSizeText(
//             initHourTime(dateStr.value),
//             maxLines: 1,
//             overflow: TextOverflow.clip,
//             style: Get.textTheme.bodyText1,
//           ),
//         ),
//       ],
//     ),
//   );
// }

// String initHourTime(String dateTime) =>
//     dateTime.isEmpty || dateTime == "null" ? "--:--" : dateTime;
// String initDateTime(String dateTime) =>
//     dateTime.isEmpty || dateTime == "null" ? "--/--/----" : dateTime;
