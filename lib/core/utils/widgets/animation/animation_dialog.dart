import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ecommerce_project_chienbm/core/src_core.dart';

enum AnimationDialogType {
  none,
  success,
  error,
  errorOccurred,
  warning,
  congratulation,
  sad,
  loading,
  favourite,
}

class AnimationDialog extends StatelessWidget {
  const AnimationDialog({
    super.key,
    this.animationDialogType = AnimationDialogType.none,
    this.height = 200,
    this.width,
    this.repeat = true,
  });

  final double? height;

  final double? width;

  final bool repeat;

  final AnimationDialogType animationDialogType;
  @override
  Widget build(BuildContext context) {
    late String assetAnimation;
    switch (animationDialogType) {
      case AnimationDialogType.congratulation:
        assetAnimation = AnimationAsset.thankyouAnimation;
        break;
      case AnimationDialogType.success:
        assetAnimation = AnimationAsset.verifyAnimation;
        break;
      case AnimationDialogType.error:
        assetAnimation = AnimationAsset.errorAnimation;
        break;
      case AnimationDialogType.sad:
        assetAnimation = AnimationAsset.sadAnimation;
        break;
      case AnimationDialogType.loading:
        assetAnimation = AnimationAsset.loadingAnimation;
        break;
      case AnimationDialogType.favourite:
        assetAnimation = AnimationAsset.heartAnimation;
        break;
      case AnimationDialogType.errorOccurred:
        assetAnimation = AnimationAsset.errorOccurred;
        break;
      default:
        assetAnimation = "";
    }
    return Lottie.asset(
      assetAnimation,
      height: height,
      width: width,
      repeat: repeat,
      errorBuilder: (context, error, stackTrace) {
        return const SizedBox.shrink();
      },
      frameRate: FrameRate(60),
    );
  }
}
