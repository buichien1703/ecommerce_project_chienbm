// import 'dart:convert';
// import 'dart:math' as math;

// import 'package:flutter/material.dart';
// import 'package:sentry_flutter/sentry_flutter.dart';

// import 'package:web4s/core/src_core.dart';
// import 'package:web4s/feature/src_feature.dart';
// import 'package:web4s/pages/page_type.dart';
// import 'package:web4s/pages/pages.dart';

// class BlockHomeTopScroll implements BlockHomeTopHeaderBase {
//   final ConfigModel configModel;
//   BlockHomeTopScroll({
//     required this.configModel,
//   });
//   @override
//   Widget buildWidget() {
//     return _BlockHomeTopScroll(configModel: configModel);
//   }
// }

// class _BlockHomeTopScroll extends StatelessWidget {
//   final ConfigModel configModel;
//   const _BlockHomeTopScroll({
//     Key? key,
//     required this.configModel,
//   }) : super(key: key);

//   List<ImageBlockData> get sliderData =>
//       (configModel.blockData as SliderBlockModel).data;

//   void _handleAction(ImageBlockData data) {
//     try {
//       if (data.action.isStringNotEmpty) {
//         RequestAction requestAction =
//             RequestAction.fromJson(jsonDecode(data.action));
//         if (requestAction.params != null) {
//           PageRoutes.navigator(
//               page: ProductPage(
//             baseRequestPage: BaseRequestPage(
//               pageType: PageType.product,
//               data: ProductFilter.fromJson(
//                   jsonDecode(requestAction.params ?? "")),
//             ),
//           ));
//         }
//       }
//     } catch (e, stackTrace) {
//       Sentry.captureException(e, stackTrace: stackTrace);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ScrollWidget(
//       layout: configModel.configLayout,
//       data: sliderData,
//       itemBuilder: (item) {
//         return NetworkImageWidget(
//           onPressed: () {
//             _handleAction(item);
//           },
//           layout: configModel.configLayout!,
//           urlImage: item.getUrlImage(),
//         );
//       },
//     );
//   }
// }

// Color getRandomColor() =>
//     Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
