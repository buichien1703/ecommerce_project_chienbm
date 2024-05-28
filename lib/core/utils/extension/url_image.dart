import 'package:ecommerce_project_chienbm/core/src_core.dart';

extension UrlImage on ImageBlockData {
  String getUrlImage() {
    switch (source) {
      case ImageSourceEnum.fromCDN:
        return "${APP_DATA.get(AppConst.keyUrlBaseImage)}$image";

      case ImageSourceEnum.fromTemplate:
        return "${ApiUrl.urlBase}$image";
      default:
        return "";
    }
  }
}

extension UrlImageStr on String {
  String formatUrl() {
    return ImageBlockData(image: this, source: ImageSourceEnum.fromCDN)
        .getUrlImage();
  }
}
