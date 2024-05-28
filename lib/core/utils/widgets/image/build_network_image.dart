// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:loading_animation_widget/loading_animation_widget.dart';
// import 'package:ecommerce_project_chienbm/core/src_core.dart';

// typedef WidgetProcessCallBack = Widget Function(
//     BuildContext, String, DownloadProgress);
// typedef WidgetErrorCallBack = Widget Function(BuildContext, String, dynamic);
// typedef WidgetImageBuilder = Widget Function(
//     BuildContext, ImageProvider<Object>);

// class NetworkImageWidget extends StatelessWidget {
//   const NetworkImageWidget({
//     super.key,
//     required this.urlImage,
//     this.layout,
//     this.fit,
//     this.errorWidget,
//     this.widgetProcessCallBack,
//     this.widgetErrorCallBack,
//     this.widgetImageBuilder,
//     this.isSlider = false,
//     this.radiusImage = const RadiusModel(),
//     this.heightImage,
//     this.widthImage,
//     this.onPressed,
//     // this.customSize,
//   });
//   final ConfigLayout? layout;
//   final String urlImage;
//   final Widget? errorWidget;
//   final WidgetProcessCallBack? widgetProcessCallBack;
//   final WidgetErrorCallBack? widgetErrorCallBack;
//   final WidgetImageBuilder? widgetImageBuilder;
//   final BoxFit? fit;
//   final bool isSlider;
//   final RadiusModel radiusImage;
//   final double? heightImage;
//   final double? widthImage;
//   final Function()? onPressed;
//   @override
//   Widget build(BuildContext context) {
//     return SimpleButton(
//       onPressed: onPressed,
//       child: CachedNetworkImage(
//         memCacheHeight: 500,
//         memCacheWidth: 500,
//         color: HexColor.fromHex(layout?.colorItem),
//         progressIndicatorBuilder: widgetProcessCallBack ??
//             (context, url, progress) {
//               return Container(
//                 color: Colors.transparent,
//                 // color: AppColors.appBackgroundColor,
//                 height: heightImage ?? layout.imgHeight(isSlider: isSlider),
//                 width: widthImage ?? layout.imgWidth(isSlider: isSlider),
//                 child: Center(
//                     child: LoadingAnimationWidget.bouncingBall(
//                   color: Colors.red,
//                   size: 20,
//                 )),
//               );
//             },
//         useOldImageOnUrlChange: true,
//         imageBuilder: widgetImageBuilder ??
//             (context, imageProvider) {
//               return CardItem(
//                 height: heightImage ??
//                     layout.imgHeight(
//                       isSlider: isSlider,
//                     ),
//                 width: widthImage ?? layout.imgWidth(isSlider: isSlider),
//                 radiusModel: radiusImage,
//                 child: Container(
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: imageProvider,
//                       fit: fit,
//                     ),
//                   ),
//                 ),
//               );
//             },
//         errorWidget: widgetErrorCallBack ??
//             (context, _, error) {
//               return CardItem(
//                 height: heightImage ?? layout.imgHeight(isSlider: isSlider),
//                 width: widthImage ?? layout.imgWidth(isSlider: isSlider),
//                 radiusModel: radiusImage,
//                 child: BuildImageLoadError(
//                   layout: layout,
//                   isSlider: isSlider,
//                   radiusModel: radiusImage,
//                   heightImage:
//                       heightImage ?? layout.imgHeight(isSlider: isSlider),
//                   widthImage: widthImage ?? layout.imgWidth(isSlider: isSlider),
//                 ),
//               );
//             },
//         imageUrl: urlImage,
//       ),
//     );
//   }
// }
