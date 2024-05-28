import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce_project_chienbm/core/src_core.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AppController(), permanent: true);
    return const Scaffold(
      body: Center(
        child: Text("Center"),
      ),
    );
  }
}
