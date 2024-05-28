
import 'package:html/parser.dart';
extension StringExt on String? {
  String formatAddress() {
    if (this == null) {
      return "";
    }
    return "$this, ";
  }

  String unescapeString() {
    // if (this == null) {
    //   return "";
    // }
    // var unescape = HtmlUnescape();
    // var text = unescape.convert(this!);
    // return text;
    return parse(this).body!.text;
  }
}

extension BooleanEtx on bool? {
  int convertBooleanToNumb() {
    return (this ?? false) ? 1 : 0;
  }
}

extension IntEtx on int? {
  bool convertNumbToBoolean() {
    return this == 1;
  }
}
