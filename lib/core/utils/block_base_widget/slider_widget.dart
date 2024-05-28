// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:dots_indicator/dots_indicator.dart';
// import 'package:flutter/material.dart';

// import 'package:ecommerce_project_chienbm/core/src_core.dart';

// typedef ItemSliderBuilder = Widget Function(
//     BuildContext context, int index, int realIndex);

// class SliderWidget<T> extends StatefulWidget {
//   const SliderWidget({
//     super.key,
//     this.layout,
//     required this.data,
//     required this.itemBuilder,
//     this.heightDescription = 0,
//     this.isHaveDescription = false,
//     this.isStackSlider = false,
//     this.dotColors,
//     this.isNormalSlider = false,
//     this.numberSlide,
//     this.onPageChange,
//     this.isShowIndicator = false,
//     this.autoPlay = true,
//     this.enableInfiniteScroll = false,
//   });
//   final ConfigLayout? layout;
//   final List<T> data;
//   final ItemSliderBuilder itemBuilder;
//   final double heightDescription;
//   final bool isHaveDescription;
//   final bool isStackSlider;
//   final Color? dotColors;
//   final bool isNormalSlider;
//   final int? numberSlide;
//   final Function(int)? onPageChange;
//   final bool isShowIndicator;
//   final bool autoPlay;
//   final bool enableInfiniteScroll;
//   @override
//   State<SliderWidget> createState() => _SliderWidgetState();
// }

// class _SliderWidgetState extends State<SliderWidget> {
//   late final CarouselController carouselController;
//   late int currentIndexPosition;
//   @override
//   void initState() {
//     super.initState();
//     carouselController = CarouselController();
//     currentIndexPosition = 0;
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }

//   int get numberSlide => widget.numberSlide ?? widget.data.length;

//   double _ratio() => (widget.layout.itemWidth(isSlider: true) *
//       (widget.layout?.numberOnLine).toIntEtx() /
//       widget.layout.itemHeight(
//         isSlider: true,
//         isHaveDescription: widget.isHaveDescription,
//         customHeight: widget.heightDescription,
//       ));

//   @override
//   Widget build(BuildContext context) {
//     // print("object: ${Get.width}");
//     // print(
//     //     "${widget.layout?.title} ${_ratio()} ${(widget.layout.itemWidth(isSlider: true))} ${widget.layout.itemHeight(
//     //   isSlider: true,
//     //   isHaveDescription: widget.isHaveDescription,
//     //   customHeight: widget.heightDescription,
//     // )}");
//     return widget.data.isEmpty
//         ? const BuildImageLoadError()
//         : Column(
//             children: [
//               Stack(
//                 children: [
//                   CarouselSlider.builder(
//                     carouselController: carouselController,
//                     itemCount: numberSlide,
//                     itemBuilder: (context, index, realIndex) {
//                       return widget.itemBuilder(context, index, realIndex);
//                     },
//                     options: CarouselOptions(
//                       enableInfiniteScroll:
//                           numberSlide != 1 && widget.enableInfiniteScroll,
//                       enlargeFactor: 0.5,
//                       autoPlay: widget.autoPlay,
//                       viewportFraction: 1,
//                       aspectRatio: widget.isNormalSlider ? 16 / 9 : _ratio(),
//                       onPageChanged: (index, reason) {
//                         setState(() {
//                           currentIndexPosition = index;
//                           carouselController
//                               .animateToPage(currentIndexPosition);
//                           widget.onPageChange?.call(index);
//                         });
//                       },
//                       pauseAutoPlayInFiniteScroll: true,
//                     ),
//                   ),
//                   if ((widget.isStackSlider && numberSlide != 1) &&
//                       widget.isShowIndicator)
//                     Positioned.fill(
//                       bottom: 10,
//                       child: Align(
//                           alignment: Alignment.bottomCenter,
//                           child: _buildDotIndicator()),
//                     )
//                 ],
//               ),
//               if (!widget.isStackSlider &&
//                   numberSlide != 1 &&
//                   widget.isShowIndicator)
//                 _buildDotIndicator(),
//             ],
//           );
//   }

//   Widget _buildDotIndicator() {
//     return DotsIndicator(
//       onTap: (position) {
//         setState(() {
//           currentIndexPosition = position.toInt();
//           carouselController.animateToPage(
//             currentIndexPosition,
//             duration: const Duration(milliseconds: 500),
//           );
//         });
//       },
//       dotsCount: numberSlide,
//       position: currentIndexPosition,
//       decorator: DotsDecorator(
//           activeColor: Colors.purple, color: widget.dotColors ?? Colors.grey),
//     );
//   }
// }
