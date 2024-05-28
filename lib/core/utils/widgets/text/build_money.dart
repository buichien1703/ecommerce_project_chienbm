import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ecommerce_project_chienbm/core/src_core.dart';
import 'package:flutter/material.dart';

class BuildMoney extends StatelessWidget {
  const BuildMoney({super.key, this.price, this.specialPrice});

  final num? price;

  final num? specialPrice;

  bool showPrice(num? value) => value != 0 && value != null;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Align(
            alignment: Alignment.centerLeft,
            child: TextBuild(
              title: price.formatMoney(),
              maxLines: 1,
              style: Get.textTheme.bodyText2!.copyWith(
                  fontSize: AppDimens.sizeTextDefault.sp,
                  decoration: showPrice(specialPrice)
                      ? TextDecoration.lineThrough
                      : null,
                  fontWeight:
                      !showPrice(specialPrice) ? FontWeight.bold : null),
            ),
          ),
        ),
        if (showPrice(specialPrice))
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: TextBuild(
                title: specialPrice.formatMoney(),
                style: Get.textTheme.bodyText1!.copyWith(
                  // color: AppColors.appColor,
                  fontSize: AppDimens.sizeTextDefault.sp,
                ),
                maxLines: 1,
                isBoldText: showPrice(price),
              ),
            ),
          ),
      ],
    );
  }
}
