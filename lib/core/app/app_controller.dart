import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:ecommerce_project_chienbm/core/src_core.dart';
// import 'package:ecommerce_project_chienbm/feature/src_feature.dart';
import 'package:ecommerce_project_chienbm/main.dart';

late final Box APP_DATA;

late final GetStorage getStorage = GetStorage();

String path = '';

class AppController extends GetxController {
  final RxBool isLogin = false.obs;

  // @override
  // void onInit() {
  //   _initHive().then((value) async {
  //     // isDarkMode.value = APP_DATA.get(AppConst.keyDarkMode) ?? false;

  //     Get.put(BaseRequest(), permanent: true);
  //     Get.put(BaseGetxController(), permanent: true);
  //     if (APP_DATA.get(AppConst.keyEmail) != null) {
  //       await _login();
  //     }
  //     FlutterNativeSplash.remove();
  //     runApp(const MyApp());
  //   });

  //   super.onInit();
  // }

  // Future<void> _login() async {
  //   LoginRepository loginRepository =
  //       LoginRepository(Get.put(BaseGetxController(), permanent: true));
  //   SignInRequest signInRequest = SignInRequest(
  //     username: APP_DATA.get(AppConst.keyEmail) ?? "",
  //     password: APP_DATA.get(AppConst.keyUserpassword) ?? "",
  //   );
  //   try {
  //     await loginRepository.loginUser(signInRequest).then((value) async {
  //       await _loginSuccess(value);
  //     });
  //   }
  //   //  catch (e) {
  //   //   Get.offAllNamed(AppRoutes.pageBuilder);
  //   // }
  //   finally {
  //     // FlutterNativeSplash.remove();
  //   }
  // }

  // Future<void> _loginSuccess(
  //     BaseResponse<SignInResponseNotActive> response) async {
  //   if (!(response.data?.waitActive ?? false)) {
  //     isLogin.value = true;
  //     await CookiesSingleton().createCookiesForUser();
  //     // Get.offAllNamed(AppRoutes.pageBuilder);
  //   } else {
  //     // Get.offAllNamed(AppRoutes.loginPage);
  //   }
  // }

  // Future<void> _initHive() async {
  //   await _openBox();
  // }

  // Future<void> _openBox() async {
  //   final appDocumentDirectory =
  //       await path_provider.getApplicationDocumentsDirectory();
  //   Hive.init(appDocumentDirectory.path + AppStr.appName);
  //   APP_DATA =
  //       await Hive.openBox(AppStr.appName, path: appDocumentDirectory.path);
  // }
}
