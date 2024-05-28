// import 'package:flutter/material.dart';

// import 'package:ecommerce_project_chienbm/core/src_core.dart';

// class BlockHomeTopDefault implements BlockHomeTopHeaderBase {
//   final ConfigModel configModel;
//   BlockHomeTopDefault({
//     required this.configModel,
//   });

//   @override
//   Widget buildWidget() {
//     return _BlockHomeTopHeader(
//       configModel: configModel,
//     );
//   }
// }

// class _BlockHomeTopHeader extends StatelessWidget {
//   final ConfigModel configModel;
//   const _BlockHomeTopHeader({
//     Key? key,
//     required this.configModel,
//   }) : super(key: key);

//   List<ImageBlockData> get sliderData =>
//       (configModel.blockData as SliderBlockModel).data;

//   @override
//   Widget build(BuildContext context) {
//     return GridViewBase(
//       layout: configModel.configLayout!,
//       data: sliderData,
//       itemBuilder: (context, index) {
//         return SimpleButton(
//           onPressed: () {},
//           child: NetworkImageWidget(
//             urlImage: sliderData[index].getUrlImage(),
//             layout: configModel.configLayout!,
//           ),
//         );
//       },
//     );
//   }
// }
