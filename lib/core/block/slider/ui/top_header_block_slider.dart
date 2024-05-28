// import 'package:flutter/material.dart';

// import 'package:web4s/core/src_core.dart';

// class BlockHomeTopHeaderSlider implements BlockHomeTopHeaderBase {
//   final ConfigModel configModel;
//   BlockHomeTopHeaderSlider({
//     required this.configModel,
//   });
//   @override
//   Widget buildWidget() {
//     return _BlockHomeTopHeaderScrollWidget(configModel: configModel);
//   }
// }

// class _BlockHomeTopHeaderScrollWidget extends StatelessWidget {
//   final ConfigModel configModel;
//   const _BlockHomeTopHeaderScrollWidget({
//     Key? key,
//     required this.configModel,
//   }) : super(key: key);

//   List<ImageBlockData> get sliderData =>
//       (configModel.blockData as SliderBlockModel).data;

//   @override
//   Widget build(BuildContext context) {
//     final int _numberOnLine =
//         numberOnLine(data: sliderData, layout: configModel.configLayout);
//     return SliderWidget(
//       layout: configModel.configLayout!,
//       data: sliderData,
//       isNormalSlider: true,
//       autoPlay: true,
//       isShowIndicator: true,
//       enableInfiniteScroll: true,
//       numberSlide: (sliderData.length / _numberOnLine).ceil(),
//       itemBuilder: (context, index, realIndex) {
//         return Row(
//           children: List.generate(
//             _numberOnLine,
//             (indexItem) {
//               int _index = indexItem + index * _numberOnLine;
//               return Expanded(
//                 child: _index > sliderData.length
//                     ? const SizedBox.shrink()
//                     : _buildItem(_index),
//               );
//             },
//             growable: false,
//           ),
//         );
//       },
//     );
//   }

//   Widget _buildItem(int index) {
//     return NetworkImageWidget(
//       layout: configModel.configLayout!,
//       urlImage: sliderData[index].getUrlImage(),
//       isSlider: false,
//       fit: BoxFit.cover,
//     );
//   }
// }
