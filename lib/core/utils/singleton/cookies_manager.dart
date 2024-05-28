
// import 'dart:io';

// import 'package:get/get.dart';
// import 'package:ecommerce_project_chienbm/core/src_core.dart';
// import 'package:ecommerce_project_chienbm/main.dart';

// class CookiesSingleton {
//   static CookiesSingleton? _instance;

//   factory CookiesSingleton() => _instance ??= CookiesSingleton._();

//   CookiesSingleton._();

//   final String defaultPathCookies = "cookies";

//   Future<void> createCookiesForUser({String? userName}) async {
//     try {
//       String pathAccount =
//           "$defaultPathCookies/${(userName ?? APP_DATA.get(AppConst.keyEmail)).toString().toLowerCase()}";
//       await Directory('$applicationPath/$pathAccount').create().then((cookies) {
//         path = cookies.path;
//       });
//       Get.find<BaseRequest>().updateCurrentDio();
//     } catch (e) {
//       if (e is PathNotFoundException) {
//         await Directory('$applicationPath/$defaultPathCookies').create();
//         await createCookiesForUser(userName: userName);
//       }
//     }
//   }
// }
