// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:ecommerce_project_chienbm/core/src_core.dart';
// // import 'package:ecommerce_project_chienbm/feature/src_feature.dart';

// abstract class BaseGetWidget<T extends BaseGetxController> extends GetView<T>
//     with GetViewLoading {
//   const BaseGetWidget({Key? key}) : super(key: key);

//   Widget buildWidgets(BuildContext context);

//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       // tắt tính năng vuốt trái để back lại màn hình trước đó trên iphone
//       onWillPop: () async {
//         KeyBoard.hide();
//         await 300.milliseconds.delay();
//         return false;
//       },
//       child: buildWidgets(context),
//     );
//   }

//   // Widget buildPageLoginCheck(WidgetCallback child,
//   //     {Future Function()? onSuccessLogin}) {
//   //   return Obx(
//   //     () => Get.find<AppController>().isLogin.isTrue
//   //         ? child()
//   //         : LoginPage(onSuccessLogin: onSuccessLogin),
//   //   );
//   // }

//   Widget baseBlockLoading(
//     WidgetCallback child,
//   ) {
//     return Obx(
//       () => controller.isShowLoading.value
//           ? LoadingWidget.loadingThreeDots
//           : child(),
//     );
//   }

//   Widget baseShowLoading(
//     WidgetCallback child, {
//     bool isLoadingPage = true,
//   }) {
//     return Obx(
//       () => controller.isShowLoading.value
//           ? isLoadingPage
//               ? PageScaffold(
//                   child: loadingWidget(
//                     isShowLoading: controller.isShowLoading,
//                     child: child,
//                     isShowTitleLoading: true,
//                   ),
//                 )
//               : loadingWidget(
//                   isShowLoading: controller.isShowLoading,
//                   child: child,
//                   isShowTitleLoading: true)
//           : child(),
//     );
//   }

//   Widget baseLoadingCircle(
//     WidgetCallback child, {
//     bool isPage = false,
//   }) {
//     // ignore: no_leading_underscores_for_local_identifiers
//     Widget _buildLoading() {
//       return const Center(
//         child: AnimationDialog(
//           animationDialogType: AnimationDialogType.loading,
//           height: 100,
//         ),
//       );
//     }

//     return Obx(
//       () => controller.isShowLoading.value
//           ? isPage
//               ? Scaffold(
//                   body: _buildLoading(),
//                 )
//               : _buildLoading()
//           : child(),
//     );
//   }

//   // Widget baseShimmerLoading(WidgetCallback child) {
//   //   return Obx(
//   //     () => controller.isShowLoading.value
//   //         ? const ExampleUiLoadingAnimation()
//   //         : child(),
//   //   );
//   // }
// }

// class PageScaffold extends StatelessWidget {
//   const PageScaffold({
//     super.key,
//     required this.child,
//     this.showBackButton = false,
//     this.action = const [],
//     this.title,
//     this.titleTextStyle,
//     this.floatingActionButton,
//     this.showAppBar = true,
//     this.showFloatingButton = false,
//     this.overrideBackFunction,
//   });

//   final bool showBackButton;

//   final Widget child;

//   final List<Widget> action;

//   final Widget? title;

//   final TextStyle? titleTextStyle;

//   final Widget? floatingActionButton;

//   final bool showAppBar;

//   final bool showFloatingButton;

//   final Function()? overrideBackFunction;

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         resizeToAvoidBottomInset: true,
//         appBar: showAppBar
//             ? AppBar(
//                 automaticallyImplyLeading: false,
//                 leading: showBackButton
//                     ? SimpleButton(
//                         onPressed: overrideBackFunction ?? () => Get.back(),
//                         child: const Icon(Icons.arrow_back),
//                       )
//                     : null,
//                 title: title,
//                 centerTitle: true,
//                 actions: action,
//                 titleTextStyle: titleTextStyle,
//                 // toolbarHeight: height ?? kToolbarHeight,
//               )
//             : null,
//         body: Stack(
//           children: [
//             child,
//             if (showFloatingButton)
//               floatingActionButton ??
//                   FloatingButtonDraggable(
//                     isStack: true,
//                     // backgroundColor: AppColors.appColor,
//                     // onPressed: () => Get.bottomSheet(const BottomSheetSuport()),
//                     onPressed: () {
                      
//                     },
//                     iconData: Iconsax.call_outgoing,
//                   )
//           ],
//         ),
//       ),
//     );
//   }
// }
